; ModuleID = '/llk/IR_all_yes/fs/ksmbd/oplock.c_pt.bc'
source_filename = "../fs/ksmbd/oplock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ksmbd_file = type { ptr, ptr, i64, i64, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i64, i64, i8, i8, [16 x i8], [16 x i8], [16 x i8], %struct.stream, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_readdir_data, [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.stream = type { ptr, i32 }
%struct.ksmbd_readdir_data = type { %struct.dir_context, %union.anon.173, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%union.anon.173 = type { ptr }
%struct.oplock_info = type { ptr, ptr, ptr, ptr, i32, i32, i32, i64, %struct.atomic_t, %struct.atomic_t, i16, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.lease = type { [16 x i8], i32, i32, i32, i64, [16 x i8], i32, i16, ptr }
%struct.file = type { %union.anon.172, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.172 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.lease_table = type { [16 x i8], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.ksmbd_inode = type { %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.170 }
%union.anon.170 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.lease_ctx_info = type { [16 x i8], i32, i32, i64, [16 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.lease_break_info = type { i32, i32, i16, [16 x i8] }
%struct.oplock_break_info = type { i32, i32, i32 }
%struct.ksmbd_tree_connect = type { i32, i32, ptr, ptr, %struct.list_head, i32, i8 }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
%struct.create_lease_v2 = type { %struct.create_context, [8 x i8], %struct.lease_context_v2, [4 x i8] }
%struct.create_context = type { i32, i16, i16, i16, i16, i32, [0 x i8] }
%struct.lease_context_v2 = type <{ [16 x i8], i32, i32, i64, [16 x i8], i16, i16 }>
%struct.create_lease = type { %struct.create_context, [8 x i8], %struct.lease_context }
%struct.lease_context = type { [16 x i8], i32, i32, i64 }
%struct.smb2_create_req = type { %struct.smb2_hdr, i16, i8, i8, i32, i64, i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, [0 x i8] }
%struct.smb2_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, i64, %union.anon.193, i64, [16 x i8] }
%union.anon.193 = type { i64 }
%struct.create_durable_rsp = type { %struct.create_context, [8 x i8], %union.anon.195 }
%union.anon.195 = type { i64 }
%struct.create_durable_v2_rsp = type { %struct.create_context, [8 x i8], i32, i32 }
%struct.create_mxac_rsp = type { %struct.create_context, [8 x i8], i32, i32 }
%struct.create_disk_id_rsp = type { %struct.create_context, [8 x i8], i64, i64, [16 x i8] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.create_posix_rsp = type { %struct.create_context, [16 x i8], i32, i32, i32, [40 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.160, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.161, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.162, ptr, %struct.address_space, %struct.list_head, %union.anon.165, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.160 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.161 = type { %struct.callback_head }
%union.anon.162 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.165 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.smb_version_values = type { ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }

@opinfo_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ksmbd/oplock.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@opinfo_write_to_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ksmbd: bad oplock(0x%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"opinfo_write_to_read\00", [43 x i8] zeroinitializer }, align 32
@opinfo_write_to_read._entry_ptr = internal global ptr @opinfo_write_to_read._entry, section ".printk_index", align 4
@opinfo_write_to_read._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ksmbd: lease state(0x%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@opinfo_write_to_read._entry_ptr.6 = internal global ptr @opinfo_write_to_read._entry.4, section ".printk_index", align 4
@opinfo_write_to_none._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.7, ptr @.str, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"opinfo_write_to_none\00", [43 x i8] zeroinitializer }, align 32
@opinfo_write_to_none._entry_ptr = internal global ptr @opinfo_write_to_none._entry, section ".printk_index", align 4
@opinfo_write_to_none._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@opinfo_write_to_none._entry_ptr.9 = internal global ptr @opinfo_write_to_none._entry.8, section ".printk_index", align 4
@opinfo_read_to_none._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.10, ptr @.str, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"opinfo_read_to_none\00", [44 x i8] zeroinitializer }, align 32
@opinfo_read_to_none._entry_ptr = internal global ptr @opinfo_read_to_none._entry, section ".printk_index", align 4
@opinfo_read_to_none._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@opinfo_read_to_none._entry_ptr.12 = internal global ptr @opinfo_read_to_none._entry.11, section ".printk_index", align 4
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@lease_read_to_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ksmbd: bad lease state(0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lease_read_to_write\00", [44 x i8] zeroinitializer }, align 32
@lease_read_to_write._entry_ptr = internal global ptr @lease_read_to_write._entry, section ".printk_index", align 4
@lease_list_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@lease_table_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lease_table_list, ptr @lease_table_list }, [24 x i8] zeroinitializer }, align 32
@destroy_lease_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@find_same_lease_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@find_same_lease_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016ksmbd: found same lease key is already used in other files\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"find_same_lease_key\00", [44 x i8] zeroinitializer }, align 32
@find_same_lease_key._entry_ptr = internal global ptr @find_same_lease_key._entry, section ".printk_index", align 4
@smb_break_all_levII_oplock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smb_break_all_levII_oplock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ksmbd: unexpected lease state(0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smb_break_all_levII_oplock\00", [37 x i8] zeroinitializer }, align 32
@smb_break_all_levII_oplock._entry_ptr = internal global ptr @smb_break_all_levII_oplock._entry, section ".printk_index", align 4
@smb_break_all_levII_oplock._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: unexpected oplock(0x%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@smb_break_all_levII_oplock._entry_ptr.22 = internal global ptr @smb_break_all_levII_oplock._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RqLs\00", [27 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@lookup_lease_in_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lookup_lease_in_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016ksmbd: found opinfo\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lookup_lease_in_table\00", [42 x i8] zeroinitializer }, align 32
@lookup_lease_in_table._entry_ptr = internal global ptr @lookup_lease_in_table._entry, section ".printk_index", align 4
@smb2_check_durable_oplock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: open does not include lease\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smb2_check_durable_oplock\00", [38 x i8] zeroinitializer }, align 32
@smb2_check_durable_oplock._entry_ptr = internal global ptr @smb2_check_durable_oplock._entry, section ".printk_index", align 4
@smb2_check_durable_oplock._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ksmbd: invalid lease key\0A\00", [36 x i8] zeroinitializer }, align 32
@smb2_check_durable_oplock._entry_ptr.30 = internal global ptr @smb2_check_durable_oplock._entry.28, section ".printk_index", align 4
@smb2_check_durable_oplock._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ksmbd: invalid name reconnect %s\0A\00", [60 x i8] zeroinitializer }, align 32
@smb2_check_durable_oplock._entry_ptr.33 = internal global ptr @smb2_check_durable_oplock._entry.31, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lease_list_lock\00", [16 x i8] zeroinitializer }, align 32
@alloc_opinfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&opinfo->oplock_q\00", [46 x i8] zeroinitializer }, align 32
@alloc_opinfo.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&opinfo->oplock_brk\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lease_none_upgrade._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.41, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lease_none_upgrade\00", [45 x i8] zeroinitializer }, align 32
@lease_none_upgrade._entry_ptr = internal global ptr @lease_none_upgrade._entry, section ".printk_index", align 4
@oplock_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ksmbd: request to send oplock(level : 0x%x) break notification\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oplock_break\00", [19 x i8] zeroinitializer }, align 32
@oplock_break._entry_ptr = internal global ptr @oplock_break._entry, section ".printk_index", align 4
@oplock_break._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ksmbd: oplock granted = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@oplock_break._entry_ptr.46 = internal global ptr @oplock_break._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@smb2_lease_break_noti.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@__smb2_lease_break_noti._entry = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 733, ptr null, ptr null }, align 1
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: smb2_allocate_rsp_buf failed! \00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__smb2_lease_break_noti\00", [40 x i8] zeroinitializer }, align 32
@__smb2_lease_break_noti._entry_ptr = internal global ptr @__smb2_lease_break_noti._entry, section ".printk_index", align 4
@smb2_oplock_break_noti.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__smb2_oplock_break_noti._entry = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 625, ptr null, ptr null }, align 1
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ksmbd: smb2_allocate_rsp_buf failed! \00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__smb2_oplock_break_noti\00", [39 x i8] zeroinitializer }, align 32
@__smb2_oplock_break_noti._entry_ptr = internal global ptr @__smb2_oplock_break_noti._entry, section ".printk_index", align 4
@__smb2_oplock_break_noti._entry.53 = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str, i32 666, ptr null, ptr null }, align 1
@.str.54 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016ksmbd: sending oplock break v_id %llu p_id = %llu lock level = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__smb2_oplock_break_noti._entry_ptr.55 = internal global ptr @__smb2_oplock_break_noti._entry.53, section ".printk_index", align 4
@add_lease_global_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lb->lb_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 67108864, i64 83886080]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 67108864, i64 117440512]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 141, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 233, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 235, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 272, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 274, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 294, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 296, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 316, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"lease_list_lock\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"lease_table_list\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 19, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 945, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 995, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1260, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1265, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1403, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1683, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1706, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1712, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1717, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 695, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 723, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 20, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 49, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 50, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 341, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 861, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 918, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 73, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 826, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 733, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 707, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 625, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 664, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [21 x i8] c"../fs/ksmbd/oplock.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1047, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__smb2_lease_break_noti._entry, ptr @__smb2_lease_break_noti._entry_ptr, ptr @__smb2_oplock_break_noti._entry, ptr @__smb2_oplock_break_noti._entry.53, ptr @__smb2_oplock_break_noti._entry_ptr, ptr @__smb2_oplock_break_noti._entry_ptr.55, ptr @find_same_lease_key._entry, ptr @find_same_lease_key._entry_ptr, ptr @lease_none_upgrade._entry, ptr @lease_none_upgrade._entry_ptr, ptr @lease_read_to_write._entry, ptr @lease_read_to_write._entry_ptr, ptr @lookup_lease_in_table._entry, ptr @lookup_lease_in_table._entry_ptr, ptr @opinfo_read_to_none._entry, ptr @opinfo_read_to_none._entry.11, ptr @opinfo_read_to_none._entry_ptr, ptr @opinfo_read_to_none._entry_ptr.12, ptr @opinfo_write_to_none._entry, ptr @opinfo_write_to_none._entry.8, ptr @opinfo_write_to_none._entry_ptr, ptr @opinfo_write_to_none._entry_ptr.9, ptr @opinfo_write_to_read._entry, ptr @opinfo_write_to_read._entry.4, ptr @opinfo_write_to_read._entry_ptr, ptr @opinfo_write_to_read._entry_ptr.6, ptr @oplock_break._entry, ptr @oplock_break._entry.44, ptr @oplock_break._entry_ptr, ptr @oplock_break._entry_ptr.46, ptr @smb2_check_durable_oplock._entry, ptr @smb2_check_durable_oplock._entry.28, ptr @smb2_check_durable_oplock._entry.31, ptr @smb2_check_durable_oplock._entry_ptr, ptr @smb2_check_durable_oplock._entry_ptr.30, ptr @smb2_check_durable_oplock._entry_ptr.33, ptr @smb_break_all_levII_oplock._entry, ptr @smb_break_all_levII_oplock._entry.20, ptr @smb_break_all_levII_oplock._entry_ptr, ptr @smb_break_all_levII_oplock._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @lease_list_lock, ptr @lease_table_list, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @alloc_opinfo.__key, ptr @.str.38, ptr @alloc_opinfo.__key.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @smb2_lease_break_noti.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @smb2_oplock_break_noti.__key, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @add_lease_global_list.__key, ptr @.str.56], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_write_to_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_write_to_read._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_write_to_none._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_write_to_none._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_read_to_none._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opinfo_read_to_none._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lease_read_to_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lease_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lease_table_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_same_lease_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_break_all_levII_oplock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_break_all_levII_oplock._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_lease_in_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_durable_oplock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_durable_oplock._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_durable_oplock._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_opinfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_opinfo.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lease_none_upgrade._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oplock_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oplock_break._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_lease_break_noti.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_oplock_break_noti.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_lease_global_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @opinfo_get(ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %f_opinfo = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 7
  %4 = ptrtoint ptr %f_opinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %f_opinfo, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @opinfo_get.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @opinfo_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @.str.1) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %land.lhs.true10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true10:                                  ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.oplock_info, ptr %5, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true10.if.end13_crit_edge, label %do.end11.i.i.i.i

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  br label %if.end13

if.end13:                                         ; preds = %do.end11.i.i.i.i, %land.lhs.true10.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  %opinfo.0 = phi ptr [ null, %do.end7.if.end13_crit_edge ], [ null, %land.lhs.true10.if.end13_crit_edge ], [ %5, %do.end11.i.i.i.i ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %7 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i24 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %opinfo.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opinfo_put(ptr noundef %opinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @opinfo_free_rcu(ptr noundef %callback_head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %is_lease.i = getelementptr i8, ptr %callback_head, i32 -134
  %0 = ptrtoint ptr %is_lease.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lease.i, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.free_opinfo.exit_crit_edge, label %if.then.i

entry.free_opinfo.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_opinfo.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %o_lease.i.i = getelementptr i8, ptr %callback_head, i32 -132
  %2 = ptrtoint ptr %o_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %o_lease.i.i, align 4
  tail call void @kfree(ptr noundef %3) #16
  br label %free_opinfo.exit

free_opinfo.exit:                                 ; preds = %if.then.i, %entry.free_opinfo.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %callback_head, i32 -184
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @opinfo_write_to_read(ptr nocapture noundef %opinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %0 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %o_lease, align 4
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %switch = icmp eq i32 %4, 8
  br i1 %switch, label %if.end10, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #19
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %5 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #19
  br label %cleanup

if.end10:                                         ; preds = %entry
  %9 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %level, align 8
  %is_lease12 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %10 = ptrtoint ptr %is_lease12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lease12, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %new_state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_state, align 4
  %state15 = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %state15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %do.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @opinfo_read_handle_to_read(ptr nocapture noundef %opinfo) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %0 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %o_lease, align 4
  %new_state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_state, align 4
  %state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 8
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %5 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %level, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @opinfo_write_to_none(ptr nocapture noundef %opinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %0 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %o_lease, align 4
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %switch = icmp eq i32 %4, 8
  br i1 %switch, label %if.end10, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #19
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %5 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #19
  br label %cleanup

if.end10:                                         ; preds = %entry
  %9 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %level, align 8
  %is_lease12 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %10 = ptrtoint ptr %is_lease12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lease12, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %new_state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_state, align 4
  %state15 = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %state15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %do.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @opinfo_read_to_none(ptr nocapture noundef %opinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %0 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %o_lease, align 4
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #19
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %4 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %7) #19
  br label %cleanup

if.end8:                                          ; preds = %entry
  %8 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %level, align 8
  %is_lease10 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %9 = ptrtoint ptr %is_lease10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_lease10, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %new_state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_state, align 4
  %state13 = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %state13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %do.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lease_read_to_write(ptr nocapture noundef %opinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %0 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %o_lease, align 4
  %state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and1 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3) #19
  br label %cleanup

if.end8:                                          ; preds = %entry
  %new_state = getelementptr inbounds %struct.lease, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %new_state, align 4
  %or = or i32 %3, 67108864
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %state, align 8
  %and11 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %level14 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %level14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %level14, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %level14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %level14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @close_id_del_oplock(ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @opinfo_get(ptr noundef %fp)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %o_fp.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %o_fp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %o_fp.i, align 4
  %f_ci.i = getelementptr inbounds %struct.ksmbd_file, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %f_ci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_ci.i, align 4
  %is_lease.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 11
  %11 = ptrtoint ptr %is_lease.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_lease.i, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  tail call void @_raw_write_lock(ptr noundef nonnull @lease_list_lock) #16
  %o_lease.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 13
  %13 = ptrtoint ptr %o_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %o_lease.i.i, align 4
  %l_lb.i.i = getelementptr inbounds %struct.lease, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %l_lb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %l_lb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.lease_del_list.exit.i_crit_edge, label %if.end.i.i

if.then.i.lease_del_list.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lease_del_list.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %lb_lock.i.i = getelementptr inbounds %struct.lease_table, ptr %16, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lb_lock.i.i) #16
  %lease_entry.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 16
  %17 = ptrtoint ptr %lease_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %lease_entry.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %lease_entry.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lease_entry.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.i.list_del_init.exit.i.i_crit_edge

if.end4.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %lease_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lease_entry.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end4.i.i.list_del_init.exit.i.i_crit_edge
  %25 = ptrtoint ptr %lease_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %lease_entry.i.i, ptr %lease_entry.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 16, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lease_entry.i.i, ptr %prev.i3.i.i.i, align 4
  %27 = ptrtoint ptr %o_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %o_lease.i.i, align 4
  %l_lb7.i.i = getelementptr inbounds %struct.lease, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %l_lb7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %l_lb7.i.i, align 8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %list_del_init.exit.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lb_lock.i.i) #16
  br label %lease_del_list.exit.i

lease_del_list.exit.i:                            ; preds = %cleanup.sink.split.i.i, %if.then.i.lease_del_list.exit.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @lease_list_lock) #16
  br label %if.end.i

if.end.i:                                         ; preds = %lease_del_list.exit.i, %if.end4.if.end.i_crit_edge
  tail call void @_raw_write_lock(ptr noundef %10) #16
  %op_entry.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %op_entry.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.opinfo_del.exit_crit_edge

if.end.i.opinfo_del.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %opinfo_del.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %op_entry.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %opinfo_del.exit

opinfo_del.exit:                                  ; preds = %if.end.i.i.i, %if.end.i.opinfo_del.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %10) #16
  %f_opinfo = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 7
  %37 = ptrtoint ptr %f_opinfo to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr null, ptr %f_opinfo, align 4
  %op_state = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 5
  %38 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp40 = icmp eq i32 %39, 1
  br i1 %cmp40, label %if.then42, label %opinfo_del.exit.if.end47_crit_edge

opinfo_del.exit.if.end47_crit_edge:               ; preds = %opinfo_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then42:                                        ; preds = %opinfo_del.exit
  %40 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %op_state, align 4
  %oplock_q = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %oplock_q, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  %41 = ptrtoint ptr %is_lease.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_lease.i, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool44.not = icmp eq i8 %42, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then45

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  %breaking_cnt = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %breaking_cnt, i32 noundef 4) #16
  %43 = ptrtoint ptr %breaking_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %breaking_cnt, align 4
  %oplock_brk = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %oplock_brk, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42.if.end47_crit_edge, %opinfo_del.exit.if.end47_crit_edge
  %stream.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %44 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %45, null
  %f_ci1.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %46 = ptrtoint ptr %f_ci1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_ci1.i, align 4
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i65

if.then.i65:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %sop_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %47, i32 0, i32 3
  %call.i.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sop_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %sop_count.i, i32 1, i32 3, i32 1) #16
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sop_count.i, ptr %sop_count.i, i32 1, ptr elementtype(i32) %sop_count.i) #16, !srcloc !149
  br label %opinfo_count_dec.exit

if.else.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %op_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %47, i32 0, i32 2
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %op_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %op_count.i, i32 1, i32 3, i32 1) #16
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %op_count.i, ptr %op_count.i, i32 1, ptr elementtype(i32) %op_count.i) #16, !srcloc !149
  br label %opinfo_count_dec.exit

opinfo_count_dec.exit:                            ; preds = %if.else.i, %if.then.i65
  %refcount = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 9
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !149
  %call.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i67, label %opinfo_count_dec.exit.cleanup_crit_edge

opinfo_count_dec.exit.cleanup_crit_edge:          ; preds = %opinfo_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i67:                                       ; preds = %opinfo_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i67, %opinfo_count_dec.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_lease_table(ptr noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @lease_list_lock) #16
  %0 = load volatile ptr, ptr @lease_table_list, align 4
  %cmp.i.not = icmp eq ptr %0, @lease_table_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool5.not = icmp eq ptr %conn, null
  %ClientGUID = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %for.cond.preheader
  %.pn.in86 = phi ptr [ %0, %for.cond.preheader ], [ %.pn89, %for.inc42.for.body_crit_edge ]
  %lb.088 = getelementptr i8, ptr %.pn.in86, i32 -24
  %1 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn89 = load ptr, ptr %.pn.in86, align 4
  br i1 %tobool5.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lb.088, ptr noundef dereferenceable(16) %ClientGUID, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.inc42_crit_edge

land.lhs.true.for.inc42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc42

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %lease_list = getelementptr i8, ptr %.pn.in86, i32 -8
  br label %again

again:                                            ; preds = %again.backedge, %if.end10
  %2 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %again.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

again.rcu_read_lock.exit_crit_edge:               ; preds = %again
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %again
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %again.rcu_read_lock.exit_crit_edge
  %call11 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true13:                                  ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b60 = load i1, ptr @destroy_lease_table.__warned, align 1
  br i1 %.b60, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @destroy_lease_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 946, ptr noundef nonnull @.str.15) #16
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true13.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %6 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lease_list, align 4
  %cmp30.not = icmp eq ptr %7, %lease_list
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %cmp30.not, label %for.end, label %for.body31

for.body31:                                       ; preds = %do.end
  br i1 %call.i72, label %for.body31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

for.body31.rcu_read_unlock.exit_crit_edge:        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %for.body31
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %for.body31.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %8 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i69 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %o_lease.i = getelementptr i8, ptr %7, i32 -20
  %12 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %o_lease.i, align 4
  %l_lb.i = getelementptr inbounds %struct.lease, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %l_lb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l_lb.i, align 8
  %tobool.not.i71 = icmp eq ptr %15, null
  br i1 %tobool.not.i71, label %rcu_read_unlock.exit.again.backedge_crit_edge, label %if.end.i

rcu_read_unlock.exit.again.backedge_crit_edge:    ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %again.backedge

again.backedge:                                   ; preds = %cleanup.sink.split.i, %rcu_read_unlock.exit.again.backedge_crit_edge
  br label %again

if.end.i:                                         ; preds = %rcu_read_unlock.exit
  %lb_lock.i = getelementptr inbounds %struct.lease_table, ptr %15, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lb_lock.i) #16
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %7, align 4
  %cmp.i.not.i = icmp eq ptr %17, %7
  br i1 %cmp.i.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end4.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_del_init.exit.i_crit_edge

if.end4.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr i8, ptr %7, i32 4
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i.list_del_init.exit.i_crit_edge
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i.i = getelementptr i8, ptr %7, i32 4
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %7, ptr %prev.i3.i.i, align 4
  %26 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %o_lease.i, align 4
  %l_lb7.i = getelementptr inbounds %struct.lease, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %l_lb7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %l_lb7.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %list_del_init.exit.i, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lb_lock.i) #16
  br label %again.backedge

for.end:                                          ; preds = %do.end
  br i1 %call.i72, label %for.end.rcu_read_unlock.exit82_crit_edge, label %land.lhs.true.i75

for.end.rcu_read_unlock.exit82_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit82

land.lhs.true.i75:                                ; preds = %for.end
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit82_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit82_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit82

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit82_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit82_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit82

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit82

rcu_read_unlock.exit82:                           ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit82_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit82_crit_edge, %for.end.rcu_read_unlock.exit82_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %29 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i79 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i81 = add i32 %32, -1
  store volatile i32 %sub.i.i.i81, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in86) #16
  br i1 %call.i.i, label %if.end.i.i, label %rcu_read_unlock.exit82.list_del.exit_crit_edge

rcu_read_unlock.exit82.list_del.exit_crit_edge:   ; preds = %rcu_read_unlock.exit82
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit82
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn.in86, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %rcu_read_unlock.exit82.list_del.exit_crit_edge
  %39 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in86, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %lb.088) #16
  br label %for.inc42

for.inc42:                                        ; preds = %list_del.exit, %land.lhs.true.for.inc42_crit_edge
  %cmp.not = icmp eq ptr %.pn89, @lease_table_list
  br i1 %cmp.not, label %for.inc42.cleanup_crit_edge, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc42.cleanup_crit_edge:                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc42.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @lease_list_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @find_same_lease_key(ptr nocapture noundef readonly %sess, ptr noundef readnone %ci, ptr noundef readonly %lctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @lease_list_lock) #16
  %0 = load volatile ptr, ptr @lease_table_list, align 4
  %cmp.i.not = icmp eq ptr %0, @lease_table_list
  br i1 %cmp.i.not, label %if.end.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn, align 4
  %ClientGUID = getelementptr inbounds %struct.ksmbd_conn, ptr %2, i32 0, i32 24
  br label %for.body

for.condthread-pre-split:                         ; preds = %for.body
  %3 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.pr = load ptr, ptr %.pn135, align 4
  %cmp.not = icmp eq ptr %.pn.pr, @lease_table_list
  br i1 %cmp.not, label %for.condthread-pre-split.cleanup.sink.split_crit_edge, label %for.condthread-pre-split.for.body_crit_edge

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.condthread-pre-split.cleanup.sink.split_crit_edge: ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %for.body.lr.ph
  %.pn135 = phi ptr [ %0, %for.body.lr.ph ], [ %.pn.pr, %for.condthread-pre-split.for.body_crit_edge ]
  %lb.0 = getelementptr i8, ptr %.pn135, i32 -24
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lb.0, ptr noundef dereferenceable(16) %ClientGUID, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %found, label %for.condthread-pre-split

found:                                            ; preds = %for.body
  %4 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %found.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

found.rcu_read_lock.exit_crit_edge:               ; preds = %found
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %found
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %found.rcu_read_lock.exit_crit_edge
  %call13 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b86 = load i1, ptr @find_same_lease_key.__warned, align 1
  br i1 %.b86, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_same_lease_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 985, ptr noundef nonnull @.str.15) #16
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %lease_list = getelementptr i8, ptr %.pn135, i32 -8
  %8 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn85136 = load volatile ptr, ptr %lease_list, align 4
  %cmp31.not138 = icmp eq ptr %.pn85136, %lease_list
  br i1 %cmp31.not138, label %do.end.for.end68_crit_edge, label %do.end.for.body32_crit_edge

do.end.for.body32_crit_edge:                      ; preds = %do.end
  br label %for.body32

do.end.for.end68_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end68

for.body32:                                       ; preds = %for.inc58.for.body32_crit_edge, %do.end.for.body32_crit_edge
  %.pn85139 = phi ptr [ %.pn85, %for.inc58.for.body32_crit_edge ], [ %.pn85136, %do.end.for.body32_crit_edge ]
  %opinfo.0140 = getelementptr i8, ptr %.pn85139, i32 -72
  %refcount = getelementptr i8, ptr %.pn85139, i32 -28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %for.body32.for.inc58_crit_edge, label %if.end35

for.body32.for.inc58_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc58

if.end35:                                         ; preds = %for.body32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  %call.i98 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i98, label %if.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i101

if.end35.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i101:                               ; preds = %if.end35
  %call1.i99 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99)
  %tobool.not.i100 = icmp eq i32 %call1.i99, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i101.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i103

land.lhs.true.i101.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i103:                              ; preds = %land.lhs.true.i101
  %.b4.i102 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102, label %land.lhs.true2.i103.rcu_read_unlock.exit_crit_edge, label %if.then.i104

land.lhs.true2.i103.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i104:                                     ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i104, %land.lhs.true2.i103.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i101.rcu_read_unlock.exit_crit_edge, %if.end35.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %10 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i105 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i105 to ptr
  %preempt_count.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i106, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i106, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %o_fp = getelementptr i8, ptr %.pn85139, i32 -60
  %14 = ptrtoint ptr %o_fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %o_fp, align 4
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_ci, align 4
  %cmp36 = icmp eq ptr %17, %ci
  br i1 %cmp36, label %rcu_read_unlock.exit.op_next_crit_edge, label %if.end38

rcu_read_unlock.exit.op_next_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

if.end38:                                         ; preds = %rcu_read_unlock.exit
  %18 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn, align 4
  %ClientGUID40 = getelementptr inbounds %struct.ksmbd_conn, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %opinfo.0140 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %opinfo.0140, align 8
  %ClientGUID.i = getelementptr inbounds %struct.ksmbd_conn, ptr %21, i32 0, i32 24
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ClientGUID40, ptr noundef dereferenceable(16) %ClientGUID.i, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i107 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i108, label %if.end38.op_next_crit_edge

if.end38.op_next_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

land.lhs.true.i108:                               ; preds = %if.end38
  %o_lease.i = getelementptr i8, ptr %.pn85139, i32 -20
  %22 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %o_lease.i, align 4
  %bcmp6.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %lctx, ptr noundef dereferenceable(16) %23, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp6.i)
  %tobool3.not.i = icmp eq i32 %bcmp6.i, 0
  br i1 %tobool3.not.i, label %if.then45, label %land.lhs.true.i108.op_next_crit_edge

land.lhs.true.i108.op_next_crit_edge:             ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

if.then45:                                        ; preds = %land.lhs.true.i108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %24 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.then45.do.end56_crit_edge, label %do.end51

if.then45.do.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

do.end51:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %do.end56

do.end56:                                         ; preds = %do.end51, %if.then45.do.end56_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i109 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i109, label %if.end.i110, label %do.end56.cleanup.sink.split_crit_edge

do.end56.cleanup.sink.split_crit_edge:            ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end.i110:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr i8, ptr %.pn85139, i32 112
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %cleanup.sink.split

op_next:                                          ; preds = %land.lhs.true.i108.op_next_crit_edge, %if.end38.op_next_crit_edge, %rcu_read_unlock.exit.op_next_crit_edge
  %call.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i113 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i113)
  %cmp.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i113, 0
  br i1 %cmp.i.i.i114, label %if.end.i116, label %op_next.opinfo_put.exit117_crit_edge

op_next.opinfo_put.exit117_crit_edge:             ; preds = %op_next
  call void @__sanitizer_cov_trace_pc() #18
  br label %opinfo_put.exit117

if.end.i116:                                      ; preds = %op_next
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i115 = getelementptr i8, ptr %.pn85139, i32 112
  tail call void @call_rcu(ptr noundef %callback_head.i115, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %opinfo_put.exit117

opinfo_put.exit117:                               ; preds = %if.end.i116, %op_next.opinfo_put.exit117_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i87 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %add.i.i.i89 = add i32 %30, 1
  store volatile i32 %add.i.i.i89, ptr %preempt_count.i.i.i.i88, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i90, label %opinfo_put.exit117.for.inc58_crit_edge, label %land.lhs.true.i93

opinfo_put.exit117.for.inc58_crit_edge:           ; preds = %opinfo_put.exit117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc58

land.lhs.true.i93:                                ; preds = %opinfo_put.exit117
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.for.inc58_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.for.inc58_crit_edge:            ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc58

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.for.inc58_crit_edge, label %if.then.i96

land.lhs.true2.i95.for.inc58_crit_edge:           ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc58

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %for.inc58

for.inc58:                                        ; preds = %if.then.i96, %land.lhs.true2.i95.for.inc58_crit_edge, %land.lhs.true.i93.for.inc58_crit_edge, %opinfo_put.exit117.for.inc58_crit_edge, %for.body32.for.inc58_crit_edge
  %31 = ptrtoint ptr %.pn85139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn85 = load volatile ptr, ptr %.pn85139, align 4
  %cmp31.not = icmp eq ptr %.pn85, %lease_list
  br i1 %cmp31.not, label %for.inc58.for.end68_crit_edge, label %for.inc58.for.body32_crit_edge

for.inc58.for.body32_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body32

for.inc58.for.end68_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end68

for.end68:                                        ; preds = %for.inc58.for.end68_crit_edge, %do.end.for.end68_crit_edge
  %call.i118 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i118, label %for.end68.rcu_read_unlock.exit128_crit_edge, label %land.lhs.true.i121

for.end68.rcu_read_unlock.exit128_crit_edge:      ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit128

land.lhs.true.i121:                               ; preds = %for.end68
  %call1.i119 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit128

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit128

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit128

rcu_read_unlock.exit128:                          ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge, %land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge, %for.end68.rcu_read_unlock.exit128_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %32 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i125 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i125 to ptr
  %preempt_count.i.i.i.i126 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i126, align 4
  %sub.i.i.i127 = add i32 %35, -1
  store volatile i32 %sub.i.i.i127, ptr %preempt_count.i.i.i.i126, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit128, %if.end.i110, %do.end56.cleanup.sink.split_crit_edge, %for.condthread-pre-split.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %rcu_read_unlock.exit128 ], [ -22, %do.end56.cleanup.sink.split_crit_edge ], [ -22, %if.end.i110 ], [ 0, %for.condthread-pre-split.cleanup.sink.split_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @lease_list_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_grant_oplock(ptr noundef %work, i32 noundef %req_op_level, i64 noundef %pid, ptr noundef %fp, i16 noundef zeroext %tid, ptr noundef %lctx, i32 noundef %share_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %2 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_ci, align 4
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp = icmp eq i16 %10, 16384
  br i1 %cmp, label %entry.cleanup150_crit_edge, label %if.end

entry.cleanup150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup150

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 192) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup150_crit_edge, label %if.end5

if.end.cleanup150_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup150

if.end5:                                          ; preds = %if.end
  %sess2.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %sess2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %sess2.i, align 4
  %conn.i = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn.i, align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i.i, align 8
  %level.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %level.i, align 8
  %op_state.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %op_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %op_state.i, align 4
  %pending_break.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %pending_break.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pending_break.i, align 8
  %fid.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %fid.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %pid, ptr %fid.i, align 8
  %Tid4.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %Tid4.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %tid, ptr %Tid4.i, align 8
  %op_entry.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %op_entry.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %op_entry.i, ptr %op_entry.i, align 8
  %prev.i.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %op_entry.i, ptr %prev.i.i, align 4
  %interim_list.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %interim_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %interim_list.i, ptr %interim_list.i, align 8
  %prev.i25.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %prev.i25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %interim_list.i, ptr %prev.i25.i, align 4
  %oplock_q.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %oplock_q.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @alloc_opinfo.__key) #16
  %oplock_brk.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %oplock_brk.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @alloc_opinfo.__key.39) #16
  %refcount.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  %25 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcount.i, align 4
  %breaking_cnt.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i24.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %26 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %breaking_cnt.i, align 8
  %tobool6.not = icmp eq ptr %lctx, null
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 72) #22
  %tobool.not.i217 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i217, label %if.then7.err_out_crit_edge, label %if.end11

if.then7.err_out_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %28 = call ptr @memcpy(ptr %call7.i.i, ptr %lctx, i32 16)
  %req_state.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 1
  %29 = ptrtoint ptr %req_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req_state.i, align 8
  %state.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %state.i, align 8
  %new_state.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %new_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %new_state.i, align 4
  %flags.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags3.i, align 8
  %duration.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 3
  %36 = ptrtoint ptr %duration.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %duration.i, align 8
  %duration4.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %duration4.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %duration4.i, align 8
  %parent_lease_key.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 5
  %parent_lease_key6.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %parent_lease_key.i, ptr %parent_lease_key6.i, i32 16)
  %version.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 5
  %40 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version.i, align 8
  %version8.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %version8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %version8.i, align 8
  %epoch.i = getelementptr inbounds %struct.lease, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %epoch.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %epoch.i, align 4
  %lease_entry.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %lease_entry.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %lease_entry.i, ptr %lease_entry.i, align 8
  %prev.i.i218 = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %lease_entry.i, ptr %prev.i.i218, align 4
  %o_lease.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %46 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %o_lease.i, align 4
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %is_lease to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %is_lease, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end5.if.end12_crit_edge
  %stream.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %48 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stream.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, null
  %50 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_ci, align 4
  %op_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %51, i32 0, i32 2
  %sop_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %51, i32 0, i32 3
  %op_count.sink.i = select i1 %cmp.i.not.i, ptr %op_count.i, ptr %sop_count.i
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %op_count.sink.i, i32 noundef 4) #16
  %52 = ptrtoint ptr %op_count.sink.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %retval.0.i220 = load volatile i32, ptr %op_count.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i220)
  %tobool14.not = icmp eq i32 %retval.0.i220, 0
  br i1 %tobool14.not, label %if.end12.set_lev_crit_edge, label %if.end16

if.end12.set_lev_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_lev

if.end16:                                         ; preds = %if.end12
  %attrib_only = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 18
  %53 = ptrtoint ptr %attrib_only to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %attrib_only, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool17.not = icmp eq i8 %54, 0
  br i1 %tobool17.not, label %if.end16.if.end30_crit_edge, label %land.lhs.true

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end16
  %cdoption = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 14
  %55 = ptrtoint ptr %cdoption to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cdoption, align 8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %land.lhs.true.sw.default.i_crit_edge [
    i32 83886080, label %land.lhs.true.if.end30_crit_edge
    i32 67108864, label %land.lhs.true.if.end30_crit_edge279
    i32 0, label %land.lhs.true.if.end30_crit_edge280
  ]

land.lhs.true.if.end30_crit_edge280:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true.if.end30_crit_edge279:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true.sw.default.i_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default.i

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge279, %land.lhs.true.if.end30_crit_edge280, %if.end16.if.end30_crit_edge
  br i1 %tobool6.not, label %if.end30.if.end41_crit_edge, label %if.end.i222

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end.i222:                                      ; preds = %if.end30
  %58 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %conn.i, align 4
  %ClientGUID = getelementptr inbounds %struct.ksmbd_conn, ptr %59, i32 0, i32 24
  tail call void @_raw_read_lock(ptr noundef %3) #16
  %m_op_list.i = getelementptr inbounds %struct.ksmbd_inode, ptr %3, i32 0, i32 8
  %60 = ptrtoint ptr %m_op_list.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn112.i = load ptr, ptr %m_op_list.i, align 4
  %cmp.not114.i = icmp eq ptr %.pn112.i, %m_op_list.i
  br i1 %cmp.not114.i, label %same_client_has_lease.exit.thread, label %for.body.lr.ph.i

same_client_has_lease.exit.thread:                ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_read_unlock(ptr noundef %3) #16
  br label %if.end41

for.body.lr.ph.i:                                 ; preds = %if.end.i222
  %op_count.i223 = getelementptr inbounds %struct.ksmbd_inode, ptr %3, i32 0, i32 2
  %sop_count.i224 = getelementptr inbounds %struct.ksmbd_inode, ptr %3, i32 0, i32 3
  %req_state36.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn116.i = phi ptr [ %.pn112.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %m_opinfo.0115.i = phi ptr [ null, %for.body.lr.ph.i ], [ %m_opinfo.2.i, %for.inc.i.for.body.i_crit_edge ]
  %opinfo.0117.i = getelementptr i8, ptr %.pn116.i, i32 -64
  %is_lease.i = getelementptr i8, ptr %.pn116.i, i32 -14
  %61 = ptrtoint ptr %is_lease.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_lease.i, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool2.not.i = icmp eq i8 %62, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  tail call void @_raw_read_unlock(ptr noundef %3) #16
  %o_lease.i225 = getelementptr i8, ptr %.pn116.i, i32 -12
  %63 = ptrtoint ptr %o_lease.i225 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %o_lease.i225, align 4
  %65 = ptrtoint ptr %opinfo.0117.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %opinfo.0117.i, align 8
  %ClientGUID.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %66, i32 0, i32 24
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ClientGUID, ptr noundef dereferenceable(16) %ClientGUID.i.i, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end4.i.for.inc.sink.split.i_crit_edge

if.end4.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %bcmp6.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %lctx, ptr noundef dereferenceable(16) %64, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp6.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp6.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then7.i, label %land.lhs.true.i.i.for.inc.sink.split.i_crit_edge

land.lhs.true.i.i.for.inc.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.then7.i:                                       ; preds = %land.lhs.true.i.i
  %breaking_cnt.i226 = getelementptr i8, ptr %.pn116.i, i32 -24
  %call.i.i.i227 = tail call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt.i226, i32 noundef 4) #16
  %67 = ptrtoint ptr %breaking_cnt.i226 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %breaking_cnt.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool9.not.i = icmp eq i32 %68, 0
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then7.i.for.inc.sink.split.i_crit_edge

if.then7.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.end12.i:                                       ; preds = %if.then7.i
  %call.i.i95.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %op_count.i223, i32 noundef 4) #16
  %69 = ptrtoint ptr %op_count.i223 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %op_count.i223, align 4
  %call.i.i96.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sop_count.i224, i32 noundef 4) #16
  %71 = ptrtoint ptr %sop_count.i224 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %sop_count.i224, align 4
  %add.i = add i32 %72, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp15.i = icmp eq i32 %add.i, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end12.i
  %state.i228 = getelementptr inbounds %struct.lease, ptr %64, i32 0, i32 1
  %73 = ptrtoint ptr %state.i228 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state.i228, align 8
  %75 = ptrtoint ptr %req_state36.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %req_state36.i, align 8
  %and.i = and i32 %76, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %and.i)
  %cmp18.i = icmp eq i32 %74, %and.i
  br i1 %cmp18.i, label %if.then19.i, label %if.then16.i.if.end43.i_crit_edge

if.then16.i.if.end43.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then19.i:                                      ; preds = %if.then16.i
  %or.i = or i32 %76, %74
  %77 = ptrtoint ptr %state.i228 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i, ptr %state.i228, align 8
  %78 = ptrtoint ptr %req_state36.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %req_state36.i, align 8
  %and23.i = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then19.i.if.end43.i_crit_edge, label %if.then25.i

if.then19.i.if.end43.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then25.i:                                      ; preds = %if.then19.i
  %80 = ptrtoint ptr %o_lease.i225 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %o_lease.i225, align 4
  %state.i.i = getelementptr inbounds %struct.lease, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i.i, align 8
  %and.i.i = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i100.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i100.i, label %do.body.i.i, label %if.end8.i.i

do.body.i.i:                                      ; preds = %if.then25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %84 = load i32, ptr @ksmbd_debug_types, align 4
  %and1.i.i = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.if.end43thread-pre-split.i_crit_edge, label %do.end.i.i

do.body.i.i.if.end43thread-pre-split.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43thread-pre-split.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %83) #19
  br label %if.end43thread-pre-split.i

if.end8.i.i:                                      ; preds = %if.then25.i
  %new_state.i.i = getelementptr inbounds %struct.lease, ptr %81, i32 0, i32 2
  %85 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %new_state.i.i, align 4
  %or.i.i = or i32 %83, 67108864
  %86 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or.i.i, ptr %state.i.i, align 8
  %and11.i.i = and i32 %83, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %level14.i.i = getelementptr i8, ptr %.pn116.i, i32 -48
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %level14.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 9, ptr %level14.i.i, align 8
  br label %if.end43thread-pre-split.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %level14.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8, ptr %level14.i.i, align 8
  br label %if.end43thread-pre-split.i

if.else.i:                                        ; preds = %if.end12.i
  %call.i.i97.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %op_count.i223, i32 noundef 4) #16
  %89 = ptrtoint ptr %op_count.i223 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %op_count.i223, align 4
  %call.i.i98.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sop_count.i224, i32 noundef 4) #16
  %91 = ptrtoint ptr %sop_count.i224 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %sop_count.i224, align 4
  %add33.i = add i32 %92, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add33.i)
  %cmp34.i = icmp sgt i32 %add33.i, 1
  br i1 %cmp34.i, label %if.then35.i, label %if.else.i.if.end43thread-pre-split.i_crit_edge

if.else.i.if.end43thread-pre-split.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43thread-pre-split.i

if.then35.i:                                      ; preds = %if.else.i
  %93 = ptrtoint ptr %req_state36.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %req_state36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %94)
  %cmp37.i = icmp eq i32 %94, 50331648
  br i1 %cmp37.i, label %if.then38.i, label %if.then35.i.if.end43.i_crit_edge

if.then35.i.if.end43.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #18
  %state40.i = getelementptr inbounds %struct.lease, ptr %64, i32 0, i32 1
  %95 = ptrtoint ptr %state40.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 50331648, ptr %state40.i, align 8
  br label %if.end43thread-pre-split.i

if.end43thread-pre-split.i:                       ; preds = %if.then38.i, %if.else.i.if.end43thread-pre-split.i_crit_edge, %if.else.i.i, %if.then13.i.i, %do.end.i.i, %do.body.i.i.if.end43thread-pre-split.i_crit_edge
  %96 = ptrtoint ptr %req_state36.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr.i = load i32, ptr %req_state36.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43thread-pre-split.i, %if.then35.i.if.end43.i_crit_edge, %if.then19.i.if.end43.i_crit_edge, %if.then16.i.if.end43.i_crit_edge
  %97 = phi i32 [ %.pr.i, %if.end43thread-pre-split.i ], [ %94, %if.then35.i.if.end43.i_crit_edge ], [ %76, %if.then16.i.if.end43.i_crit_edge ], [ %79, %if.then19.i.if.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool45.not.i = icmp eq i32 %97, 0
  br i1 %tobool45.not.i, label %if.end43.i.for.inc.sink.split.i_crit_edge, label %land.lhs.true.i

if.end43.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  %state46.i = getelementptr inbounds %struct.lease, ptr %64, i32 0, i32 1
  %98 = ptrtoint ptr %state46.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp47.i = icmp eq i32 %99, 0
  br i1 %cmp47.i, label %if.then48.i, label %land.lhs.true.i.for.inc.sink.split.i_crit_edge

land.lhs.true.i.for.inc.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.then48.i:                                      ; preds = %land.lhs.true.i
  %100 = ptrtoint ptr %o_lease.i225 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %o_lease.i225, align 4
  %state.i103.i = getelementptr inbounds %struct.lease, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %state.i103.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %state.i103.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i = icmp eq i32 %103, 0
  br i1 %cmp.i.i, label %if.end6.i.i, label %do.body.i106.i

do.body.i106.i:                                   ; preds = %if.then48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %104 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i104.i = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool.not.i105.i = icmp eq i32 %and.i104.i, 0
  br i1 %tobool.not.i105.i, label %do.body.i106.i.for.inc.sink.split.i_crit_edge, label %do.end.i108.i

do.body.i106.i.for.inc.sink.split.i_crit_edge:    ; preds = %do.body.i106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

do.end.i108.i:                                    ; preds = %do.body.i106.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %103) #19
  br label %for.inc.sink.split.i

if.end6.i.i:                                      ; preds = %if.then48.i
  %new_state7.i.i = getelementptr inbounds %struct.lease, ptr %101, i32 0, i32 2
  %105 = ptrtoint ptr %new_state7.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %new_state7.i.i, align 4
  %106 = ptrtoint ptr %state.i103.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %97, ptr %state.i103.i, align 8
  %and10.i.i = and i32 %97, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %and21.i.i = and i32 %97, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else19.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end6.i.i
  %level17.i.i = getelementptr i8, ptr %.pn116.i, i32 -48
  br i1 %tobool22.not.i.i, label %if.else.i109.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %level17.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 9, ptr %level17.i.i, align 8
  br label %for.inc.sink.split.i

if.else.i109.i:                                   ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %108 = ptrtoint ptr %level17.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %level17.i.i, align 8
  br label %for.inc.sink.split.i

if.else19.i.i:                                    ; preds = %if.end6.i.i
  br i1 %tobool22.not.i.i, label %if.else25.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %level24.i.i = getelementptr i8, ptr %.pn116.i, i32 -48
  %109 = ptrtoint ptr %level24.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 8, ptr %level24.i.i, align 8
  br label %for.inc.sink.split.i

if.else25.i.i:                                    ; preds = %if.else19.i.i
  %and27.i.i = and i32 %97, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else25.i.i.for.inc.sink.split.i_crit_edge, label %if.then29.i.i

if.else25.i.i.for.inc.sink.split.i_crit_edge:     ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

if.then29.i.i:                                    ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %level30.i.i = getelementptr i8, ptr %.pn116.i, i32 -48
  %110 = ptrtoint ptr %level30.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %level30.i.i, align 8
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then29.i.i, %if.else25.i.i.for.inc.sink.split.i_crit_edge, %if.then23.i.i, %if.else.i109.i, %if.then16.i.i, %do.end.i108.i, %do.body.i106.i.for.inc.sink.split.i_crit_edge, %land.lhs.true.i.for.inc.sink.split.i_crit_edge, %if.end43.i.for.inc.sink.split.i_crit_edge, %if.then7.i.for.inc.sink.split.i_crit_edge, %land.lhs.true.i.i.for.inc.sink.split.i_crit_edge, %if.end4.i.for.inc.sink.split.i_crit_edge
  %m_opinfo.2.ph.i = phi ptr [ %opinfo.0117.i, %if.then7.i.for.inc.sink.split.i_crit_edge ], [ %opinfo.0117.i, %land.lhs.true.i.for.inc.sink.split.i_crit_edge ], [ %opinfo.0117.i, %if.end43.i.for.inc.sink.split.i_crit_edge ], [ %opinfo.0117.i, %do.body.i106.i.for.inc.sink.split.i_crit_edge ], [ %opinfo.0117.i, %do.end.i108.i ], [ %opinfo.0117.i, %if.then16.i.i ], [ %opinfo.0117.i, %if.else.i109.i ], [ %opinfo.0117.i, %if.then23.i.i ], [ %opinfo.0117.i, %if.else25.i.i.for.inc.sink.split.i_crit_edge ], [ %opinfo.0117.i, %if.then29.i.i ], [ %m_opinfo.0115.i, %if.end4.i.for.inc.sink.split.i_crit_edge ], [ %m_opinfo.0115.i, %land.lhs.true.i.i.for.inc.sink.split.i_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef %3) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge
  %m_opinfo.2.i = phi ptr [ %m_opinfo.0115.i, %for.body.i.for.inc.i_crit_edge ], [ %m_opinfo.2.ph.i, %for.inc.sink.split.i ]
  %111 = ptrtoint ptr %.pn116.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn.i = load ptr, ptr %.pn116.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %m_op_list.i
  br i1 %cmp.not.i, label %same_client_has_lease.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

same_client_has_lease.exit:                       ; preds = %for.inc.i
  tail call void @_raw_read_unlock(ptr noundef %3) #16
  %tobool34.not = icmp eq ptr %m_opinfo.2.i, null
  br i1 %tobool34.not, label %same_client_has_lease.exit.if.end41_crit_edge, label %if.then35

same_client_has_lease.exit.if.end41_crit_edge:    ; preds = %same_client_has_lease.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then35:                                        ; preds = %same_client_has_lease.exit
  %o_lease.i231 = getelementptr inbounds %struct.oplock_info, ptr %m_opinfo.2.i, i32 0, i32 13
  %112 = ptrtoint ptr %o_lease.i231 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %o_lease.i231, align 4
  %o_lease1.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %114 = ptrtoint ptr %o_lease1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %o_lease1.i, align 4
  %level.i232 = getelementptr inbounds %struct.oplock_info, ptr %m_opinfo.2.i, i32 0, i32 4
  %116 = ptrtoint ptr %level.i232 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %level.i232, align 8
  %118 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %level.i, align 8
  %state.i233 = getelementptr inbounds %struct.lease, ptr %113, i32 0, i32 1
  %119 = ptrtoint ptr %state.i233 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state.i233, align 8
  %state3.i = getelementptr inbounds %struct.lease, ptr %115, i32 0, i32 1
  %121 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %state3.i, align 8
  %122 = call ptr @memcpy(ptr %115, ptr %113, i32 16)
  %duration.i234 = getelementptr inbounds %struct.lease, ptr %113, i32 0, i32 4
  %123 = ptrtoint ptr %duration.i234 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %duration.i234, align 8
  %duration6.i = getelementptr inbounds %struct.lease, ptr %115, i32 0, i32 4
  %125 = ptrtoint ptr %duration6.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %duration6.i, align 8
  %flags.i235 = getelementptr inbounds %struct.lease, ptr %113, i32 0, i32 3
  %126 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i235, align 8
  %flags7.i = getelementptr inbounds %struct.lease, ptr %115, i32 0, i32 3
  %128 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %flags7.i, align 8
  %breaking_cnt = getelementptr inbounds %struct.oplock_info, ptr %m_opinfo.2.i, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt, i32 noundef 4) #16
  %129 = ptrtoint ptr %breaking_cnt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %breaking_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool37.not = icmp eq i32 %130, 0
  br i1 %tobool37.not, label %if.then35.do.body_crit_edge, label %if.then38

if.then35.do.body_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %o_lease1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %o_lease1.i, align 4
  %flags = getelementptr inbounds %struct.lease, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 33554432, ptr %flags, align 8
  br label %do.body

if.end41:                                         ; preds = %same_client_has_lease.exit.if.end41_crit_edge, %same_client_has_lease.exit.thread, %if.end30.if.end41_crit_edge
  %call42 = tail call fastcc ptr @opinfo_get_list(ptr noundef %3)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.set_lev_crit_edge, label %lor.lhs.false

if.end41.set_lev_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_lev

lor.lhs.false:                                    ; preds = %if.end41
  %level = getelementptr inbounds %struct.oplock_info, ptr %call42, i32 0, i32 4
  %134 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp44 = icmp ne i32 %135, 0
  %brmerge = or i1 %tobool6.not, %cmp44
  br i1 %brmerge, label %if.end49, label %lor.lhs.false.set_lev_crit_edge

lor.lhs.false.set_lev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_lev

if.end49:                                         ; preds = %lor.lhs.false
  %is_lease50 = getelementptr inbounds %struct.oplock_info, ptr %call42, i32 0, i32 11
  %136 = ptrtoint ptr %is_lease50 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %is_lease50, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool51.not = icmp eq i8 %137, 0
  br i1 %tobool51.not, label %if.end49.if.end55_crit_edge, label %if.then53

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %o_lease54 = getelementptr inbounds %struct.oplock_info, ptr %call42, i32 0, i32 13
  %138 = ptrtoint ptr %o_lease54 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %o_lease54, align 4
  %state = getelementptr inbounds %struct.lease, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %state, align 8
  %phi.bo = and i32 %141, 33554432
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end49.if.end55_crit_edge
  %prev_op_state.0 = phi i32 [ %phi.bo, %if.then53 ], [ 0, %if.end49.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %share_ret)
  %cmp56 = icmp slt i32 %share_ret, 0
  br i1 %cmp56, label %land.lhs.true58, label %if.end63.thread

land.lhs.true58:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %135)
  %cmp60 = icmp ne i32 %135, 8
  %142 = and i32 %135, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %142)
  %switch215 = icmp eq i32 %142, 8
  %or.cond278 = and i1 %cmp60, %switch215
  br i1 %or.cond278, label %land.lhs.true58.if.end72_crit_edge, label %err_out.sink.split

land.lhs.true58.if.end72_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.end63.thread:                                  ; preds = %if.end55
  %143 = and i32 %135, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %143)
  %switch215272 = icmp eq i32 %143, 8
  br i1 %switch215272, label %if.end63.thread.if.end72_crit_edge, label %if.then71.thread

if.end63.thread.if.end72_crit_edge:               ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then71.thread:                                 ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @opinfo_put(ptr noundef nonnull %call42)
  br label %if.end85

if.end72:                                         ; preds = %if.end63.thread.if.end72_crit_edge, %land.lhs.true58.if.end72_crit_edge
  %interim_entry = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 27
  %interim_list = getelementptr inbounds %struct.oplock_info, ptr %call42, i32 0, i32 14
  %144 = ptrtoint ptr %interim_list to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %interim_list, align 4
  %call.i.i236 = tail call zeroext i1 @__list_add_valid(ptr noundef %interim_entry, ptr noundef %interim_list, ptr noundef %145) #16
  br i1 %call.i.i236, label %if.end.i.i, label %if.end72.list_add.exit_crit_edge

if.end72.list_add.exit_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %interim_entry, ptr %prev1.i.i, align 4
  %147 = ptrtoint ptr %interim_entry to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %interim_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 27, i32 1
  %148 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %interim_list, ptr %prev3.i.i, align 4
  %149 = ptrtoint ptr %interim_list to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %interim_entry, ptr %interim_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end72.list_add.exit_crit_edge
  %call73 = tail call fastcc i32 @oplock_break(ptr noundef nonnull %call42, i32 noundef 1)
  tail call void @opinfo_put(ptr noundef nonnull %call42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call73)
  %cmp74 = icmp eq i32 %call73, -2
  br i1 %cmp74, label %list_add.exit.set_lev_crit_edge, label %if.else

list_add.exit.set_lev_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_lev

if.else:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp77 = icmp slt i32 %call73, 0
  %150 = or i32 %call73, %share_ret
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %.not = icmp sgt i32 %150, -1
  %call73.mux = select i1 %cmp77, i32 %call73, i32 %share_ret
  br i1 %.not, label %if.else.if.end85_crit_edge, label %if.else.err_out_crit_edge

if.else.err_out_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.end85:                                         ; preds = %if.else.if.end85_crit_edge, %if.then71.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_op_level)
  %cmp86.not = icmp ne i32 %req_op_level, 0
  %tobool6.not.not = xor i1 %tobool6.not, true
  %brmerge213 = or i1 %tobool51.not, %tobool6.not.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_op_state.0)
  %tobool96.not = icmp eq i32 %prev_op_state.0, 0
  %or.cond = select i1 %brmerge213, i1 true, i1 %tobool96.not
  %spec.select = and i1 %cmp86.not, %or.cond
  %req_op_level.addr.0 = zext i1 %spec.select to i32
  %tobool51.not.not = xor i1 %tobool51.not, true
  %brmerge214 = or i1 %tobool6.not, %tobool51.not.not
  br i1 %brmerge214, label %if.end85.set_lev_crit_edge, label %set_lev.thread274

if.end85.set_lev_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_lev

set_lev.thread274:                                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %req_state = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 1
  %151 = ptrtoint ptr %req_state to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 16777216, ptr %req_state, align 8
  br label %sw.bb1.i

set_lev:                                          ; preds = %if.end85.set_lev_crit_edge, %list_add.exit.set_lev_crit_edge, %lor.lhs.false.set_lev_crit_edge, %if.end41.set_lev_crit_edge, %if.end12.set_lev_crit_edge
  %req_op_level.addr.1 = phi i32 [ %req_op_level.addr.0, %if.end85.set_lev_crit_edge ], [ %req_op_level, %list_add.exit.set_lev_crit_edge ], [ %req_op_level, %if.end41.set_lev_crit_edge ], [ %req_op_level, %if.end12.set_lev_crit_edge ], [ %req_op_level, %lor.lhs.false.set_lev_crit_edge ]
  %152 = zext i32 %req_op_level.addr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %req_op_level.addr.1, label %set_lev.sw.default.i_crit_edge [
    i32 9, label %set_lev.sw.bb.i_crit_edge
    i32 8, label %set_lev.sw.bb.i_crit_edge281
    i32 1, label %set_lev.sw.bb1.i_crit_edge
  ]

set_lev.sw.bb1.i_crit_edge:                       ; preds = %set_lev
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

set_lev.sw.bb.i_crit_edge281:                     ; preds = %set_lev
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

set_lev.sw.bb.i_crit_edge:                        ; preds = %set_lev
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

set_lev.sw.default.i_crit_edge:                   ; preds = %set_lev
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default.i

sw.bb.i:                                          ; preds = %set_lev.sw.bb.i_crit_edge, %set_lev.sw.bb.i_crit_edge281
  %o_lease.i.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %153 = ptrtoint ptr %o_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %o_lease.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %req_op_level.addr.1)
  %cmp.i.i237 = icmp eq i32 %req_op_level.addr.1, 9
  %spec.select.i.i = select i1 %cmp.i.i237, i32 9, i32 8
  %155 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %spec.select.i.i, ptr %level.i, align 8
  br i1 %tobool6.not, label %sw.bb.i.do.body_crit_edge, label %if.then2.i.i

sw.bb.i.do.body_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then2.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %req_state.i.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 1
  %156 = ptrtoint ptr %req_state.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %req_state.i.i, align 8
  %state.i.i239 = getelementptr inbounds %struct.lease, ptr %154, i32 0, i32 1
  %158 = ptrtoint ptr %state.i.i239 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %state.i.i239, align 8
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %set_lev.sw.bb1.i_crit_edge, %set_lev.thread274
  %o_lease.i7.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %159 = ptrtoint ptr %o_lease.i7.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %o_lease.i7.i, align 4
  %161 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %level.i, align 8
  br i1 %tobool6.not, label %sw.bb1.i.do.body_crit_edge, label %if.then.i.i

sw.bb1.i.do.body_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.i.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  %state.i9.i = getelementptr inbounds %struct.lease, ptr %160, i32 0, i32 1
  %162 = ptrtoint ptr %state.i9.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16777216, ptr %state.i9.i, align 8
  %req_state.i10.i = getelementptr inbounds %struct.lease_ctx_info, ptr %lctx, i32 0, i32 1
  %163 = ptrtoint ptr %req_state.i10.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %req_state.i10.i, align 8
  %and.i.i240 = and i32 %164, 33554432
  %165 = or i32 %and.i.i240, 16777216
  store i32 %165, ptr %state.i9.i, align 8
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %set_lev.sw.default.i_crit_edge, %land.lhs.true.sw.default.i_crit_edge
  %o_lease.i11.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %166 = ptrtoint ptr %o_lease.i11.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %o_lease.i11.i, align 4
  %168 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %level.i, align 8
  br i1 %tobool6.not, label %sw.default.i.do.body_crit_edge, label %if.then.i15.i

sw.default.i.do.body_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.i15.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  %state.i14.i = getelementptr inbounds %struct.lease, ptr %167, i32 0, i32 1
  %169 = ptrtoint ptr %state.i14.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %state.i14.i, align 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i15.i, %if.then.i.i, %if.then2.i.i
  %.sink.i = phi ptr [ %167, %if.then.i15.i ], [ %160, %if.then.i.i ], [ %154, %if.then2.i.i ]
  %170 = call ptr @memcpy(ptr %.sink.i, ptr %lctx, i32 16)
  br label %do.body

do.body:                                          ; preds = %sw.epilog.sink.split.i, %sw.default.i.do.body_crit_edge, %sw.bb1.i.do.body_crit_edge, %sw.bb.i.do.body_crit_edge, %if.then38, %if.then35.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !150
  %f_opinfo130 = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 7
  %171 = ptrtoint ptr %f_opinfo130 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %call7.i.i.i, ptr %f_opinfo130, align 4
  %o_fp = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 3
  %172 = ptrtoint ptr %o_fp to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %fp, ptr %o_fp, align 4
  %173 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stream.i.i, align 4
  %cmp.i.not.i242 = icmp eq ptr %174, null
  %175 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %f_ci, align 4
  br i1 %cmp.i.not.i242, label %if.else.i246, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %sop_count.i243 = getelementptr inbounds %struct.ksmbd_inode, ptr %176, i32 0, i32 3
  %call.i.i.i244 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sop_count.i243, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %sop_count.i243, i32 1, i32 3, i32 1) #16
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sop_count.i243, ptr %sop_count.i243, i32 1, ptr elementtype(i32) %sop_count.i243) #16, !srcloc !151
  br label %opinfo_count_inc.exit

if.else.i246:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %op_count.i245 = getelementptr inbounds %struct.ksmbd_inode, ptr %176, i32 0, i32 2
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %op_count.i245, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %op_count.i245, i32 1, i32 3, i32 1) #16
  %178 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %op_count.i245, ptr %op_count.i245, i32 1, ptr elementtype(i32) %op_count.i245) #16, !srcloc !151
  br label %opinfo_count_inc.exit

opinfo_count_inc.exit:                            ; preds = %if.else.i246, %if.then.i
  %179 = ptrtoint ptr %o_fp to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %o_fp, align 4
  %f_ci.i = getelementptr inbounds %struct.ksmbd_file, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %f_ci.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %f_ci.i, align 4
  tail call void @_raw_write_lock(ptr noundef %182) #16
  %m_op_list.i248 = getelementptr inbounds %struct.ksmbd_inode, ptr %182, i32 0, i32 8
  %183 = ptrtoint ptr %m_op_list.i248 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %m_op_list.i248, align 4
  %call.i.i.i249 = tail call zeroext i1 @__list_add_valid(ptr noundef %op_entry.i, ptr noundef %m_op_list.i248, ptr noundef %184) #16
  br i1 %call.i.i.i249, label %if.end.i.i.i, label %opinfo_count_inc.exit.opinfo_add.exit_crit_edge

opinfo_count_inc.exit.opinfo_add.exit_crit_edge:  ; preds = %opinfo_count_inc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %opinfo_add.exit

if.end.i.i.i:                                     ; preds = %opinfo_count_inc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %185 = ptrtoint ptr %op_entry.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %op_entry.i, align 8
  %186 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %m_op_list.i248, ptr %prev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !152
  %187 = ptrtoint ptr %m_op_list.i248 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %op_entry.i, ptr %m_op_list.i248, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  %188 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %op_entry.i, ptr %prev37.i.i.i, align 4
  br label %opinfo_add.exit

opinfo_add.exit:                                  ; preds = %if.end.i.i.i, %opinfo_count_inc.exit.opinfo_add.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %182) #16
  %is_lease142 = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 11
  %189 = ptrtoint ptr %is_lease142 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_lease142, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool143.not = icmp eq i8 %190, 0
  br i1 %tobool143.not, label %opinfo_add.exit.cleanup150_crit_edge, label %if.then144

opinfo_add.exit.cleanup150_crit_edge:             ; preds = %opinfo_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup150

if.then144:                                       ; preds = %opinfo_add.exit
  tail call void @_raw_read_lock(ptr noundef nonnull @lease_list_lock) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i253.for.cond.i_crit_edge, %if.then144
  %.pn.in.i = phi ptr [ @lease_table_list, %if.then144 ], [ %.pn.i250, %for.body.i253.for.cond.i_crit_edge ]
  %191 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pn.i250 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i251 = icmp eq ptr %.pn.i250, @lease_table_list
  br i1 %cmp.not.i251, label %for.end.i257, label %for.body.i253

for.body.i253:                                    ; preds = %for.cond.i
  %lb.0.i = getelementptr i8, ptr %.pn.i250, i32 -24
  %192 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %call7.i.i.i, align 8
  %ClientGUID.i = getelementptr inbounds %struct.ksmbd_conn, ptr %193, i32 0, i32 24
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lb.0.i, ptr noundef dereferenceable(16) %ClientGUID.i, i32 16) #21
  %tobool.not.i252 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i252, label %if.then.i255, label %for.body.i253.for.cond.i_crit_edge

for.body.i253.for.cond.i_crit_edge:               ; preds = %for.body.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.then.i255:                                     ; preds = %for.body.i253
  %o_lease.i254 = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %194 = ptrtoint ptr %o_lease.i254 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %o_lease.i254, align 4
  %l_lb.i = getelementptr inbounds %struct.lease, ptr %195, i32 0, i32 8
  %196 = ptrtoint ptr %l_lb.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %lb.0.i, ptr %l_lb.i, align 8
  %197 = load ptr, ptr %o_lease.i254, align 4
  %l_lb.i.i = getelementptr inbounds %struct.lease, ptr %197, i32 0, i32 8
  %198 = ptrtoint ptr %l_lb.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %l_lb.i.i, align 8
  %lb_lock.i.i = getelementptr inbounds %struct.lease_table, ptr %199, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lb_lock.i.i) #16
  %lease_entry.i.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16
  %lease_list.i.i = getelementptr inbounds %struct.lease_table, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %lease_list.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %lease_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lease_entry.i.i, ptr noundef %lease_list.i.i, ptr noundef %201) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i255.lease_add_list.exit.i_crit_edge

if.then.i255.lease_add_list.exit.i_crit_edge:     ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #18
  br label %lease_add_list.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #18
  %202 = ptrtoint ptr %lease_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %lease_entry.i.i, align 8
  %prev2.i.i.i.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %203 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %lease_list.i.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !152
  %204 = ptrtoint ptr %lease_list.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %lease_entry.i.i, ptr %lease_list.i.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  %205 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %lease_entry.i.i, ptr %prev37.i.i.i.i, align 4
  br label %lease_add_list.exit.i

lease_add_list.exit.i:                            ; preds = %if.end.i.i.i.i, %if.then.i255.lease_add_list.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lb_lock.i.i) #16
  tail call void @_raw_read_unlock(ptr noundef nonnull @lease_list_lock) #16
  br label %cleanup150

for.end.i257:                                     ; preds = %for.cond.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @lease_list_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %206 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i256 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %206, i32 noundef 3264, i32 noundef 76) #22
  %tobool7.not.i = icmp eq ptr %call7.i.i256, null
  br i1 %tobool7.not.i, label %for.end.i257.err_out_crit_edge, label %if.end9.i

for.end.i257.err_out_crit_edge:                   ; preds = %for.end.i257
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.end9.i:                                        ; preds = %for.end.i257
  %207 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %call7.i.i.i, align 8
  %ClientGUID13.i = getelementptr inbounds %struct.ksmbd_conn, ptr %208, i32 0, i32 24
  %209 = call ptr @memcpy(ptr %call7.i.i256, ptr %ClientGUID13.i, i32 16)
  %lease_list.i = getelementptr inbounds %struct.lease_table, ptr %call7.i.i256, i32 0, i32 1
  %210 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %lease_list.i, ptr %lease_list.i, align 8
  %prev.i.i258 = getelementptr inbounds %struct.lease_table, ptr %call7.i.i256, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %prev.i.i258 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %lease_list.i, ptr %prev.i.i258, align 4
  %lb_lock.i = getelementptr inbounds %struct.lease_table, ptr %call7.i.i256, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lb_lock.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @add_lease_global_list.__key, i16 noundef signext 3) #16
  %o_lease16.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %212 = ptrtoint ptr %o_lease16.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %o_lease16.i, align 4
  %l_lb17.i = getelementptr inbounds %struct.lease, ptr %213, i32 0, i32 8
  %214 = ptrtoint ptr %l_lb17.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call7.i.i256, ptr %l_lb17.i, align 8
  %215 = load ptr, ptr %o_lease16.i, align 4
  %l_lb.i33.i = getelementptr inbounds %struct.lease, ptr %215, i32 0, i32 8
  %216 = ptrtoint ptr %l_lb.i33.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %l_lb.i33.i, align 8
  %lb_lock.i34.i = getelementptr inbounds %struct.lease_table, ptr %217, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lb_lock.i34.i) #16
  %lease_entry.i35.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16
  %lease_list.i36.i = getelementptr inbounds %struct.lease_table, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %lease_list.i36.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %lease_list.i36.i, align 4
  %call.i.i.i37.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lease_entry.i35.i, ptr noundef %lease_list.i36.i, ptr noundef %219) #16
  br i1 %call.i.i.i37.i, label %if.end.i.i.i40.i, label %if.end9.i.lease_add_list.exit41.i_crit_edge

if.end9.i.lease_add_list.exit41.i_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lease_add_list.exit41.i

if.end.i.i.i40.i:                                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %220 = ptrtoint ptr %lease_entry.i35.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %lease_entry.i35.i, align 8
  %prev2.i.i.i38.i = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %221 = ptrtoint ptr %prev2.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %lease_list.i36.i, ptr %prev2.i.i.i38.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !152
  %222 = ptrtoint ptr %lease_list.i36.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %lease_entry.i35.i, ptr %lease_list.i36.i, align 4
  %prev37.i.i.i39.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %223 = ptrtoint ptr %prev37.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %lease_entry.i35.i, ptr %prev37.i.i.i39.i, align 4
  br label %lease_add_list.exit41.i

lease_add_list.exit41.i:                          ; preds = %if.end.i.i.i40.i, %if.end9.i.lease_add_list.exit41.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lb_lock.i34.i) #16
  tail call void @_raw_write_lock(ptr noundef nonnull @lease_list_lock) #16
  %l_entry.i.i = getelementptr inbounds %struct.lease_table, ptr %call7.i.i256, i32 0, i32 2
  %224 = load ptr, ptr @lease_table_list, align 4
  %call.i.i.i42.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_entry.i.i, ptr noundef nonnull @lease_table_list, ptr noundef %224) #16
  br i1 %call.i.i.i42.i, label %if.end.i.i.i43.i, label %lease_add_list.exit41.i.lb_add.exit.i_crit_edge

lease_add_list.exit41.i.lb_add.exit.i_crit_edge:  ; preds = %lease_add_list.exit41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lb_add.exit.i

if.end.i.i.i43.i:                                 ; preds = %lease_add_list.exit41.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %l_entry.i.i, ptr %prev1.i.i.i.i, align 4
  %226 = ptrtoint ptr %l_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %224, ptr %l_entry.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.lease_table, ptr %call7.i.i256, i32 0, i32 2, i32 1
  %227 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @lease_table_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %l_entry.i.i, ptr @lease_table_list, align 4
  br label %lb_add.exit.i

lb_add.exit.i:                                    ; preds = %if.end.i.i.i43.i, %lease_add_list.exit41.i.lb_add.exit.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @lease_list_lock) #16
  br label %cleanup150

err_out.sink.split:                               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @opinfo_put(ptr noundef nonnull %call42)
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %for.end.i257.err_out_crit_edge, %if.else.err_out_crit_edge, %if.then7.err_out_crit_edge
  %err.0 = phi i32 [ %call73.mux, %if.else.err_out_crit_edge ], [ -12, %if.then7.err_out_crit_edge ], [ -12, %for.end.i257.err_out_crit_edge ], [ %share_ret, %err_out.sink.split ]
  %is_lease.i260 = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 11
  %228 = ptrtoint ptr %is_lease.i260 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %is_lease.i260, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i261 = icmp eq i8 %229, 0
  br i1 %tobool.not.i261, label %err_out.free_opinfo.exit_crit_edge, label %if.then.i263

err_out.free_opinfo.exit_crit_edge:               ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_opinfo.exit

if.then.i263:                                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #18
  %o_lease.i.i262 = getelementptr inbounds %struct.oplock_info, ptr %call7.i.i.i, i32 0, i32 13
  %230 = ptrtoint ptr %o_lease.i.i262 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %o_lease.i.i262, align 4
  tail call void @kfree(ptr noundef %231) #16
  br label %free_opinfo.exit

free_opinfo.exit:                                 ; preds = %if.then.i263, %err_out.free_opinfo.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #16
  br label %cleanup150

cleanup150:                                       ; preds = %free_opinfo.exit, %lb_add.exit.i, %lease_add_list.exit.i, %opinfo_add.exit.cleanup150_crit_edge, %if.end.cleanup150_crit_edge, %entry.cleanup150_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_opinfo.exit ], [ 0, %entry.cleanup150_crit_edge ], [ 0, %opinfo_add.exit.cleanup150_crit_edge ], [ -12, %if.end.cleanup150_crit_edge ], [ 0, %lease_add_list.exit.i ], [ 0, %lb_add.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @opinfo_get_list(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %m_op_list = getelementptr inbounds %struct.ksmbd_inode, ptr %ci, i32 0, i32 8
  %0 = ptrtoint ptr %m_op_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %m_op_list, align 4
  %cmp.i.not = icmp eq ptr %1, %m_op_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %6 = ptrtoint ptr %m_op_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %m_op_list, align 4
  %8 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %__next, align 4
  %cmp.not = icmp eq ptr %m_op_list, %7
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !153

cond.end.thread:                                  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.end13

cond.end:                                         ; preds = %rcu_read_lock.exit
  %9 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %9)
  %__next.0.__next.0.__next.0.14 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.14, i32 -64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool10.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %cond.end.if.end13_crit_edge, label %land.lhs.true

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %cond.end
  %refcount = getelementptr i8, ptr %__next.0.__next.0.__next.0.14, i32 -20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.if.end13_crit_edge, label %do.end11.i.i.i.i

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  br label %if.end13

if.end13:                                         ; preds = %do.end11.i.i.i.i, %land.lhs.true.if.end13_crit_edge, %cond.end.if.end13_crit_edge, %cond.end.thread
  %opinfo.0 = phi ptr [ null, %cond.end.if.end13_crit_edge ], [ null, %cond.end.thread ], [ null, %land.lhs.true.if.end13_crit_edge ], [ %add.ptr, %do.end11.i.i.i.i ]
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i19, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %if.end13
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %11 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i26 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %opinfo.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oplock_break(ptr noundef %brk_opinfo, i32 noundef %req_op_level) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %level = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 4
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %2) #19
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 11
  %3 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.else41, label %if.then5

if.then5:                                         ; preds = %do.end3
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 13
  %5 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %o_lease, align 4
  %breaking_cnt = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %breaking_cnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %breaking_cnt, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %breaking_cnt, ptr %breaking_cnt, i32 1, ptr elementtype(i32) %breaking_cnt) #16, !srcloc !151
  %call6 = tail call fastcc i32 @oplock_break_pending(ptr noundef %brk_opinfo, i32 noundef %req_op_level)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.then5
  %open_trunc = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 12
  %8 = ptrtoint ptr %open_trunc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %open_trunc, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %new_state = getelementptr inbounds %struct.lease, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %new_state, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end9
  %state = getelementptr inbounds %struct.lease, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  %and12 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and25 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %new_state30 = getelementptr inbounds %struct.lease, ptr %6, i32 0, i32 2
  br i1 %tobool13.not, label %if.else23, label %if.then14

if.then14:                                        ; preds = %if.else
  br i1 %tobool26.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %new_state30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50331648, ptr %new_state30, align 4
  br label %if.end33

if.else20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %new_state30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16777216, ptr %new_state30, align 4
  br label %if.end33

if.else23:                                        ; preds = %if.else
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %new_state30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %new_state30, align 4
  br label %if.end33

if.else29:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %new_state30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %new_state30, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27, %if.else20, %if.then18, %if.then11
  %state34 = getelementptr inbounds %struct.lease, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state34, align 8
  %and35 = and i32 %18, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %op_state = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 5
  %19 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %op_state, align 4
  br label %if.end58

if.else38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %breaking_cnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %breaking_cnt, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %breaking_cnt, ptr %breaking_cnt, i32 1, ptr elementtype(i32) %breaking_cnt) #16, !srcloc !149
  br label %if.end58

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %21 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup83

if.else41:                                        ; preds = %do.end3
  %call42 = tail call fastcc i32 @oplock_break_pending(ptr noundef %brk_opinfo, i32 noundef %req_op_level)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #18
  %22 = tail call i32 @llvm.smin.i32(i32 %call42, i32 0)
  br label %cleanup83

if.end50:                                         ; preds = %if.else41
  %level51 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 4
  %23 = ptrtoint ptr %level51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %level51, align 8
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %switch = icmp eq i32 %25, 8
  br i1 %switch, label %if.then55, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %op_state56 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 5
  %26 = ptrtoint ptr %op_state56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %op_state56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end50.if.end58_crit_edge, %if.else38, %if.then37
  %27 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool60.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %brk_opinfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %brk_opinfo, align 8
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.end58
  %o_lease.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 13
  %31 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %o_lease.i, align 4
  %call.i = tail call ptr @ksmbd_alloc_work_struct() #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then61.do.body66_crit_edge, label %if.end.i

if.then61.do.body66_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.end.i:                                         ; preds = %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 28) #22
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @ksmbd_free_work_struct(ptr noundef nonnull %call.i) #16
  br label %do.body66

if.end5.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.lease, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %call7.i.i, align 8
  %new_state.i = getelementptr inbounds %struct.lease, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %new_state.i, align 4
  %new_state6.i = getelementptr inbounds %struct.lease_break_info, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %new_state6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %new_state6.i, align 4
  %version.i = getelementptr inbounds %struct.lease, ptr %32, i32 0, i32 6
  %40 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i = icmp eq i32 %41, 2
  br i1 %cmp.i, label %if.then7.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %epoch.i = getelementptr inbounds %struct.lease, ptr %32, i32 0, i32 7
  %42 = ptrtoint ptr %epoch.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %epoch.i, align 4
  %inc.i = add i16 %43, 1
  store i16 %inc.i, ptr %epoch.i, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %inc.i) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end10.i_crit_edge
  %.sink.i = phi i16 [ %44, %if.then7.i ], [ 0, %if.end5.i.if.end10.i_crit_edge ]
  %45 = getelementptr inbounds %struct.lease_break_info, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink.i, ptr %45, align 8
  %lease_key.i = getelementptr inbounds %struct.lease_break_info, ptr %call7.i.i, i32 0, i32 3
  %47 = call ptr @memcpy(ptr %lease_key.i, ptr %32, i32 16)
  %request_buf.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %request_buf.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %request_buf.i, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %30, ptr %call.i, align 8
  %sess.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 1
  %50 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sess.i, align 4
  %sess14.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %sess14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %sess14.i, align 4
  %r_count.i = getelementptr inbounds %struct.ksmbd_conn, ptr %30, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count.i, i32 1, i32 3, i32 1) #16
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count.i, ptr %r_count.i, i32 1, ptr elementtype(i32) %r_count.i) #16, !srcloc !151
  %op_state.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 5
  %54 = ptrtoint ptr %op_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %op_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp15.i = icmp eq i32 %55, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.else31.i

if.then16.i:                                      ; preds = %if.end10.i
  %interim_list.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 14
  %56 = ptrtoint ptr %interim_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interim_list.i, align 8
  %cmp.i.not85.i = icmp eq ptr %57, %interim_list.i
  br i1 %cmp.i.not85.i, label %if.then16.i.do.body.i_crit_edge, label %if.then16.i.for.body.i_crit_edge

if.then16.i.for.body.i_crit_edge:                 ; preds = %if.then16.i
  br label %for.body.i

if.then16.i.do.body.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then16.i.for.body.i_crit_edge
  %tmp.086.i = phi ptr [ %t.088.i, %list_del.exit.i.for.body.i_crit_edge ], [ %57, %if.then16.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %tmp.086.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %t.088.i = load ptr, ptr %tmp.086.i, align 4
  %add.ptr.i = getelementptr i8, ptr %tmp.086.i, i32 -168
  %call22.i = tail call i32 @setup_async_work(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #16
  tail call void @smb2_send_interim_resp(ptr noundef %add.ptr.i, i32 noundef 50397184) #16
  %call.i.i82.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.086.i) #16
  br i1 %call.i.i82.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.086.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %tmp.086.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmp.086.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %65 = ptrtoint ptr %tmp.086.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.086.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.086.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %t.088.i, %interim_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.do.body.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.do.body.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i:                                        ; preds = %list_del.exit.i.do.body.i_crit_edge, %if.then16.i.do.body.i_crit_edge
  %work24.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %work24.i, i32 noundef 0) #16
  %67 = ptrtoint ptr %work24.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %work24.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @smb2_lease_break_noti.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry28.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 1
  %68 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry28.i, ptr %entry28.i, align 4
  %prev.i83.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry28.i, ptr %prev.i83.i, align 4
  %func.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 2
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @__smb2_lease_break_noti, ptr %func.i, align 4
  %call30.i = tail call zeroext i1 @ksmbd_queue_work(ptr noundef nonnull %call.i) #16
  tail call fastcc void @wait_for_break_ack(ptr noundef %brk_opinfo) #16
  br label %do.body66

if.else31.i:                                      ; preds = %if.end10.i
  %work32.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23
  tail call void @__smb2_lease_break_noti(ptr noundef %work32.i) #16
  %71 = ptrtoint ptr %o_lease.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %o_lease.i, align 4
  %new_state34.i = getelementptr inbounds %struct.lease, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %new_state34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %new_state34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp35.i = icmp eq i32 %74, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.else31.i.do.body66_crit_edge

if.else31.i.do.body66_crit_edge:                  ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.then36.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #18
  %level.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 4
  %75 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %level.i, align 8
  %state38.i = getelementptr inbounds %struct.lease, ptr %72, i32 0, i32 1
  %76 = ptrtoint ptr %state38.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %state38.i, align 8
  br label %do.body66

if.else63:                                        ; preds = %if.end58
  %call.i121 = tail call ptr @ksmbd_alloc_work_struct() #16
  %tobool.not.i122 = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i122, label %if.else63.do.body66_crit_edge, label %if.end.i125

if.else63.do.body66_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.end.i125:                                      ; preds = %if.else63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i123 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 12) #22
  %tobool3.not.i124 = icmp eq ptr %call7.i.i123, null
  br i1 %tobool3.not.i124, label %if.then4.i126, label %if.end5.i134

if.then4.i126:                                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @ksmbd_free_work_struct(ptr noundef nonnull %call.i121) #16
  br label %do.body66

if.end5.i134:                                     ; preds = %if.end.i125
  %level.i127 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 4
  %78 = ptrtoint ptr %level.i127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %level.i127, align 8
  %80 = ptrtoint ptr %call7.i.i123 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %call7.i.i123, align 8
  %fid.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 7
  %81 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %fid.i, align 8
  %conv.i = trunc i64 %82 to i32
  %fid7.i = getelementptr inbounds %struct.oplock_break_info, ptr %call7.i.i123, i32 0, i32 2
  %83 = ptrtoint ptr %fid7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i, ptr %fid7.i, align 8
  %open_trunc.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 12
  %84 = ptrtoint ptr %open_trunc.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %open_trunc.i, align 1, !range !148
  %86 = zext i8 %85 to i32
  %open_trunc10.i = getelementptr inbounds %struct.oplock_break_info, ptr %call7.i.i123, i32 0, i32 1
  %87 = ptrtoint ptr %open_trunc10.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %open_trunc10.i, align 4
  %request_buf.i128 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 3
  %88 = ptrtoint ptr %request_buf.i128 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i123, ptr %request_buf.i128, align 4
  %89 = ptrtoint ptr %call.i121 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %30, ptr %call.i121, align 8
  %sess.i129 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 1
  %90 = ptrtoint ptr %sess.i129 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sess.i129, align 4
  %sess12.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 1
  %92 = ptrtoint ptr %sess12.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %sess12.i, align 4
  %r_count.i130 = getelementptr inbounds %struct.ksmbd_conn, ptr %30, i32 0, i32 14
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count.i130, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count.i130, i32 1, i32 3, i32 1) #16
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count.i130, ptr %r_count.i130, i32 1, ptr elementtype(i32) %r_count.i130) #16, !srcloc !151
  %op_state.i132 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 5
  %94 = ptrtoint ptr %op_state.i132 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %op_state.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i133 = icmp eq i32 %95, 1
  %work15.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 23
  br i1 %cmp.i133, label %do.body.i138, label %if.else.i

do.body.i138:                                     ; preds = %if.end5.i134
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__init_work(ptr noundef %work15.i, i32 noundef 0) #16
  %96 = ptrtoint ptr %work15.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -64, ptr %work15.i, align 4
  %lockdep_map.i135 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i135, ptr noundef nonnull @.str.48, ptr noundef nonnull @smb2_oplock_break_noti.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry19.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 23, i32 1
  %97 = ptrtoint ptr %entry19.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %entry19.i, ptr %entry19.i, align 4
  %prev.i.i136 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 23, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i.i136 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %entry19.i, ptr %prev.i.i136, align 4
  %func.i137 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i121, i32 0, i32 23, i32 2
  %99 = ptrtoint ptr %func.i137 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @__smb2_oplock_break_noti, ptr %func.i137, align 4
  %call21.i = tail call zeroext i1 @ksmbd_queue_work(ptr noundef nonnull %call.i121) #16
  tail call fastcc void @wait_for_break_ack(ptr noundef %brk_opinfo) #16
  br label %do.body66

if.else.i:                                        ; preds = %if.end5.i134
  tail call void @__smb2_oplock_break_noti(ptr noundef %work15.i) #16
  %100 = ptrtoint ptr %level.i127 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %level.i127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp24.i = icmp eq i32 %101, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i.do.body66_crit_edge

if.else.i.do.body66_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body66

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %level.i127 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %level.i127, align 8
  br label %do.body66

do.body66:                                        ; preds = %if.then26.i, %if.else.i.do.body66_crit_edge, %do.body.i138, %if.then4.i126, %if.else63.do.body66_crit_edge, %if.then36.i, %if.else31.i.do.body66_crit_edge, %do.body.i, %if.then4.i, %if.then61.do.body66_crit_edge
  %err.0 = phi i32 [ -12, %if.then4.i ], [ -12, %if.then61.do.body66_crit_edge ], [ 0, %if.else31.i.do.body66_crit_edge ], [ 0, %if.then36.i ], [ 0, %do.body.i ], [ -12, %if.then4.i126 ], [ -12, %if.else63.do.body66_crit_edge ], [ 0, %if.else.i.do.body66_crit_edge ], [ 0, %if.then26.i ], [ 0, %do.body.i138 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %103 = load i32, ptr @ksmbd_debug_types, align 4
  %and67 = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end78_crit_edge, label %do.end72

do.body66.do.end78_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end78

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  %level74 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 4
  %104 = ptrtoint ptr %level74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %level74, align 8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %105) #19
  br label %do.end78

do.end78:                                         ; preds = %do.end72, %do.body66.do.end78_crit_edge
  %op_state79 = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 5
  %106 = ptrtoint ptr %op_state79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %op_state79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp80 = icmp eq i32 %107, 2
  %spec.select119 = select i1 %cmp80, i32 -2, i32 %err.0
  %pending_break.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 6
  %call.i.i.i140 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_break.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %pending_break.i, i32 1, i32 3, i32 1) #16
  %108 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_break.i, ptr %pending_break.i, i32 1, ptr elementtype(i32) %pending_break.i) #16, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !156
  tail call void @wake_up_bit(ptr noundef %pending_break.i, i32 noundef 0) #16
  %109 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i141 = icmp eq i8 %110, 0
  br i1 %tobool.not.i141, label %do.end78.cleanup83_crit_edge, label %if.end.i143

do.end78.cleanup83_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup83

if.end.i143:                                      ; preds = %do.end78
  %oplock_brk.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %oplock_brk.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  %breaking_cnt.i = getelementptr inbounds %struct.oplock_info, ptr %brk_opinfo, i32 0, i32 8
  %call.i.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %111 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %breaking_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool1.not.i = icmp eq i32 %112, 0
  br i1 %tobool1.not.i, label %if.end.i143.cleanup83_crit_edge, label %if.then2.i

if.end.i143.cleanup83_crit_edge:                  ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup83

if.then2.i:                                       ; preds = %if.end.i143
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 850) #16
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %113 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %breaking_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i144 = icmp eq i32 %114, 0
  br i1 %cmp.i144, label %if.then2.i.cleanup83_crit_edge, label %if.then15.i

if.then2.i.cleanup83_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup83

if.then15.i:                                      ; preds = %if.then2.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  %115 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #16
  %call1884.i = call i32 @prepare_to_wait_event(ptr noundef %oplock_brk.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %call.i.i6985.i = call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %116 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %breaking_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp2286.i = icmp eq i32 %117, 0
  br i1 %cmp2286.i, label %if.end45.thread.i, label %if.then15.i.if.end38.i_crit_edge

if.then15.i.if.end38.i_crit_edge:                 ; preds = %if.then15.i
  br label %if.end38.i

if.end45.thread.i:                                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @finish_wait(ptr noundef %oplock_brk.i, ptr noundef nonnull %__wq_entry.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %cleanup83

if.end38.i:                                       ; preds = %cleanup.i.if.end38.i_crit_edge, %if.then15.i.if.end38.i_crit_edge
  %__ret16.188.i = phi i32 [ %__ret16.1.i, %cleanup.i.if.end38.i_crit_edge ], [ 100, %if.then15.i.if.end38.i_crit_edge ]
  %call1887.i = phi i32 [ %call18.i, %cleanup.i.if.end38.i_crit_edge ], [ %call1884.i, %if.then15.i.if.end38.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1887.i)
  %tobool39.not.i = icmp eq i32 %call1887.i, 0
  br i1 %tobool39.not.i, label %cleanup.i, label %if.end45.thread80.i

if.end45.thread80.i:                              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %cleanup83

cleanup.i:                                        ; preds = %if.end38.i
  %call42.i = call i32 @schedule_timeout(i32 noundef %__ret16.188.i) #16
  %call18.i = call i32 @prepare_to_wait_event(ptr noundef %oplock_brk.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %call.i.i69.i = call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %118 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %breaking_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp22.i = icmp eq i32 %119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool26.not.i = icmp eq i32 %call42.i, 0
  %120 = select i1 %cmp22.i, i1 %tobool26.not.i, i1 false
  %__ret16.1.i = select i1 %120, i32 1, i32 %call42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %tobool32.not.i = icmp eq i32 %__ret16.1.i, 0
  %121 = select i1 %cmp22.i, i1 true, i1 %tobool32.not.i
  br i1 %121, label %if.end45.i, label %cleanup.i.if.end38.i_crit_edge

cleanup.i.if.end38.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

if.end45.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %oplock_brk.i, ptr noundef nonnull %__wq_entry.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br i1 %tobool32.not.i, label %if.then48.i, label %if.end45.i.cleanup83_crit_edge

if.end45.i.cleanup83_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup83

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i70.i = call zeroext i1 @__kasan_check_write(ptr noundef %breaking_cnt.i, i32 noundef 4) #16
  %122 = ptrtoint ptr %breaking_cnt.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 0, ptr %breaking_cnt.i, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.then48.i, %if.end45.i.cleanup83_crit_edge, %if.end45.thread80.i, %if.end45.thread.i, %if.then2.i.cleanup83_crit_edge, %if.end.i143.cleanup83_crit_edge, %do.end78.cleanup83_crit_edge, %if.then44, %cleanup
  %retval.1 = phi i32 [ %21, %cleanup ], [ %22, %if.then44 ], [ %spec.select119, %do.end78.cleanup83_crit_edge ], [ %spec.select119, %if.end.i143.cleanup83_crit_edge ], [ %spec.select119, %if.then2.i.cleanup83_crit_edge ], [ %spec.select119, %if.end45.thread.i ], [ %spec.select119, %if.end45.thread80.i ], [ %spec.select119, %if.end45.i.cleanup83_crit_edge ], [ %spec.select119, %if.then48.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb_break_all_levII_oplock(ptr nocapture noundef readonly %work, ptr noundef %fp, i32 noundef %is_trunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %conn1 = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 4
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %4 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcon, align 8
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %share_conf, align 4
  %flags.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %10 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_ci, align 4
  %call2 = tail call ptr @opinfo_get(ptr noundef %fp)
  %12 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b129 = load i1, ptr @smb_break_all_levII_oplock.__warned, align 1
  br i1 %.b129, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @smb_break_all_levII_oplock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1253, ptr noundef nonnull @.str.15) #16
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %m_op_list = getelementptr inbounds %struct.ksmbd_inode, ptr %11, i32 0, i32 8
  %16 = ptrtoint ptr %m_op_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn173 = load volatile ptr, ptr %m_op_list, align 4
  %cmp.not175 = icmp eq ptr %.pn173, %m_op_list
  br i1 %cmp.not175, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %tobool64.not = icmp eq ptr %call2, null
  %is_lease66 = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 11
  %ClientGUID = getelementptr inbounds %struct.ksmbd_conn, ptr %3, i32 0, i32 24
  %o_lease78 = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_trunc)
  %tobool87 = icmp ne i32 %is_trunc, 0
  %frombool = zext i1 %tobool87 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn176 = phi ptr [ %.pn173, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %brk_op.0177 = getelementptr i8, ptr %.pn176, i32 -64
  %refcount = getelementptr i8, ptr %.pn176, i32 -20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %for.body.for.inc_crit_edge, label %if.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end18:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  %call.i142 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i142, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i145

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i145:                               ; preds = %if.end18
  %call1.i143 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %tobool.not.i144 = icmp eq i32 %call1.i143, 0
  br i1 %tobool.not.i144, label %land.lhs.true.i145.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i147

land.lhs.true.i145.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i147:                              ; preds = %land.lhs.true.i145
  %.b4.i146 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i146, label %land.lhs.true2.i147.rcu_read_unlock.exit_crit_edge, label %if.then.i148

land.lhs.true2.i147.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i148:                                     ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i148, %land.lhs.true2.i147.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i145.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %18 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i149 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i149 to ptr
  %preempt_count.i.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i150, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i150, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %is_lease = getelementptr i8, ptr %.pn176, i32 -14
  %22 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  br i1 %tobool19.not, label %if.else, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %rcu_read_unlock.exit
  %o_lease = getelementptr i8, ptr %.pn176, i32 -12
  %24 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %o_lease, align 4
  %state = getelementptr inbounds %struct.lease, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 8
  %and = and i32 %27, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.else.thread, label %do.body23

do.body23:                                        ; preds = %land.lhs.true20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %28 = load i32, ptr @ksmbd_debug_types, align 4
  %and24 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.next89_crit_edge, label %do.end29

do.body23.next89_crit_edge:                       ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %next89

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %27) #19
  br label %next89

if.else:                                          ; preds = %rcu_read_unlock.exit
  %level = getelementptr i8, ptr %.pn176, i32 -48
  %29 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp37.not = icmp eq i32 %30, 1
  br i1 %cmp37.not, label %if.else.if.end63_crit_edge, label %if.else.do.body39_crit_edge

if.else.do.body39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.else.thread:                                   ; preds = %land.lhs.true20
  %level171 = getelementptr i8, ptr %.pn176, i32 -48
  %31 = ptrtoint ptr %level171 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp37.not172 = icmp eq i32 %32, 1
  br i1 %cmp37.not172, label %land.lhs.true56, label %if.else.thread.do.body39_crit_edge

if.else.thread.do.body39_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39

do.body39:                                        ; preds = %if.else.thread.do.body39_crit_edge, %if.else.do.body39_crit_edge
  %33 = phi i32 [ %32, %if.else.thread.do.body39_crit_edge ], [ %30, %if.else.do.body39_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %34 = load i32, ptr @ksmbd_debug_types, align 4
  %and40 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.next89_crit_edge, label %do.end45

do.body39.next89_crit_edge:                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  br label %next89

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %33) #19
  br label %next89

land.lhs.true56:                                  ; preds = %if.else.thread
  %35 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %o_lease, align 4
  %new_state = getelementptr inbounds %struct.lease, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %new_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp58 = icmp eq i32 %38, 0
  br i1 %cmp58, label %land.lhs.true59, label %land.lhs.true56.if.end63_crit_edge

land.lhs.true56.if.end63_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %breaking_cnt = getelementptr i8, ptr %.pn176, i32 -24
  %call.i.i130 = tail call zeroext i1 @__kasan_check_read(ptr noundef %breaking_cnt, i32 noundef 4) #16
  %39 = ptrtoint ptr %breaking_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %breaking_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool61.not = icmp eq i32 %40, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end63_crit_edge, label %land.lhs.true59.next89_crit_edge

land.lhs.true59.next89_crit_edge:                 ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %next89

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true59.if.end63_crit_edge, %land.lhs.true56.if.end63_crit_edge, %if.else.if.end63_crit_edge
  br i1 %tobool64.not, label %if.end63.if.end86_crit_edge, label %land.lhs.true65

if.end63.if.end86_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true65:                                  ; preds = %if.end63
  %41 = ptrtoint ptr %is_lease66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_lease66, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool67.not = icmp eq i8 %42, 0
  br i1 %tobool67.not, label %land.lhs.true65.if.end86_crit_edge, label %land.lhs.true68

land.lhs.true65.if.end86_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %43 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool70.not = icmp eq i8 %44, 0
  br i1 %tobool70.not, label %land.lhs.true68.if.end86_crit_edge, label %land.lhs.true71

land.lhs.true68.if.end86_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %45 = ptrtoint ptr %brk_op.0177 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %brk_op.0177, align 8
  %ClientGUID73 = getelementptr inbounds %struct.ksmbd_conn, ptr %46, i32 0, i32 24
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ClientGUID, ptr noundef dereferenceable(16) %ClientGUID73, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool76.not = icmp eq i32 %bcmp, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %land.lhs.true71.if.end86_crit_edge

land.lhs.true71.if.end86_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %47 = ptrtoint ptr %o_lease78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %o_lease78, align 4
  %o_lease80 = getelementptr i8, ptr %.pn176, i32 -12
  %49 = ptrtoint ptr %o_lease80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %o_lease80, align 4
  %bcmp128 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %48, ptr noundef dereferenceable(16) %50, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp128)
  %tobool84.not = icmp eq i32 %bcmp128, 0
  br i1 %tobool84.not, label %land.lhs.true77.next89_crit_edge, label %land.lhs.true77.if.end86_crit_edge

land.lhs.true77.if.end86_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

land.lhs.true77.next89_crit_edge:                 ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %next89

if.end86:                                         ; preds = %land.lhs.true77.if.end86_crit_edge, %land.lhs.true71.if.end86_crit_edge, %land.lhs.true68.if.end86_crit_edge, %land.lhs.true65.if.end86_crit_edge, %if.end63.if.end86_crit_edge
  %open_trunc = getelementptr i8, ptr %.pn176, i32 -13
  %51 = ptrtoint ptr %open_trunc to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool, ptr %open_trunc, align 1
  %call88 = tail call fastcc i32 @oplock_break(ptr noundef %brk_op.0177, i32 noundef 0)
  br label %next89

next89:                                           ; preds = %if.end86, %land.lhs.true77.next89_crit_edge, %land.lhs.true59.next89_crit_edge, %do.end45, %do.body39.next89_crit_edge, %do.end29, %do.body23.next89_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i151 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i151, label %if.end.i, label %next89.opinfo_put.exit_crit_edge

next89.opinfo_put.exit_crit_edge:                 ; preds = %next89
  call void @__sanitizer_cov_trace_pc() #18
  br label %opinfo_put.exit

if.end.i:                                         ; preds = %next89
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr i8, ptr %.pn176, i32 120
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %opinfo_put.exit

opinfo_put.exit:                                  ; preds = %if.end.i, %next89.opinfo_put.exit_crit_edge
  %53 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i131 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i131 to ptr
  %preempt_count.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i132, align 4
  %add.i.i.i133 = add i32 %56, 1
  store volatile i32 %add.i.i.i133, ptr %preempt_count.i.i.i.i132, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i134, label %opinfo_put.exit.for.inc_crit_edge, label %land.lhs.true.i137

opinfo_put.exit.for.inc_crit_edge:                ; preds = %opinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true.i137:                               ; preds = %opinfo_put.exit
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.for.inc_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.for.inc_crit_edge:             ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.for.inc_crit_edge, label %if.then.i140

land.lhs.true2.i139.for.inc_crit_edge:            ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then.i140, %land.lhs.true2.i139.for.inc_crit_edge, %land.lhs.true.i137.for.inc_crit_edge, %opinfo_put.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %57 = ptrtoint ptr %.pn176 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load volatile ptr, ptr %.pn176, align 4
  %cmp.not = icmp eq ptr %.pn, %m_op_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i152 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i152, label %for.end.rcu_read_unlock.exit162_crit_edge, label %land.lhs.true.i155

for.end.rcu_read_unlock.exit162_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

land.lhs.true.i155:                               ; preds = %for.end
  %call1.i153 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool.not.i154, label %land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge, label %land.lhs.true2.i157

land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge: ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

land.lhs.true2.i157:                              ; preds = %land.lhs.true.i155
  %.b4.i156 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i156, label %land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge, label %if.then.i158

land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge: ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

if.then.i158:                                     ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit162

rcu_read_unlock.exit162:                          ; preds = %if.then.i158, %land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge, %land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge, %for.end.rcu_read_unlock.exit162_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %58 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i159 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i159 to ptr
  %preempt_count.i.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i160, align 4
  %sub.i.i.i161 = add i32 %61, -1
  store volatile i32 %sub.i.i.i161, ptr %preempt_count.i.i.i.i160, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool99.not = icmp eq ptr %call2, null
  br i1 %tobool99.not, label %rcu_read_unlock.exit162.cleanup_crit_edge, label %if.then100

rcu_read_unlock.exit162.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit162
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then100:                                       ; preds = %rcu_read_unlock.exit162
  %refcount.i163 = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 9
  %call.i.i.i164 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i163, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i163, i32 1, i32 3, i32 1) #16
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i163, ptr %refcount.i163, i32 1, ptr elementtype(i32) %refcount.i163) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i165 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i165)
  %cmp.i.i.i166 = icmp eq i32 %asmresult.i.i.i.i.i.i165, 0
  br i1 %cmp.i.i.i166, label %if.end.i168, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i168:                                      ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i167 = getelementptr inbounds %struct.oplock_info, ptr %call2, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %callback_head.i167, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i168, %if.then100.cleanup_crit_edge, %rcu_read_unlock.exit162.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb_break_all_oplock(ptr noundef %work, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 8
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_conf, align 4
  %flags.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %f_ci.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %6 = ptrtoint ptr %f_ci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_ci.i, align 4
  %call.i = tail call fastcc ptr @opinfo_get_list(ptr noundef %7) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.smb_break_all_write_oplock.exit_crit_edge, label %if.end.i

if.end.smb_break_all_write_oplock.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %smb_break_all_write_oplock.exit

if.end.i:                                         ; preds = %if.end
  %level.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level.i, align 8
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %switch.i = icmp eq i32 %10, 8
  br i1 %switch.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then3.i.cleanup.sink.split.i_crit_edge, label %if.then3.i.smb_break_all_write_oplock.exit_crit_edge

if.then3.i.smb_break_all_write_oplock.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smb_break_all_write_oplock.exit

if.then3.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %open_trunc.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %open_trunc.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %open_trunc.i, align 1
  %interim_entry.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 27
  %interim_list.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %interim_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interim_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %interim_entry.i, ptr noundef %interim_list.i, ptr noundef %14) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_add.exit.i_crit_edge

if.end4.i.list_add.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %interim_entry.i, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %interim_entry.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %interim_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 27, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %interim_list.i, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %interim_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %interim_entry.i, ptr %interim_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.i.list_add.exit.i_crit_edge
  %call6.i = tail call fastcc i32 @oplock_break(ptr noundef nonnull %call.i, i32 noundef 1) #16
  %refcount.i1.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 9
  %call.i.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i1.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i1.i, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i1.i, ptr %refcount.i1.i, i32 1, ptr elementtype(i32) %refcount.i1.i) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i3.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i3.i)
  %cmp.i.i.i4.i = icmp eq i32 %asmresult.i.i.i.i.i.i3.i, 0
  br i1 %cmp.i.i.i4.i, label %list_add.exit.i.cleanup.sink.split.i_crit_edge, label %list_add.exit.i.smb_break_all_write_oplock.exit_crit_edge

list_add.exit.i.smb_break_all_write_oplock.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smb_break_all_write_oplock.exit

list_add.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %list_add.exit.i.cleanup.sink.split.i_crit_edge, %if.then3.i.cleanup.sink.split.i_crit_edge
  %callback_head.i5.i = getelementptr inbounds %struct.oplock_info, ptr %call.i, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %callback_head.i5.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %smb_break_all_write_oplock.exit

smb_break_all_write_oplock.exit:                  ; preds = %cleanup.sink.split.i, %list_add.exit.i.smb_break_all_write_oplock.exit_crit_edge, %if.then3.i.smb_break_all_write_oplock.exit_crit_edge, %if.end.smb_break_all_write_oplock.exit_crit_edge
  tail call void @smb_break_all_levII_oplock(ptr noundef %work, ptr noundef %fp, i32 noundef 1)
  br label %return

return:                                           ; preds = %smb_break_all_write_oplock.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @smb2_map_lease_to_oplock(i32 noundef %lease_state) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %lease_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %lease_state, label %land.lhs.true [
    i32 117440512, label %entry.return_crit_edge
    i32 67108864, label %entry.if.end12_crit_edge
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %lease_state, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else6, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %and3 = and i32 %lease_state, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.return_crit_edge, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else6:                                         ; preds = %land.lhs.true
  %and7 = and i32 %lease_state, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else6.if.end12_crit_edge, label %if.else6.return_crit_edge

if.else6.return_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else6.if.end12_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %if.else6.if.end12_crit_edge, %if.then2.if.end12_crit_edge, %entry.if.end12_crit_edge
  br label %return

return:                                           ; preds = %if.end12, %if.else6.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end12 ], [ 9, %entry.return_crit_edge ], [ 8, %if.then2.return_crit_edge ], [ 1, %if.else6.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @create_lease_buf(ptr noundef writeonly %rbuf, ptr nocapture noundef readonly %lease) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 6
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = call ptr @memset(ptr %rbuf, i32 0, i32 80)
  %lcontext = getelementptr inbounds %struct.create_lease_v2, ptr %rbuf, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %lcontext, ptr %lease, i32 16)
  %flags = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %LeaseFlags = getelementptr inbounds %struct.create_lease_v2, ptr %rbuf, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %LeaseFlags to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %LeaseFlags, align 1
  %state = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %LeaseState = getelementptr inbounds %struct.create_lease_v2, ptr %rbuf, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %LeaseState to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %LeaseState, align 1
  %ParentLeaseKey = getelementptr inbounds %struct.create_lease_v2, ptr %rbuf, i32 0, i32 2, i32 4
  %parent_lease_key = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %ParentLeaseKey, ptr %parent_lease_key, i32 16)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 4
  %11 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 6144, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 5
  %12 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 872415232, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 1
  %13 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 2
  %14 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 1024, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_lease_v2, ptr %rbuf, i32 0, i32 1
  %15 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 82, ptr %Name, align 1
  %arrayidx11 = getelementptr %struct.create_lease_v2, ptr %rbuf, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 113, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr %struct.create_lease_v2, ptr %rbuf, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 76, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.create_lease_v2, ptr %rbuf, i32 0, i32 1, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %18 = call ptr @memset(ptr %rbuf, i32 0, i32 56)
  %lcontext17 = getelementptr inbounds %struct.create_lease, ptr %rbuf, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %lcontext17, ptr %lease, i32 16)
  %flags22 = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 3
  %20 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags22, align 8
  %LeaseFlags24 = getelementptr inbounds %struct.create_lease, ptr %rbuf, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %LeaseFlags24 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %LeaseFlags24, align 1
  %state25 = getelementptr inbounds %struct.lease, ptr %lease, i32 0, i32 1
  %23 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state25, align 8
  %LeaseState27 = getelementptr inbounds %struct.create_lease, ptr %rbuf, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %LeaseState27 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %LeaseState27, align 1
  %DataOffset29 = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 4
  %26 = ptrtoint ptr %DataOffset29 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 6144, ptr %DataOffset29, align 1
  %DataLength31 = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 5
  %27 = ptrtoint ptr %DataLength31 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 536870912, ptr %DataLength31, align 1
  %NameOffset33 = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 1
  %28 = ptrtoint ptr %NameOffset33 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 4096, ptr %NameOffset33, align 1
  %NameLength35 = getelementptr inbounds %struct.create_context, ptr %rbuf, i32 0, i32 2
  %29 = ptrtoint ptr %NameLength35 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 1024, ptr %NameLength35, align 1
  %Name36 = getelementptr inbounds %struct.create_lease, ptr %rbuf, i32 0, i32 1
  %30 = ptrtoint ptr %Name36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 82, ptr %Name36, align 1
  %arrayidx39 = getelementptr %struct.create_lease, ptr %rbuf, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 113, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr %struct.create_lease, ptr %rbuf, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 76, ptr %arrayidx41, align 1
  %arrayidx43 = getelementptr %struct.create_lease, ptr %rbuf, i32 0, i32 1, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx43.sink = phi ptr [ %arrayidx43, %if.else ], [ %arrayidx15, %if.then ]
  %33 = ptrtoint ptr %arrayidx43.sink to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 115, ptr %arrayidx43.sink, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parse_lease_state(ptr nocapture noundef readonly %open_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %CreateContextsOffset = getelementptr inbounds %struct.smb2_create_req, ptr %open_req, i32 0, i32 14
  %1 = ptrtoint ptr %CreateContextsOffset to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %CreateContextsOffset, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr = getelementptr i8, ptr %open_req, i32 %3
  br label %do.body

do.body:                                          ; preds = %if.then7.do.body_crit_edge, %if.end
  %cc.0 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr1, %if.then7.do.body_crit_edge ]
  %next.0 = phi i32 [ 0, %if.end ], [ %11, %if.then7.do.body_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %cc.0, i32 %next.0
  %NameLength = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 2
  %4 = ptrtoint ptr %NameLength to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %NameLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %5)
  %cmp.not = icmp eq i16 %5, 1024
  br i1 %cmp.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 1
  %6 = ptrtoint ptr %NameOffset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %NameOffset, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %conv
  %call5 = tail call i32 @strncmp(ptr noundef %add.ptr2, ptr noundef nonnull dereferenceable(5) @.str.23, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then12, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %do.body.if.then7_crit_edge
  %9 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr1, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %cmp9.not = icmp eq i32 %10, 0
  br i1 %cmp9.not, label %if.end40, label %if.then7.do.body_crit_edge

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then12:                                        ; preds = %lor.lhs.false
  %DataLength = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 5
  %12 = ptrtoint ptr %DataLength to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %DataLength, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 872415232, i32 %13)
  %cmp13 = icmp eq i32 %13, 872415232
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %lcontext = getelementptr inbounds %struct.create_lease_v2, ptr %add.ptr1, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %call7.i.i, ptr %lcontext, i32 16)
  %LeaseState = getelementptr inbounds %struct.lease_context_v2, ptr %lcontext, i32 0, i32 1
  %15 = ptrtoint ptr %LeaseState to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %LeaseState, align 1
  %req_state = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %req_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %req_state, align 8
  %LeaseFlags = getelementptr inbounds %struct.lease_context_v2, ptr %lcontext, i32 0, i32 2
  %18 = ptrtoint ptr %LeaseFlags to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %LeaseFlags, align 1
  %flags = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags, align 4
  %LeaseDuration = getelementptr inbounds %struct.lease_context_v2, ptr %lcontext, i32 0, i32 3
  %21 = ptrtoint ptr %LeaseDuration to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %LeaseDuration, align 1
  %duration = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %duration to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %duration, align 8
  %parent_lease_key = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 4
  %ParentLeaseKey = getelementptr inbounds %struct.lease_context_v2, ptr %lcontext, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %parent_lease_key, ptr %ParentLeaseKey, i32 16)
  %version = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %version, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %lcontext26 = getelementptr inbounds %struct.create_lease, ptr %add.ptr1, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %call7.i.i, ptr %lcontext26, i32 16)
  %LeaseState30 = getelementptr inbounds %struct.lease_context, ptr %lcontext26, i32 0, i32 1
  %27 = ptrtoint ptr %LeaseState30 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %LeaseState30, align 1
  %req_state31 = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %req_state31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %req_state31, align 8
  %LeaseFlags33 = getelementptr inbounds %struct.lease_context, ptr %lcontext26, i32 0, i32 2
  %30 = ptrtoint ptr %LeaseFlags33 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %LeaseFlags33, align 1
  %flags34 = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %flags34, align 4
  %LeaseDuration36 = getelementptr inbounds %struct.lease_context, ptr %lcontext26, i32 0, i32 3
  %33 = ptrtoint ptr %LeaseDuration36 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %LeaseDuration36, align 1
  %duration37 = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %duration37 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %duration37, align 8
  %version38 = getelementptr inbounds %struct.lease_ctx_info, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %version38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %version38, align 8
  br label %cleanup

if.end40:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.else, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end40 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.else ], [ %call7.i.i, %if.then15 ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_find_context_vals(ptr noundef readonly %open_req, ptr nocapture noundef readonly %tag) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %CreateContextsOffset = getelementptr inbounds %struct.smb2_create_req, ptr %open_req, i32 0, i32 14
  %0 = ptrtoint ptr %CreateContextsOffset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %CreateContextsOffset, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %open_req, i32 %2
  %CreateContextsLength = getelementptr inbounds %struct.smb2_create_req, ptr %open_req, i32 0, i32 15
  %3 = ptrtoint ptr %CreateContextsLength to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %CreateContextsLength, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %do.body

do.body:                                          ; preds = %if.end41.do.body_crit_edge, %entry
  %cc.0 = phi ptr [ %add.ptr, %entry ], [ %add.ptr1, %if.end41.do.body_crit_edge ]
  %next.0 = phi i32 [ 0, %entry ], [ %8, %if.end41.do.body_crit_edge ]
  %remain_len.0 = phi i32 [ %5, %entry ], [ %sub, %if.end41.do.body_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %cc.0, i32 %next.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %remain_len.0)
  %cmp = icmp ult i32 %remain_len.0, 16
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %do.body
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr1, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 1
  %9 = ptrtoint ptr %NameOffset to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 2
  %11 = ptrtoint ptr %NameLength to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %NameLength, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv2 = zext i16 %13 to i32
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 4
  %14 = ptrtoint ptr %DataOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %DataOffset, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv3 = zext i16 %16 to i32
  %DataLength = getelementptr inbounds %struct.create_context, ptr %add.ptr1, i32 0, i32 5
  %17 = ptrtoint ptr %DataLength to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %DataLength, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %remain_len.0. = select i1 %tobool.not, i32 %remain_len.0, i32 %8
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %remain_len.0, i32 %8)
  %cmp6 = icmp ult i32 %remain_len.0, %8
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %10)
  %cmp9.not = icmp ne i16 %10, 4096
  %or.cond81 = select i1 %or.cond, i1 true, i1 %cmp9.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp12 = icmp ult i16 %13, 4
  %or.cond82 = select i1 %or.cond81, i1 true, i1 %cmp12
  br i1 %or.cond82, label %if.end.cleanup_crit_edge, label %lor.lhs.false14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end
  %add = add nuw nsw i32 %conv2, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %remain_len.0.)
  %cmp15 = icmp ule i32 %add, %remain_len.0.
  %and18 = and i32 %conv3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  %or.cond83 = select i1 %cmp15, i1 %cmp19.not, i1 false
  br i1 %or.cond83, label %lor.lhs.false21, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool22.not = icmp ne i16 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp24 = icmp ugt i32 %add, %conv3
  %or.cond84 = select i1 %tobool22.not, i1 %cmp24, i1 false
  br i1 %or.cond84, label %lor.lhs.false21.cleanup_crit_edge, label %lor.lhs.false26

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %conv27 = zext i16 %16 to i64
  %conv28 = zext i32 %19 to i64
  %add29 = add nuw nsw i64 %conv28, %conv27
  %conv30 = zext i32 %remain_len.0. to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %conv30)
  %cmp31 = icmp ugt i64 %add29, %conv30
  br i1 %cmp31, label %lor.lhs.false26.cleanup_crit_edge, label %if.end35

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false26
  %add.ptr36 = getelementptr i8, ptr %add.ptr1, i32 16
  %bcmp = tail call i32 @bcmp(ptr %add.ptr36, ptr %tag, i32 %conv2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp38 = icmp eq i32 %bcmp, 0
  br i1 %cmp38, label %if.end35.cleanup_crit_edge, label %if.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %sub = sub i32 %remain_len.0, %8
  br i1 %tobool.not, label %if.end41.cleanup_crit_edge, label %if.end41.do.body_crit_edge

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %lor.lhs.false26.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr1, %if.end35.cleanup_crit_edge ], [ null, %if.end41.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false21.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false26.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false14.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @create_durable_rsp_buf(ptr nocapture noundef writeonly %cc) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cc, i32 0, i32 32)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 4
  %1 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6144, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 5
  %2 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 134217728, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 1
  %3 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1024, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_durable_rsp, ptr %cc, i32 0, i32 1
  %5 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 68, ptr %Name, align 1
  %arrayidx5 = getelementptr %struct.create_durable_rsp, ptr %cc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.create_durable_rsp, ptr %cc, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 110, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.create_durable_rsp, ptr %cc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %arrayidx9, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @create_durable_v2_rsp_buf(ptr nocapture noundef writeonly %cc, ptr nocapture noundef readonly %fp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cc, i32 0, i32 32)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 4
  %1 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6144, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 5
  %2 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 134217728, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 1
  %3 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1024, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_durable_v2_rsp, ptr %cc, i32 0, i32 1
  %5 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 68, ptr %Name, align 1
  %arrayidx5 = getelementptr %struct.create_durable_v2_rsp, ptr %cc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.create_durable_v2_rsp, ptr %cc, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 50, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.create_durable_v2_rsp, ptr %cc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %arrayidx9, align 1
  %durable_timeout = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 26
  %9 = ptrtoint ptr %durable_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %durable_timeout, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %Timeout = getelementptr inbounds %struct.create_durable_v2_rsp, ptr %cc, i32 0, i32 2
  %12 = ptrtoint ptr %Timeout to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %Timeout, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @create_mxac_rsp_buf(ptr nocapture noundef writeonly %cc, i32 noundef %maximal_access) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cc, i32 0, i32 24)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 4
  %1 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6144, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 5
  %2 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 134217728, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 1
  %3 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1024, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_mxac_rsp, ptr %cc, i32 0, i32 1
  %5 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 77, ptr %Name, align 1
  %arrayidx5 = getelementptr %struct.create_mxac_rsp, ptr %cc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 120, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.create_mxac_rsp, ptr %cc, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 65, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.create_mxac_rsp, ptr %cc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 99, ptr %arrayidx9, align 1
  %QueryStatus = getelementptr inbounds %struct.create_mxac_rsp, ptr %cc, i32 0, i32 2
  %9 = ptrtoint ptr %QueryStatus to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %QueryStatus, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %maximal_access)
  %MaximalAccess = getelementptr inbounds %struct.create_mxac_rsp, ptr %cc, i32 0, i32 3
  %11 = ptrtoint ptr %MaximalAccess to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %MaximalAccess, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @create_disk_id_rsp_buf(ptr nocapture noundef writeonly %cc, i64 noundef %file_id, i64 noundef %vol_id) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cc, i32 0, i32 56)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 4
  %1 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6144, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 5
  %2 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 536870912, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 1
  %3 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1024, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 1
  %5 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 81, ptr %Name, align 1
  %arrayidx5 = getelementptr %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 70, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 105, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 100, ptr %arrayidx9, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %file_id)
  %DiskFileId = getelementptr inbounds %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 2
  %10 = ptrtoint ptr %DiskFileId to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %DiskFileId, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %vol_id)
  %VolumeId = getelementptr inbounds %struct.create_disk_id_rsp, ptr %cc, i32 0, i32 3
  %12 = ptrtoint ptr %VolumeId to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %VolumeId, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @create_posix_rsp_buf(ptr noundef %cc, ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !157
  %8 = call ptr @memset(ptr %cc, i32 0, i32 84)
  %DataOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 4
  %9 = ptrtoint ptr %DataOffset to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 8192, ptr %DataOffset, align 1
  %DataLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 5
  %10 = ptrtoint ptr %DataLength to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 872415232, ptr %DataLength, align 1
  %NameOffset = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 1
  %11 = ptrtoint ptr %NameOffset to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 4096, ptr %NameOffset, align 1
  %NameLength = getelementptr inbounds %struct.create_context, ptr %cc, i32 0, i32 2
  %12 = ptrtoint ptr %NameLength to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 4096, ptr %NameLength, align 1
  %Name = getelementptr inbounds %struct.create_posix_rsp, ptr %cc, i32 0, i32 1
  %13 = ptrtoint ptr %Name to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -109, ptr %Name, align 1
  %arrayidx7 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -83, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 37, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 80, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -100, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -76, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 17, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -25, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -76, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 35, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -125, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -34, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -106, ptr %arrayidx29, align 1
  %arrayidx31 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -117, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 14
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -51, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 1, i32 15
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 124, ptr %arrayidx35, align 1
  %29 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %nlink = getelementptr inbounds %struct.create_posix_rsp, ptr %cc, i32 0, i32 2
  %33 = ptrtoint ptr %nlink to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %nlink, align 1
  %volatile_id = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 3
  %34 = ptrtoint ptr %volatile_id to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %volatile_id, align 8
  %conv = trunc i64 %35 to i32
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %reparse_tag = getelementptr inbounds %struct.create_posix_rsp, ptr %cc, i32 0, i32 3
  %37 = ptrtoint ptr %reparse_tag to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %reparse_tag, align 1
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 8
  %conv36 = zext i16 %39 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv36)
  %mode = getelementptr inbounds %struct.create_posix_rsp, ptr %cc, i32 0, i32 4
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %mode, align 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 53
  %44 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %47 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %7, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %45, %7
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %45, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %45, [1 x i32] %47) #16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %uid.0.i.i) #16
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  %.fca.0.insert48 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call39 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert48) #16
  %SidBuffer = getelementptr inbounds %struct.create_posix_rsp, ptr %cc, i32 0, i32 5
  tail call void @id_to_sid(i32 noundef %call39, i32 noundef 7, ptr noundef %SidBuffer) #16
  %48 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i81 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 53
  %50 = ptrtoint ptr %s_user_ns.i.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_user_ns.i.i81, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack.i82 = load i32, ptr %i_gid.i, align 8
  %53 = insertvalue [1 x i32] undef, i32 %.unpack.i82, 0
  %cmp.i.i.i84 = icmp eq ptr %51, %7
  %spec.select.i.i.i85 = or i1 %cmp.i.i.i.i, %cmp.i.i.i84
  br i1 %spec.select.i.i.i85, label %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i87

i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge: ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_gid_into_mnt.exit

if.end.i.i87:                                     ; preds = %i_uid_into_mnt.exit
  %cmp.i21.i.i86 = icmp eq ptr %51, @init_user_ns
  br i1 %cmp.i21.i.i86, label %if.end.i.i87.if.end7.i.i91_crit_edge, label %if.else.i.i89

if.end.i.i87.if.end7.i.i91_crit_edge:             ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i91

if.else.i.i89:                                    ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i88 = tail call i32 @from_kgid(ptr noundef %51, [1 x i32] %53) #16
  br label %if.end7.i.i91

if.end7.i.i91:                                    ; preds = %if.else.i.i89, %if.end.i.i87.if.end7.i.i91_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i88, %if.else.i.i89 ], [ %.unpack.i82, %if.end.i.i87.if.end7.i.i91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i90 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i90, label %if.end7.i.i91.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i93

if.end7.i.i91.i_gid_into_mnt.exit_crit_edge:      ; preds = %if.end7.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_gid_into_mnt.exit

if.end9.i.i93:                                    ; preds = %if.end7.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i92 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %gid.0.i.i) #16
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i93, %if.end7.i.i91.i_gid_into_mnt.exit_crit_edge, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i94 = phi i32 [ %call10.i.i92, %if.end9.i.i93 ], [ -1, %if.end7.i.i91.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i82, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i94, 0
  %call45 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #16
  %arrayidx47 = getelementptr %struct.create_posix_rsp, ptr %cc, i32 0, i32 5, i32 20
  tail call void @id_to_sid(i32 noundef %call45, i32 noundef 8, ptr noundef %arrayidx47) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @id_to_sid(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_lease_in_table(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %lease_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @lease_list_lock) #16
  %ClientGUID = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 24
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @lease_table_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @lease_table_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %lt.0 = getelementptr i8, ptr %.pn, i32 -24
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lt.0, ptr noundef dereferenceable(16) %ClientGUID, i32 16) #20
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

found:                                            ; preds = %for.body
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %found.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

found.rcu_read_lock.exit_crit_edge:               ; preds = %found
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %found
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %found.rcu_read_lock.exit_crit_edge
  %call6 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @lookup_lease_in_table.__warned, align 1
  br i1 %.b83, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @lookup_lease_in_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1670, ptr noundef nonnull @.str.15) #16
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %lease_list = getelementptr i8, ptr %.pn, i32 -8
  %5 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn82124 = load volatile ptr, ptr %lease_list, align 4
  %cmp24.not126 = icmp eq ptr %.pn82124, %lease_list
  br i1 %cmp24.not126, label %do.end.for.end65_crit_edge, label %do.end.for.body25_crit_edge

do.end.for.body25_crit_edge:                      ; preds = %do.end
  br label %for.body25

do.end.for.end65_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.body25:                                       ; preds = %for.inc55.for.body25_crit_edge, %do.end.for.body25_crit_edge
  %.pn82127 = phi ptr [ %.pn82, %for.inc55.for.body25_crit_edge ], [ %.pn82124, %do.end.for.body25_crit_edge ]
  %opinfo.0128 = getelementptr i8, ptr %.pn82127, i32 -72
  %refcount = getelementptr i8, ptr %.pn82127, i32 -28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %for.body25.for.inc55_crit_edge, label %if.end28

for.body25.for.inc55_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

if.end28:                                         ; preds = %for.body25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i95, label %if.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

if.end28.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %if.end28
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %if.end28.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %7 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i102 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %op_state = getelementptr i8, ptr %.pn82127, i32 -52
  %11 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op_state, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %12, label %if.end33 [
    i32 0, label %rcu_read_unlock.exit.op_next_crit_edge
    i32 2, label %rcu_read_unlock.exit.op_next_crit_edge139
  ]

rcu_read_unlock.exit.op_next_crit_edge139:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

rcu_read_unlock.exit.op_next_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

if.end33:                                         ; preds = %rcu_read_unlock.exit
  %o_lease = getelementptr i8, ptr %.pn82127, i32 -20
  %14 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %o_lease, align 4
  %state = getelementptr inbounds %struct.lease, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  %and = and i32 %17, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end33.op_next_crit_edge, label %if.end36

if.end33.op_next_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

if.end36:                                         ; preds = %if.end33
  %18 = ptrtoint ptr %opinfo.0128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opinfo.0128, align 8
  %ClientGUID.i = getelementptr inbounds %struct.ksmbd_conn, ptr %19, i32 0, i32 24
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ClientGUID, ptr noundef dereferenceable(16) %ClientGUID.i, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i104 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i104, label %land.lhs.true.i105, label %if.end36.op_next_crit_edge

if.end36.op_next_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

land.lhs.true.i105:                               ; preds = %if.end36
  %20 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %o_lease, align 4
  %bcmp6.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lease_key, ptr noundef dereferenceable(16) %21, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp6.i)
  %tobool3.not.i = icmp eq i32 %bcmp6.i, 0
  br i1 %tobool3.not.i, label %do.body42, label %land.lhs.true.i105.op_next_crit_edge

land.lhs.true.i105.op_next_crit_edge:             ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #18
  br label %op_next

do.body42:                                        ; preds = %land.lhs.true.i105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and43 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.cleanup_crit_edge, label %do.end48

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #19
  br label %cleanup

op_next:                                          ; preds = %land.lhs.true.i105.op_next_crit_edge, %if.end36.op_next_crit_edge, %if.end33.op_next_crit_edge, %rcu_read_unlock.exit.op_next_crit_edge, %rcu_read_unlock.exit.op_next_crit_edge139
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i106, label %if.end.i107, label %op_next.opinfo_put.exit_crit_edge

op_next.opinfo_put.exit_crit_edge:                ; preds = %op_next
  call void @__sanitizer_cov_trace_pc() #18
  br label %opinfo_put.exit

if.end.i107:                                      ; preds = %op_next
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr i8, ptr %.pn82127, i32 112
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %opinfo_put.exit

opinfo_put.exit:                                  ; preds = %if.end.i107, %op_next.opinfo_put.exit_crit_edge
  %24 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i84 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %add.i.i.i86 = add i32 %27, 1
  store volatile i32 %add.i.i.i86, ptr %preempt_count.i.i.i.i85, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i87, label %opinfo_put.exit.for.inc55_crit_edge, label %land.lhs.true.i90

opinfo_put.exit.for.inc55_crit_edge:              ; preds = %opinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

land.lhs.true.i90:                                ; preds = %opinfo_put.exit
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.for.inc55_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.for.inc55_crit_edge:            ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.for.inc55_crit_edge, label %if.then.i93

land.lhs.true2.i92.for.inc55_crit_edge:           ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #16
  br label %for.inc55

for.inc55:                                        ; preds = %if.then.i93, %land.lhs.true2.i92.for.inc55_crit_edge, %land.lhs.true.i90.for.inc55_crit_edge, %opinfo_put.exit.for.inc55_crit_edge, %for.body25.for.inc55_crit_edge
  %28 = ptrtoint ptr %.pn82127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn82 = load volatile ptr, ptr %.pn82127, align 4
  %cmp24.not = icmp eq ptr %.pn82, %lease_list
  br i1 %cmp24.not, label %for.inc55.for.end65_crit_edge, label %for.inc55.for.body25_crit_edge

for.inc55.for.body25_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body25

for.inc55.for.end65_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65

for.end65:                                        ; preds = %for.inc55.for.end65_crit_edge, %do.end.for.end65_crit_edge
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i108, label %for.end65.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true.i111

for.end65.rcu_read_unlock.exit118_crit_edge:      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

land.lhs.true.i111:                               ; preds = %for.end65
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #16
  br label %rcu_read_unlock.exit118

rcu_read_unlock.exit118:                          ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge, %for.end65.rcu_read_unlock.exit118_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %29 = tail call i32 @llvm.read_register.i32(metadata !130) #16
  %and.i.i.i.i.i115 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i117 = add i32 %32, -1
  store volatile i32 %sub.i.i.i117, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit118, %do.end48, %do.body42.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %rcu_read_unlock.exit118 ], [ %opinfo.0128, %do.end48 ], [ %opinfo.0128, %do.body42.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @lease_list_lock) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_check_durable_oplock(ptr noundef %fp, ptr noundef readonly %lctx, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @opinfo_get(ptr noundef %fp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.then29_crit_edge, label %if.then

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.then:                                          ; preds = %land.lhs.true
  %tobool2.not = icmp eq ptr %lctx, null
  br i1 %tobool2.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #19
  br label %if.then29

if.end:                                           ; preds = %if.then
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %o_lease, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %lctx, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #19
  br label %if.then29

if.end15:                                         ; preds = %if.end
  %tobool16.not = icmp eq ptr %name, null
  br i1 %tobool16.not, label %if.end15.if.then29_crit_edge, label %land.lhs.true17

if.end15.if.then29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

land.lhs.true17:                                  ; preds = %if.end15
  %filename = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 1
  %4 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filename, align 4
  %call18 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.then29_crit_edge, label %do.end23

land.lhs.true17.if.then29_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

do.end23:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %name) #19
  br label %if.then29

if.then29:                                        ; preds = %do.end23, %land.lhs.true17.if.then29_crit_edge, %if.end15.if.then29_crit_edge, %do.end12, %do.end, %land.lhs.true.if.then29_crit_edge
  %ret.0.ph = phi i32 [ 0, %land.lhs.true.if.then29_crit_edge ], [ -9, %do.end ], [ 0, %if.end15.if.then29_crit_edge ], [ 0, %land.lhs.true17.if.then29_crit_edge ], [ -22, %do.end23 ], [ -9, %do.end12 ]
  %refcount.i = getelementptr inbounds %struct.oplock_info, ptr %call, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.then29.if.end30_crit_edge

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr inbounds %struct.oplock_info, ptr %call, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @opinfo_free_rcu) #16
  br label %if.end30

if.end30:                                         ; preds = %if.end.i, %if.then29.if.end30_crit_edge, %entry.if.end30_crit_edge
  %ret.041 = phi i32 [ 0, %entry.if.end30_crit_edge ], [ %ret.0.ph, %if.then29.if.end30_crit_edge ], [ %ret.0.ph, %if.end.i ]
  ret i32 %ret.041
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oplock_break_pending(ptr noundef %opinfo, i32 noundef %req_op_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_break = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 6
  %call24 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %pending_break) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not25 = icmp eq i32 %call24, 0
  br i1 %tobool.not25, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %open_trunc = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 12
  %op_state = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 5
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  tail call void @__might_sleep(ptr noundef nonnull @.str.47, i32 noundef 73) #16
  %0 = ptrtoint ptr %pending_break to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_break, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.wait_on_bit.exit_crit_edge, label %if.end.i

while.body.wait_on_bit.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %pending_break, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %while.body.wait_on_bit.exit_crit_edge
  %2 = ptrtoint ptr %open_trunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %open_trunc, align 1
  %3 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %wait_on_bit.exit.return_crit_edge, label %if.else

wait_on_bit.exit.return_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %wait_on_bit.exit
  %5 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.else
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %req_op_level)
  %cmp4.not = icmp sgt i32 %8, %req_op_level
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.else.if.end6_crit_edge
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %pending_break) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %entry.while.end_crit_edge
  %is_lease7 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %9 = ptrtoint ptr %is_lease7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_lease7, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %while.end.return_crit_edge

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true9:                                   ; preds = %while.end
  %level10 = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %11 = ptrtoint ptr %level10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %req_op_level)
  %cmp11.not = icmp sgt i32 %12, %req_op_level
  br i1 %cmp11.not, label %land.lhs.true9.return_crit_edge, label %if.then12

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_break, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %pending_break, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_break, ptr %pending_break, i32 1, ptr elementtype(i32) %pending_break) #16, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !156
  tail call void @wake_up_bit(ptr noundef %pending_break, i32 noundef 0) #16
  br label %return

return:                                           ; preds = %if.then12, %land.lhs.true9.return_crit_edge, %while.end.return_crit_edge, %land.lhs.true.return_crit_edge, %wait_on_bit.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %land.lhs.true9.return_crit_edge ], [ 0, %while.end.return_crit_edge ], [ 1, %land.lhs.true.return_crit_edge ], [ -2, %wait_on_bit.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_alloc_work_struct() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_free_work_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_async_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb2_send_interim_resp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__smb2_lease_break_noti(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -100
  %request_buf = getelementptr i8, ptr %wk, i32 -88
  %0 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_buf, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 448) #22
  %response_buf.i = getelementptr i8, ptr %wk, i32 -84
  %5 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %response_buf.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %6 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #19
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #16
  %r_count = getelementptr inbounds %struct.ksmbd_conn, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count, ptr %r_count, i32 1, ptr elementtype(i32) %r_count) #16, !srcloc !149
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %response_sz.i = getelementptr i8, ptr %wk, i32 -32
  %8 = ptrtoint ptr %response_sz.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 448, ptr %response_sz.i, align 4
  %9 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %response_buf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 66)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %header_size = getelementptr inbounds %struct.smb_version_values, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %header_size, align 4
  %16 = load ptr, ptr %response_buf.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 -28095166, ptr %add.ptr.i, align 1
  %StructureSize = getelementptr i8, ptr %10, i32 8
  %19 = ptrtoint ptr %StructureSize to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 16384, ptr %StructureSize, align 1
  %CreditRequest = getelementptr i8, ptr %10, i32 18
  %20 = ptrtoint ptr %CreditRequest to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 0, ptr %CreditRequest, align 1
  %Command = getelementptr i8, ptr %10, i32 16
  %21 = ptrtoint ptr %Command to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 4608, ptr %Command, align 1
  %Flags = getelementptr i8, ptr %10, i32 20
  %22 = ptrtoint ptr %Flags to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 16777216, ptr %Flags, align 1
  %NextCommand = getelementptr i8, ptr %10, i32 24
  %23 = ptrtoint ptr %NextCommand to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %NextCommand, align 1
  %MessageId = getelementptr i8, ptr %10, i32 28
  %24 = ptrtoint ptr %MessageId to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 -1, ptr %MessageId, align 1
  %Id = getelementptr i8, ptr %10, i32 36
  %25 = call ptr @memset(ptr %Id, i32 0, i32 32)
  %26 = load ptr, ptr %response_buf.i, align 8
  %StructureSize15 = getelementptr i8, ptr %26, i32 68
  %27 = ptrtoint ptr %StructureSize15 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 11264, ptr %StructureSize15, align 1
  %epoch = getelementptr inbounds %struct.lease_break_info, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %epoch to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %epoch, align 4
  %Epoch = getelementptr i8, ptr %26, i32 70
  %30 = ptrtoint ptr %Epoch to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %Epoch, align 1
  %Flags16 = getelementptr i8, ptr %26, i32 72
  %31 = ptrtoint ptr %Flags16 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %Flags16, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %and17 = and i32 %33, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %spec.store.select = select i1 %tobool18.not, i32 0, i32 16777216
  %34 = ptrtoint ptr %Flags16 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %spec.store.select, ptr %Flags16, align 1
  %LeaseKey = getelementptr i8, ptr %26, i32 76
  %lease_key = getelementptr inbounds %struct.lease_break_info, ptr %1, i32 0, i32 3
  %35 = call ptr @memcpy(ptr %LeaseKey, ptr %lease_key, i32 16)
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %CurrentLeaseState = getelementptr i8, ptr %26, i32 92
  %38 = ptrtoint ptr %CurrentLeaseState to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %CurrentLeaseState, align 1
  %new_state = getelementptr inbounds %struct.lease_break_info, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %new_state, align 4
  %NewLeaseState = getelementptr i8, ptr %26, i32 96
  %41 = ptrtoint ptr %NewLeaseState to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %NewLeaseState, align 1
  %BreakReason = getelementptr i8, ptr %26, i32 100
  %42 = ptrtoint ptr %BreakReason to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %BreakReason, align 1
  %AccessMaskHint = getelementptr i8, ptr %26, i32 104
  %43 = ptrtoint ptr %AccessMaskHint to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %AccessMaskHint, align 1
  %ShareMaskHint = getelementptr i8, ptr %26, i32 108
  %44 = ptrtoint ptr %ShareMaskHint to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %ShareMaskHint, align 1
  %45 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %response_buf.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.i.i = add i32 %48, 44
  store i32 %add.i.i, ptr %46, align 4
  %call26 = tail call i32 @ksmbd_conn_write(ptr noundef %add.ptr) #16
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #16
  %r_count27 = getelementptr inbounds %struct.ksmbd_conn, ptr %3, i32 0, i32 14
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count27, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count27, i32 1, i32 3, i32 1) #16
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count27, ptr %r_count27, i32 1, ptr elementtype(i32) %r_count27) #16, !srcloc !149
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ksmbd_queue_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_break_ack(ptr noundef %opinfo) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 549) #16
  %op_state = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 5
  %0 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %if.then12 [
    i32 2, label %entry.if.end52_crit_edge
    i32 0, label %entry.if.end52_crit_edge101
  ]

entry.if.end52_crit_edge101:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %oplock_q = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then12
  %__ret13.0 = phi i32 [ 3500, %if.then12 ], [ %call41, %cleanup ]
  %call = call i32 @prepare_to_wait_event(ptr noundef %oplock_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %4 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_state, align 4
  %6 = and i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.0)
  %tobool25.not = icmp eq i32 %__ret13.0, 0
  %8 = select i1 %7, i1 %tobool25.not, i1 false
  %__ret13.1 = select i1 %8, i32 1, i32 %__ret13.0
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %lor.rhs30 [
    i32 2, label %for.cond.if.end44_crit_edge
    i32 0, label %for.cond.if.end44_crit_edge102
  ]

for.cond.if.end44_crit_edge102:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

for.cond.if.end44_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

lor.rhs30:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool31.not = icmp eq i32 %__ret13.1, 0
  br i1 %tobool31.not, label %if.end44.thread85, label %if.end37

if.end44.thread85:                                ; preds = %lor.rhs30
  call void @__sanitizer_cov_trace_pc() #18
  call void @finish_wait(ptr noundef %oplock_q, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.then47

if.end37:                                         ; preds = %lor.rhs30
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %cleanup, label %if.end44.thread82

if.end44.thread82:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end52

cleanup:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret13.1) #16
  br label %for.cond

if.end44:                                         ; preds = %for.cond.if.end44_crit_edge, %for.cond.if.end44_crit_edge102
  call void @finish_wait(ptr noundef %oplock_q, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool46.not = icmp eq i32 %__ret13.1, 0
  br i1 %tobool46.not, label %if.end44.if.then47_crit_edge, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.then47:                                        ; preds = %if.end44.if.then47_crit_edge, %if.end44.thread85
  %is_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 11
  %10 = ptrtoint ptr %is_lease to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lease, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool48.not = icmp eq i8 %11, 0
  br i1 %tobool48.not, label %if.then47.if.end50_crit_edge, label %if.then49

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  %o_lease = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 13
  %12 = ptrtoint ptr %o_lease to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %o_lease, align 4
  %state = getelementptr inbounds %struct.lease, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then47.if.end50_crit_edge
  %level = getelementptr inbounds %struct.oplock_info, ptr %opinfo, i32 0, i32 4
  %15 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %level, align 8
  %16 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %op_state, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %if.end44.if.end52_crit_edge, %if.end44.thread82, %entry.if.end52_crit_edge, %entry.if.end52_crit_edge101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__smb2_oplock_break_noti(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -100
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %request_buf = getelementptr i8, ptr %wk, i32 -88
  %2 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_buf, align 4
  %fid = getelementptr inbounds %struct.oplock_break_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fid, align 4
  %conv = sext i32 %5 to i64
  %call = tail call ptr @ksmbd_lookup_durable_fd(i64 noundef %conv) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %r_count = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count, ptr %r_count, i32 1, ptr elementtype(i32) %r_count) #16, !srcloc !149
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 448) #22
  %response_buf.i = getelementptr i8, ptr %wk, i32 -84
  %8 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %response_buf.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #19
  %r_count7 = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 14
  %call.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count7, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count7, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count7, ptr %r_count7, i32 1, ptr elementtype(i32) %r_count7) #16, !srcloc !149
  tail call void @ksmbd_fd_put(ptr noundef %add.ptr, ptr noundef nonnull %call) #16
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %response_sz.i = getelementptr i8, ptr %wk, i32 -32
  %10 = ptrtoint ptr %response_sz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 448, ptr %response_sz.i, align 4
  %11 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %response_buf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 66)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %header_size = getelementptr inbounds %struct.smb_version_values, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %header_size, align 4
  %18 = load ptr, ptr %response_buf.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %18, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -28095166, ptr %add.ptr.i, align 1
  %StructureSize = getelementptr i8, ptr %12, i32 8
  %21 = ptrtoint ptr %StructureSize to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 16384, ptr %StructureSize, align 1
  %CreditRequest = getelementptr i8, ptr %12, i32 18
  %22 = ptrtoint ptr %CreditRequest to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %CreditRequest, align 1
  %Command = getelementptr i8, ptr %12, i32 16
  %23 = ptrtoint ptr %Command to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 4608, ptr %Command, align 1
  %Flags = getelementptr i8, ptr %12, i32 20
  %24 = ptrtoint ptr %Flags to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 16777216, ptr %Flags, align 1
  %NextCommand = getelementptr i8, ptr %12, i32 24
  %25 = ptrtoint ptr %NextCommand to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %NextCommand, align 1
  %MessageId = getelementptr i8, ptr %12, i32 28
  %26 = ptrtoint ptr %MessageId to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 -1, ptr %MessageId, align 1
  %Id = getelementptr i8, ptr %12, i32 36
  %27 = call ptr @memset(ptr %Id, i32 0, i32 32)
  %28 = load ptr, ptr %response_buf.i, align 8
  %StructureSize14 = getelementptr i8, ptr %28, i32 68
  %29 = ptrtoint ptr %StructureSize14 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 6144, ptr %StructureSize14, align 1
  %open_trunc = getelementptr inbounds %struct.oplock_break_info, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %open_trunc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %open_trunc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end8.if.else_crit_edge

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %switch = icmp eq i32 %34, 8
  br i1 %switch, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true.if.end22_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end22_crit_edge ]
  %OplockLevel21 = getelementptr i8, ptr %28, i32 70
  %35 = ptrtoint ptr %OplockLevel21 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %OplockLevel21, align 1
  %Reserved = getelementptr i8, ptr %28, i32 71
  %36 = ptrtoint ptr %Reserved to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %Reserved, align 1
  %Reserved2 = getelementptr i8, ptr %28, i32 72
  %37 = ptrtoint ptr %Reserved2 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 0, ptr %Reserved2, align 1
  %persistent_id = getelementptr inbounds %struct.ksmbd_file, ptr %call, i32 0, i32 2
  %38 = ptrtoint ptr %persistent_id to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %persistent_id, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %PersistentFid = getelementptr i8, ptr %28, i32 76
  %41 = ptrtoint ptr %PersistentFid to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %PersistentFid, align 1
  %volatile_id = getelementptr inbounds %struct.ksmbd_file, ptr %call, i32 0, i32 3
  %42 = ptrtoint ptr %volatile_id to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %volatile_id, align 8
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %VolatileFid = getelementptr i8, ptr %28, i32 84
  %45 = ptrtoint ptr %VolatileFid to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %VolatileFid, align 1
  %46 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %response_buf.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add.i.i = add i32 %49, 24
  store i32 %add.i.i, ptr %47, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %50 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end22.do.end38_crit_edge, label %do.end29

if.end22.do.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %VolatileFid to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %VolatileFid, align 1
  %53 = ptrtoint ptr %PersistentFid to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %PersistentFid, align 1
  %OplockLevel33 = getelementptr i8, ptr %28, i32 70
  %55 = ptrtoint ptr %OplockLevel33 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %OplockLevel33, align 1
  %conv34 = zext i8 %56 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %52, i64 noundef %54, i32 noundef %conv34) #19
  br label %do.end38

do.end38:                                         ; preds = %do.end29, %if.end22.do.end38_crit_edge
  tail call void @ksmbd_fd_put(ptr noundef %add.ptr, ptr noundef nonnull %call) #16
  %call39 = tail call i32 @ksmbd_conn_write(ptr noundef %add.ptr) #16
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #16
  %r_count40 = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 14
  %call.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count40, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r_count40, i32 1, i32 3, i32 1) #16
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count40, ptr %r_count40, i32 1, ptr elementtype(i32) %r_count40) #16, !srcloc !149
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_lookup_durable_fd(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_fd_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !113, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/oplock.c", i32 141, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/oplock.c", i32 233, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @opinfo_write_to_read._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @opinfo_write_to_read._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ksmbd/oplock.c", i32 235, i32 4}
!11 = !{ptr @opinfo_write_to_read._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @opinfo_write_to_read._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ksmbd/oplock.c", i32 272, i32 3}
!15 = !{ptr @opinfo_write_to_none._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @opinfo_write_to_none._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @opinfo_write_to_none._entry.8, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../fs/ksmbd/oplock.c", i32 274, i32 4}
!19 = !{ptr @opinfo_write_to_none._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/oplock.c", i32 294, i32 3}
!22 = !{ptr @opinfo_read_to_none._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @opinfo_read_to_none._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @opinfo_read_to_none._entry.11, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/oplock.c", i32 296, i32 4}
!26 = !{ptr @opinfo_read_to_none._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ksmbd/oplock.c", i32 316, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lease_read_to_write._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @lease_read_to_write._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../fs/ksmbd/oplock.c", i32 945, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/oplock.c", i32 985, i32 2}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/oplock.c", i32 995, i32 4}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @find_same_lease_key._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @find_same_lease_key._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/ksmbd/oplock.c", i32 1253, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ksmbd/oplock.c", i32 1260, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @smb_break_all_levII_oplock._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @smb_break_all_levII_oplock._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ksmbd/oplock.c", i32 1265, i32 4}
!51 = !{ptr @smb_break_all_levII_oplock._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @smb_break_all_levII_oplock._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ksmbd/oplock.c", i32 1403, i32 21}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../fs/ksmbd/oplock.c", i32 1670, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ksmbd/oplock.c", i32 1683, i32 4}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @lookup_lease_in_table._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @lookup_lease_in_table._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ksmbd/oplock.c", i32 1706, i32 4}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smb2_check_durable_oplock._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @smb2_check_durable_oplock._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ksmbd/oplock.c", i32 1712, i32 4}
!69 = !{ptr @smb2_check_durable_oplock._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @smb2_check_durable_oplock._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ksmbd/oplock.c", i32 1717, i32 4}
!73 = !{ptr @smb2_check_durable_oplock._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @smb2_check_durable_oplock._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ksmbd/oplock.c", i32 20, i32 8}
!84 = !{ptr @lease_list_lock, !83, !"lease_list_lock", i1 false, i1 false}
!85 = !{ptr @lease_table_list, !86, !"lease_table_list", i1 false, i1 false}
!86 = !{!"../fs/ksmbd/oplock.c", i32 19, i32 8}
!87 = !{ptr @alloc_opinfo.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../fs/ksmbd/oplock.c", i32 49, i32 2}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @alloc_opinfo.__key.39, !91, !"__key", i1 false, i1 false}
!91 = !{!"../fs/ksmbd/oplock.c", i32 50, i32 2}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ksmbd/oplock.c", i32 341, i32 3}
!95 = !{ptr @lease_none_upgrade._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lease_none_upgrade._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ksmbd/oplock.c", i32 861, i32 2}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @oplock_break._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @oplock_break._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ksmbd/oplock.c", i32 918, i32 2}
!104 = !{ptr @oplock_break._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @oplock_break._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!108 = !{ptr @smb2_lease_break_noti.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/ksmbd/oplock.c", i32 826, i32 3}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ksmbd/oplock.c", i32 733, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__smb2_lease_break_noti._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @__smb2_lease_break_noti._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @smb2_oplock_break_noti.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../fs/ksmbd/oplock.c", i32 707, i32 3}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ksmbd/oplock.c", i32 625, i32 3}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__smb2_oplock_break_noti._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @__smb2_oplock_break_noti._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ksmbd/oplock.c", i32 664, i32 2}
!125 = !{ptr @__smb2_oplock_break_noti._entry.53, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @__smb2_oplock_break_noti._entry_ptr.55, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @add_lease_global_list.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../fs/ksmbd/oplock.c", i32 1047, i32 2}
!129 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2149559181}
!141 = !{i64 2148288201}
!142 = !{i64 773024, i64 773049, i64 773071, i64 773087, i64 773099, i64 773119, i64 773143, i64 773159, i64 773171}
!143 = !{i64 2148288389}
!144 = !{i64 2149559447}
!145 = !{i64 2148377234}
!146 = !{i64 2148291967, i64 2148291999, i64 2148292028, i64 2148292062, i64 2148292093, i64 2148292116}
!147 = !{i64 2148377463}
!148 = !{i8 0, i8 2}
!149 = !{i64 2148291247, i64 2148291273, i64 2148291302, i64 2148291336, i64 2148291367, i64 2148291390}
!150 = !{i64 2159114423}
!151 = !{i64 2148288782, i64 2148288808, i64 2148288837, i64 2148288871, i64 2148288902, i64 2148288925}
!152 = !{i64 2149584573}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2148385608}
!155 = !{i64 2148296027, i64 2148296059, i64 2148296088, i64 2148296122, i64 2148296153, i64 2148296176}
!156 = !{i64 2158988541}
!157 = !{i64 2152498195}
