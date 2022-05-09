; ModuleID = '/llk/IR_all_yes/fs/cifs/smb2misc.c_pt.bc'
source_filename = "../fs/cifs/smb2misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.smb2_transform_hdr = type <{ i32, [16 x i8], [16 x i8], i32, i16, i16, i64 }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.kuid_t = type { i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.smb2_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, i64, %union.anon.154, i64, [16 x i8] }
%union.anon.154 = type { i64 }
%struct.smb2_pdu = type <{ %struct.smb2_hdr, i16 }>
%struct.smb2_negotiate_rsp = type <{ %struct.smb2_hdr, i16, i16, i16, i16, [16 x i8], i32, i32, i32, i32, i64, i64, i16, i16, i32, [1 x i8] }>
%struct.smb2_err_rsp = type <{ %struct.smb2_hdr, i16, i16, i32, [1 x i8] }>
%struct.smb2_sess_setup_rsp = type <{ %struct.smb2_hdr, i16, i16, i16, i16, [1 x i8] }>
%struct.smb2_create_rsp = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, [1 x i8] }>
%struct.smb2_query_info_rsp = type <{ %struct.smb2_hdr, i16, i16, i32, [1 x i8] }>
%struct.smb2_read_rsp = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i32, i32, [1 x i8] }>
%struct.smb2_query_directory_rsp = type <{ %struct.smb2_hdr, i16, i16, i32, [1 x i8] }>
%struct.smb2_ioctl_rsp = type { %struct.smb2_hdr, i16, i16, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.smb2_change_notify_rsp = type <{ %struct.smb2_hdr, i16, i16, i32, [1 x i8] }>
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.126, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.126 = type { %struct.anon.128 }
%struct.anon.128 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifsInodeInfo = type { i8, %struct.list_head, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, i32, i32, i64, i64, i64, [16 x i8], ptr, %struct.inode, %struct.list_head, %struct.spinlock, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.129, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.130, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.131, ptr, %struct.address_space, %struct.list_head, %union.anon.132, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.130 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.132 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.smb2_oplock_break = type { %struct.smb2_hdr, i16, i8, i8, i32, i64, i64 }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.110, %struct.list_head, %struct.list_head, %union.anon.111 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { %struct.hlist_node }
%struct.smb2_lease_break = type <{ %struct.smb2_hdr, i16, i16, i32, [16 x i8], i32, i32, i32, i32, i32 }>
%struct.cifs_pending_open = type { %struct.list_head, ptr, [16 x i8], i32 }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.smb2_lease_break_work = type { %struct.work_struct, ptr, [16 x i8], i32 }
%struct.close_cancelled_open = type { %struct.cifs_fid, ptr, %struct.work_struct, i64, i16 }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.anon.155 = type { i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.kvec = type { ptr, i32 }

@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@smb2_check_message._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smb2_check_message = private unnamed_addr constant [19 x i8] c"smb2_check_message\00", align 1
@smb2_check_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smb2_check_message, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: no decryption - session id not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/cifs/smb2misc.c\00", [45 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr = internal global ptr @smb2_check_message._entry, section ".printk_index", align 4
@smb2_check_message._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.smb2_check_message, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Length less than SMB header size\0A\00", [49 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.6 = internal global ptr @smb2_check_message._entry.4, section ".printk_index", align 4
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@smb2_check_message._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.smb2_check_message, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: SMB length greater than maximum, mid=%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.10 = internal global ptr @smb2_check_message._entry.8, section ".printk_index", align 4
@smb2_check_message._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.smb2_check_message, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: Invalid structure size %u\0A\00", [56 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.14 = internal global ptr @smb2_check_message._entry.12, section ".printk_index", align 4
@smb2_check_message._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smb2_check_message, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CIFS: VFS: Invalid SMB2 command %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.18 = internal global ptr @smb2_check_message._entry.16, section ".printk_index", align 4
@smb2_rsp_struct_sizes = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 16640, i16 2304, i16 1024, i16 4096, i16 1024, i16 22784, i16 15360, i16 1024, i16 4352, i16 4352, i16 1024, i16 12544, i16 0, i16 1024, i16 2304, i16 2304, i16 2304, i16 512, i16 6144], [58 x i8] zeroinitializer }, align 32
@smb2_check_message._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.smb2_check_message, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: Invalid response size %u for command %d\0A\00", [42 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.22 = internal global ptr @smb2_check_message._entry.20, section ".printk_index", align 4
@smb2_check_message._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.smb2_check_message, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: Invalid response size %d for oplock break\0A\00", [40 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.26 = internal global ptr @smb2_check_message._entry.24, section ".printk_index", align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smb2_check_message._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_check_message.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @__func__.smb2_check_message, ptr @.str.2, ptr @.str.29, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CIFS: %s: Calculated size %u length %u mismatch mid %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@smb2_check_message.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smb2_check_message._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.smb2_check_message, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014CIFS: srv rsp too short, len %d not %d. cmd:%d mid:%llu\0A\00", [37 x i8] zeroinitializer }, align 32
@smb2_check_message._entry_ptr.32 = internal global ptr @smb2_check_message._entry.30, section ".printk_index", align 4
@smb2_get_data_area_len._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb2_get_data_area_len = private unnamed_addr constant [23 x i8] c"smb2_get_data_area_len\00", align 1
@smb2_get_data_area_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.smb2_get_data_area_len, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: no length check for command %d\0A\00", [51 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr = internal global ptr @smb2_get_data_area_len._entry, section ".printk_index", align 4
@smb2_get_data_area_len._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.smb2_get_data_area_len, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: offset %d too large, data area ignored\0A\00", [43 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.37 = internal global ptr @smb2_get_data_area_len._entry.35, section ".printk_index", align 4
@smb2_get_data_area_len._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.smb2_get_data_area_len, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: negative offset %d to data invalid ignore data area\0A\00", [62 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.41 = internal global ptr @smb2_get_data_area_len._entry.39, section ".printk_index", align 4
@smb2_get_data_area_len._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.smb2_get_data_area_len, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013CIFS: VFS: negative data length %d invalid, data area ignored\0A\00", [63 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.45 = internal global ptr @smb2_get_data_area_len._entry.43, section ".printk_index", align 4
@smb2_get_data_area_len._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.smb2_get_data_area_len, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: data area larger than 128K: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.49 = internal global ptr @smb2_get_data_area_len._entry.47, section ".printk_index", align 4
@smb2_calc_size._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_size.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smb2_calc_size\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: %s: SMB2 data length %d offset %d\0A\00", [55 x i8] zeroinitializer }, align 32
@smb2_calc_size._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: data area offset %d overlaps SMB2 header %d\0A\00", [38 x i8] zeroinitializer }, align 32
@smb2_calc_size._entry_ptr = internal global ptr @smb2_calc_size._entry, section ".printk_index", align 4
@smb2_calc_size._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_size.descriptor.55 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.50, ptr @.str.2, ptr @.str.56, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: SMB2 len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smb2_is_valid_oplock_break\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: Checking for oplock break\0A\00", [59 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break.descriptor.60 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.57, ptr @.str.2, ptr @.str.61, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: oplock level 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break.descriptor.63 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.57, ptr @.str.2, ptr @.str.64, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: file id match, oplock break\0A\00", [57 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_oplock_break.descriptor.66 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.57, ptr @.str.2, ptr @.str.67, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: No file id matched, oplock break ignored\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@smb2_cancelled_close_fid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb2_cancelled_close_fid = private unnamed_addr constant [25 x i8] c"smb2_cancelled_close_fid\00", align 1
@smb2_cancelled_close_fid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.smb2_cancelled_close_fid, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s Close unmatched open for MID:%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@smb2_cancelled_close_fid._entry_ptr = internal global ptr @smb2_cancelled_close_fid._entry, section ".printk_index", align 4
@smb2_cancelled_close_fid._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_cancelled_close_fid._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.smb2_cancelled_close_fid, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: %s Close interrupted close\0A\00", [55 x i8] zeroinitializer }, align 32
@smb2_cancelled_close_fid._entry_ptr.73 = internal global ptr @smb2_cancelled_close_fid._entry.71, section ".printk_index", align 4
@smb2_cancelled_close_fid._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_cancelled_close_fid._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.smb2_cancelled_close_fid, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s Close cancelled mid failed rc:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@smb2_cancelled_close_fid._entry_ptr.77 = internal global ptr @smb2_cancelled_close_fid._entry.75, section ".printk_index", align 4
@smb2_handle_cancelled_close._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_handle_cancelled_close.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smb2_handle_cancelled_close\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: %s: tc_count=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@smb2_handle_cancelled_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcon refcount is negative\00", [38 x i8] zeroinitializer }, align 32
@smb2_handle_cancelled_close._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_handle_cancelled_close.descriptor.82 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.78, ptr @.str.2, ptr @.str.83, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"CIFS: %s: \\\\%s tid=%u: tcon is closing, skipping async close retry of fid %llu %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb311_update_preauth_hash = private unnamed_addr constant [27 x i8] c"smb311_update_preauth_hash\00", align 1
@smb311_update_preauth_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @__func__.smb311_update_preauth_hash, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s: Could not init sha512 shash\0A\00", [50 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry_ptr = internal global ptr @smb311_update_preauth_hash._entry, section ".printk_index", align 4
@smb311_update_preauth_hash._rs.85 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.smb311_update_preauth_hash, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s: Could not update sha512 shash\0A\00", [48 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry_ptr.88 = internal global ptr @smb311_update_preauth_hash._entry.86, section ".printk_index", align 4
@smb311_update_preauth_hash._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.smb311_update_preauth_hash, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry_ptr.91 = internal global ptr @smb311_update_preauth_hash._entry.90, section ".printk_index", align 4
@smb311_update_preauth_hash._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.smb311_update_preauth_hash, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s: Could not finalize sha512 shash\0A\00", [46 x i8] zeroinitializer }, align 32
@smb311_update_preauth_hash._entry_ptr.95 = internal global ptr @smb311_update_preauth_hash._entry.93, section ".printk_index", align 4
@check_smb2_hdr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_smb2_hdr = private unnamed_addr constant [15 x i8] c"check_smb2_hdr\00", align 1
@check_smb2_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.check_smb2_hdr, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: Received Request not response\0A\00", [52 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry_ptr = internal global ptr @check_smb2_hdr._entry, section ".printk_index", align 4
@check_smb2_hdr._rs.97 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.check_smb2_hdr, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: Bad protocol string signature header %x\0A\00", [42 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry_ptr.100 = internal global ptr @check_smb2_hdr._entry.98, section ".printk_index", align 4
@check_smb2_hdr._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.check_smb2_hdr, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Mids do not match: %llu and %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry_ptr.104 = internal global ptr @check_smb2_hdr._entry.102, section ".printk_index", align 4
@check_smb2_hdr._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @__func__.check_smb2_hdr, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: Bad SMB detected. The Mid=%llu\0A\00", [51 x i8] zeroinitializer }, align 32
@check_smb2_hdr._entry_ptr.108 = internal global ptr @check_smb2_hdr._entry.106, section ".printk_index", align 4
@get_neg_ctxt_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_neg_ctxt_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014CIFS: Invalid negotiate context offset %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_neg_ctxt_len\00", [47 x i8] zeroinitializer }, align 32
@get_neg_ctxt_len._entry_ptr = internal global ptr @get_neg_ctxt_len._entry, section ".printk_index", align 4
@get_neg_ctxt_len._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_neg_ctxt_len.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: no SPNEGO security blob in negprot rsp\0A\00", [46 x i8] zeroinitializer }, align 32
@get_neg_ctxt_len.__already_done.112 = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_neg_ctxt_len._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.110, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014CIFS: negotiate context goes beyond end\0A\00", [53 x i8] zeroinitializer }, align 32
@get_neg_ctxt_len._entry_ptr.115 = internal global ptr @get_neg_ctxt_len._entry.113, section ".printk_index", align 4
@get_neg_ctxt_len._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_neg_ctxt_len.descriptor.117 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.110, ptr @.str.2, ptr @.str.118, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CIFS: %s: length of negcontexts %d pad %d\0A\00", [53 x i8] zeroinitializer }, align 32
@smb2_is_valid_lease_break._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_lease_break.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smb2_is_valid_lease_break\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: Checking for lease break\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_tcp_ses_list = external dso_local global %struct.list_head, align 4
@smb2_is_valid_lease_break.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&tcon->crfid.lease_break)\00", [52 x i8] zeroinitializer }, align 32
@cifsiod_wq = external dso_local local_unnamed_addr global ptr, align 4
@smb2_is_valid_lease_break._rs.122 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_is_valid_lease_break.descriptor.123 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.119, ptr @.str.2, ptr @.str.124, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CIFS: %s: Can not process lease break - no lease matched\0A\00", [38 x i8] zeroinitializer }, align 32
@smb2_tcon_has_lease._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_tcon_has_lease.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smb2_tcon_has_lease\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: found in the open list\0A\00", [62 x i8] zeroinitializer }, align 32
@smb2_tcon_has_lease._rs.127 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_tcon_has_lease.descriptor.128 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.125, ptr @.str.2, ptr @.str.129, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: lease key match, lease break 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@smb2_tcon_find_pending_open_lease._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_tcon_find_pending_open_lease.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smb2_tcon_find_pending_open_lease\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: found in the pending open list\0A\00", [54 x i8] zeroinitializer }, align 32
@smb2_tcon_find_pending_open_lease._rs.132 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_tcon_find_pending_open_lease.descriptor.133 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.130, ptr @.str.2, ptr @.str.129, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smb2_queue_pending_open_break.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&lw->lease_break)\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cifs_ses_oplock_break._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ses_oplock_break.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_ses_oplock_break\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: Lease release rc %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__smb2_handle_cancelled_cmd.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&cancelled->work)\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 9216, i64 11264]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 369098944]
@__sancov_gen_cov_switch_values.139 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 5, i64 8, i64 11, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 16, i64 6144, i64 11264]
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 163, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 179, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 184, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 193, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 200, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"smb2_rsp_struct_sizes\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 59, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 208, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 216, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 228, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 257, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 363, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 372, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 376, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 381, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 385, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 420, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 430, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 438, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 669, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 682, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 697, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 726, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 739, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 742, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 747, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 788, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 793, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 799, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 893, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 900, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 908, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 916, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 38, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 42, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 45, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 48, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 110, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 113, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 123, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 127, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 607, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 645, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 656, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 548, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 549, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 588, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 589, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 523, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 506, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.529 = private constant [22 x i8] c"../fs/cifs/smb2misc.c\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 776, i32 2 }
@llvm.compiler.used = appending global [157 x ptr] [ptr @check_smb2_hdr._entry, ptr @check_smb2_hdr._entry.102, ptr @check_smb2_hdr._entry.106, ptr @check_smb2_hdr._entry.98, ptr @check_smb2_hdr._entry_ptr, ptr @check_smb2_hdr._entry_ptr.100, ptr @check_smb2_hdr._entry_ptr.104, ptr @check_smb2_hdr._entry_ptr.108, ptr @get_neg_ctxt_len._entry, ptr @get_neg_ctxt_len._entry.113, ptr @get_neg_ctxt_len._entry_ptr, ptr @get_neg_ctxt_len._entry_ptr.115, ptr @smb2_calc_size._entry, ptr @smb2_calc_size._entry_ptr, ptr @smb2_cancelled_close_fid._entry, ptr @smb2_cancelled_close_fid._entry.71, ptr @smb2_cancelled_close_fid._entry.75, ptr @smb2_cancelled_close_fid._entry_ptr, ptr @smb2_cancelled_close_fid._entry_ptr.73, ptr @smb2_cancelled_close_fid._entry_ptr.77, ptr @smb2_check_message._entry, ptr @smb2_check_message._entry.12, ptr @smb2_check_message._entry.16, ptr @smb2_check_message._entry.20, ptr @smb2_check_message._entry.24, ptr @smb2_check_message._entry.30, ptr @smb2_check_message._entry.4, ptr @smb2_check_message._entry.8, ptr @smb2_check_message._entry_ptr, ptr @smb2_check_message._entry_ptr.10, ptr @smb2_check_message._entry_ptr.14, ptr @smb2_check_message._entry_ptr.18, ptr @smb2_check_message._entry_ptr.22, ptr @smb2_check_message._entry_ptr.26, ptr @smb2_check_message._entry_ptr.32, ptr @smb2_check_message._entry_ptr.6, ptr @smb2_get_data_area_len._entry, ptr @smb2_get_data_area_len._entry.35, ptr @smb2_get_data_area_len._entry.39, ptr @smb2_get_data_area_len._entry.43, ptr @smb2_get_data_area_len._entry.47, ptr @smb2_get_data_area_len._entry_ptr, ptr @smb2_get_data_area_len._entry_ptr.37, ptr @smb2_get_data_area_len._entry_ptr.41, ptr @smb2_get_data_area_len._entry_ptr.45, ptr @smb2_get_data_area_len._entry_ptr.49, ptr @smb311_update_preauth_hash._entry, ptr @smb311_update_preauth_hash._entry.86, ptr @smb311_update_preauth_hash._entry.90, ptr @smb311_update_preauth_hash._entry.93, ptr @smb311_update_preauth_hash._entry_ptr, ptr @smb311_update_preauth_hash._entry_ptr.88, ptr @smb311_update_preauth_hash._entry_ptr.91, ptr @smb311_update_preauth_hash._entry_ptr.95, ptr @smb2_check_message._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smb2_check_message._rs.3, ptr @.str.5, ptr @smb2_check_message._rs.7, ptr @.str.9, ptr @smb2_check_message._rs.11, ptr @.str.13, ptr @smb2_check_message._rs.15, ptr @.str.17, ptr @smb2_rsp_struct_sizes, ptr @smb2_check_message._rs.19, ptr @.str.21, ptr @smb2_check_message._rs.23, ptr @.str.25, ptr @smb2_check_message._rs.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @smb2_get_data_area_len._rs, ptr @.str.33, ptr @smb2_get_data_area_len._rs.34, ptr @.str.36, ptr @smb2_get_data_area_len._rs.38, ptr @.str.40, ptr @smb2_get_data_area_len._rs.42, ptr @.str.44, ptr @smb2_get_data_area_len._rs.46, ptr @.str.48, ptr @smb2_calc_size._rs, ptr @.str.50, ptr @.str.51, ptr @smb2_calc_size._rs.52, ptr @.str.53, ptr @smb2_calc_size._rs.54, ptr @.str.56, ptr @smb2_is_valid_oplock_break._rs, ptr @.str.57, ptr @.str.58, ptr @smb2_is_valid_oplock_break._rs.59, ptr @.str.61, ptr @smb2_is_valid_oplock_break._rs.62, ptr @.str.64, ptr @smb2_is_valid_oplock_break._rs.65, ptr @.str.67, ptr @.str.68, ptr @smb2_cancelled_close_fid._rs, ptr @.str.69, ptr @smb2_cancelled_close_fid._rs.70, ptr @.str.72, ptr @smb2_cancelled_close_fid._rs.74, ptr @.str.76, ptr @smb2_handle_cancelled_close._rs, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @smb2_handle_cancelled_close._rs.81, ptr @.str.83, ptr @smb311_update_preauth_hash._rs, ptr @.str.84, ptr @smb311_update_preauth_hash._rs.85, ptr @.str.87, ptr @smb311_update_preauth_hash._rs.89, ptr @smb311_update_preauth_hash._rs.92, ptr @.str.94, ptr @check_smb2_hdr._rs, ptr @.str.96, ptr @check_smb2_hdr._rs.97, ptr @.str.99, ptr @.str.103, ptr @check_smb2_hdr._rs.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @get_neg_ctxt_len._rs, ptr @.str.111, ptr @.str.114, ptr @get_neg_ctxt_len._rs.116, ptr @.str.118, ptr @smb2_is_valid_lease_break._rs, ptr @.str.119, ptr @.str.120, ptr @smb2_is_valid_lease_break.__key, ptr @.str.121, ptr @smb2_is_valid_lease_break._rs.122, ptr @.str.124, ptr @smb2_tcon_has_lease._rs, ptr @.str.125, ptr @.str.126, ptr @smb2_tcon_has_lease._rs.127, ptr @.str.129, ptr @smb2_tcon_find_pending_open_lease._rs, ptr @.str.130, ptr @.str.131, ptr @smb2_tcon_find_pending_open_lease._rs.132, ptr @smb2_queue_pending_open_break.__key, ptr @.str.134, ptr @cifs_ses_oplock_break._rs, ptr @.str.135, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_rsp_struct_sizes to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_message._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_oplock_break._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_oplock_break._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_oplock_break._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_oplock_break._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_cancelled_close_fid._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_handle_cancelled_close._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_handle_cancelled_close._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._rs.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_update_preauth_hash._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._rs.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb2_hdr._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_neg_ctxt_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_neg_ctxt_len._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_neg_ctxt_len._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_neg_ctxt_len._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_lease_break._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_lease_break.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_is_valid_lease_break._rs.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_tcon_has_lease._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_tcon_has_lease._rs.127 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_tcon_find_pending_open_lease._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_tcon_find_pending_open_lease._rs.132 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_queue_pending_open_break.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_oplock_break._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_check_message(ptr noundef %buf, i32 noundef %len, ptr noundef readonly %srvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44872382, i32 %1)
  %cmp = icmp eq i32 %1, -44872382
  br i1 %cmp, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %srvr, i32 0, i32 1
  %SessionId = getelementptr inbounds %struct.smb2_transform_hdr, ptr %buf, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %ses.0.in = phi ptr [ %smb_ses_list, %if.then ], [ %ses.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ses.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ses.0 = load ptr, ptr %ses.0.in, align 8
  %cmp3 = icmp eq ptr %ses.0, %smb_ses_list
  br i1 %cmp3, label %do.body15.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %ses.0, i32 0, i32 12
  %3 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %Suid, align 8
  %5 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %SessionId, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %cmp4 = icmp eq i64 %4, %7
  br i1 %cmp4, label %if.end25.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.body15.critedge:                               ; preds = %for.cond
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body15.critedge.cleanup278_crit_edge, label %do.end

do.body15.critedge.cleanup278_crit_edge:          ; preds = %do.body15.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end:                                           ; preds = %do.body15.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup278

if.end25.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end25.critedge, %entry.if.end27_crit_edge
  %MessageId = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 8
  %8 = ptrtoint ptr %MessageId to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %MessageId, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %len)
  %cmp28 = icmp ult i32 %len, 66
  br i1 %cmp28, label %if.then29, label %if.end49

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %len)
  %cmp30 = icmp ugt i32 %len, 63
  br i1 %cmp30, label %land.lhs.true, label %if.then29.do.body34_crit_edge

if.then29.do.body34_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

land.lhs.true:                                    ; preds = %if.then29
  %Status = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 3
  %11 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.not = icmp eq i32 %12, 0
  br i1 %cmp31.not, label %land.lhs.true.do.body34_crit_edge, label %if.then32

land.lhs.true.do.body34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %StructureSize2 = getelementptr inbounds %struct.smb2_pdu, ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %StructureSize2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %StructureSize2, align 1
  br label %cleanup278

do.body34:                                        ; preds = %land.lhs.true.do.body34_crit_edge, %if.then29.do.body34_crit_edge
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.3, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.cleanup278_crit_edge, label %do.end40

do.body34.cleanup278_crit_edge:                   ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup278

if.end49:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %14 = load i32, ptr @CIFSMaxBufSize, align 4
  %add = add i32 %14, 204
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp50 = icmp ult i32 %add, %len
  br i1 %cmp50, label %do.body53, label %if.end67

do.body53:                                        ; preds = %if.end49
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.7, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.cleanup278_crit_edge, label %do.end59

do.body53.cleanup278_crit_edge:                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %10) #12
  br label %cleanup278

if.end67:                                         ; preds = %if.end49
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28095166, i32 %16)
  %cmp.i = icmp eq i32 %16, -28095166
  br i1 %cmp.i, label %if.then.i, label %do.body24.i

if.then.i:                                        ; preds = %if.end67
  %Flags.i = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 6
  %17 = ptrtoint ptr %Flags.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %Flags.i, align 1
  %and.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i.if.end71_crit_edge

if.then.i.if.end71_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.else.i:                                        ; preds = %if.then.i
  %Command.i = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %Command.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %Command.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %20)
  %cmp3.i = icmp eq i16 %20, 4608
  br i1 %cmp3.i, label %if.else.i.if.end71_crit_edge, label %do.body7.i

if.else.i.if.end71_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.body7.i:                                       ; preds = %if.else.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_smb2_hdr._rs, ptr noundef nonnull @__func__.check_smb2_hdr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.body7.i.do.body61.i_crit_edge, label %do.end.i

do.body7.i.do.body61.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.i

do.end.i:                                         ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #12
  br label %do.body61.i

do.body24.i:                                      ; preds = %if.end67
  %call25.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_smb2_hdr._rs.97, ptr noundef nonnull @__func__.check_smb2_hdr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %do.body24.i.do.body61.i_crit_edge, label %do.end30.i

do.body24.i.do.body61.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.i

do.end30.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %buf, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %23) #12
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.end30.i, %do.body24.i.do.body61.i_crit_edge, %do.end.i, %do.body7.i.do.body61.i_crit_edge
  %call62.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_smb2_hdr._rs.105, ptr noundef nonnull @__func__.check_smb2_hdr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %do.body61.i.cleanup278_crit_edge, label %do.end67.i

do.body61.i.cleanup278_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end67.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i64 noundef %10) #12
  br label %cleanup278

if.end71:                                         ; preds = %if.else.i.if.end71_crit_edge, %if.then.i.if.end71_crit_edge
  %StructureSize = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %StructureSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %cmp72.not = icmp eq i16 %25, 16384
  br i1 %cmp72.not, label %if.end92, label %do.body76

do.body76:                                        ; preds = %if.end71
  %call77 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.11, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.body76.cleanup278_crit_edge, label %do.end82

do.body76.cleanup278_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %StructureSize, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv85 = zext i16 %28 to i32
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv85) #12
  br label %cleanup278

if.end92:                                         ; preds = %if.end71
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 4
  %29 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %Command, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv93 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %31)
  %cmp94 = icmp ugt i16 %31, 18
  br i1 %cmp94, label %do.body98, label %if.end112

do.body98:                                        ; preds = %if.end92
  %call99 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.15, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body98.cleanup278_crit_edge, label %do.end104

do.body98.cleanup278_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv93) #12
  br label %cleanup278

if.end112:                                        ; preds = %if.end92
  %arrayidx = getelementptr [19 x i16], ptr @smb2_rsp_struct_sizes, i32 0, i32 %conv93
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 2
  %StructureSize2114 = getelementptr inbounds %struct.smb2_pdu, ptr %buf, i32 0, i32 1
  %34 = ptrtoint ptr %StructureSize2114 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %StructureSize2114, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp116.not = icmp eq i16 %33, %35
  br i1 %cmp116.not, label %if.end112.if.end184_crit_edge, label %if.then118

if.end112.if.end184_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %30)
  %cond = icmp eq i16 %30, 4608
  %Status151 = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %Status151 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %Status151, align 1
  br i1 %cond, label %land.lhs.true150, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp123 = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %35)
  %cmp127.not = icmp eq i16 %35, 2304
  %or.cond = select i1 %cmp123, i1 %cmp127.not, i1 false
  br i1 %or.cond, label %land.lhs.true121.if.end184_crit_edge, label %do.body131

land.lhs.true121.if.end184_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.body131:                                       ; preds = %land.lhs.true121
  %call132 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.19, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.body131.cleanup278_crit_edge, label %do.end137

do.body131.cleanup278_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %StructureSize2114 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %StructureSize2114, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv140 = zext i16 %40 to i32
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv140, i32 noundef %conv93) #12
  br label %cleanup278

land.lhs.true150:                                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp152 = icmp eq i32 %37, 0
  br i1 %cmp152, label %land.lhs.true154, label %land.lhs.true150.if.end184_crit_edge

land.lhs.true150.if.end184_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

land.lhs.true154:                                 ; preds = %land.lhs.true150
  %41 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i16 %35, label %do.body166 [
    i16 11264, label %land.lhs.true154.if.end184_crit_edge
    i16 9216, label %land.lhs.true154.if.end184_crit_edge350
  ]

land.lhs.true154.if.end184_crit_edge350:          ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

land.lhs.true154.if.end184_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.body166:                                       ; preds = %land.lhs.true154
  %call167 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.23, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.body166.cleanup278_crit_edge, label %do.end172

do.body166.cleanup278_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %StructureSize2114 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %StructureSize2114, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv175 = zext i16 %44 to i32
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv175) #12
  br label %cleanup278

if.end184:                                        ; preds = %land.lhs.true154.if.end184_crit_edge, %land.lhs.true154.if.end184_crit_edge350, %land.lhs.true150.if.end184_crit_edge, %land.lhs.true121.if.end184_crit_edge, %if.end112.if.end184_crit_edge
  %call185 = tail call i32 @smb2_calc_size(ptr noundef %buf, ptr undef)
  %45 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp188 = icmp eq i16 %46, 0
  br i1 %cmp188, label %if.then190, label %if.end184.if.end193_crit_edge

if.end184.if.end193_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.then190:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %call191 = tail call fastcc i32 @get_neg_ctxt_len(ptr noundef %buf, i32 noundef %len, i32 noundef %call185)
  %add192 = add i32 %call191, %call185
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end184.if.end193_crit_edge
  %clc_len.0 = phi i32 [ %add192, %if.then190 ], [ %call185, %if.end184.if.end193_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %clc_len.0, i32 %len)
  %cmp194.not = icmp eq i32 %clc_len.0, %len
  br i1 %cmp194.not, label %if.end193.cleanup278_crit_edge, label %do.body198

if.end193.cleanup278_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

do.body198:                                       ; preds = %if.end193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool199.not = icmp eq i32 %and, 0
  br i1 %tobool199.not, label %do.body198.do.end220_crit_edge, label %do.body201

do.body198.do.end220_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end220

do.body201:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_check_message.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_check_message, %land.lhs.true208)) #9
          to label %do.end220 [label %land.lhs.true208], !srcloc !247

land.lhs.true208:                                 ; preds = %do.body201
  %call209 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_check_message._rs.27, ptr noundef nonnull @__func__.smb2_check_message) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %land.lhs.true208.do.end220_crit_edge, label %if.then211

land.lhs.true208.do.end220_crit_edge:             ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end220

if.then211:                                       ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_check_message.descriptor, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef %clc_len.0, i32 noundef %len, i64 noundef %10) #9
  br label %do.end220

do.end220:                                        ; preds = %if.then211, %land.lhs.true208.do.end220_crit_edge, %do.body201, %do.body198.do.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %30)
  %cmp221 = icmp eq i16 %30, 1280
  br i1 %cmp221, label %land.lhs.true223, label %do.end220.if.end228_crit_edge

do.end220.if.end228_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

land.lhs.true223:                                 ; preds = %do.end220
  %Status224 = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 3
  %48 = ptrtoint ptr %Status224 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %Status224, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 754974848, i32 %49)
  %cmp225 = icmp eq i32 %49, 754974848
  br i1 %cmp225, label %land.lhs.true223.cleanup278_crit_edge, label %land.lhs.true223.if.end228_crit_edge

land.lhs.true223.if.end228_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

land.lhs.true223.cleanup278_crit_edge:            ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

if.end228:                                        ; preds = %land.lhs.true223.if.end228_crit_edge, %do.end220.if.end228_crit_edge
  %add229 = add i32 %clc_len.0, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add229, i32 %len)
  %cmp230 = icmp eq i32 %add229, %len
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %30)
  %cmp233 = icmp eq i16 %30, 4608
  %or.cond343 = select i1 %cmp230, i1 %cmp233, i1 false
  %add237 = add i32 %len, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %clc_len.0, i32 %add237)
  %cmp238 = icmp eq i32 %clc_len.0, %add237
  %or.cond344 = select i1 %or.cond343, i1 true, i1 %cmp238
  br i1 %or.cond344, label %if.end228.cleanup278_crit_edge, label %if.end241

if.end228.cleanup278_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

if.end241:                                        ; preds = %if.end228
  %add242 = add i32 %clc_len.0, 7
  %and243 = and i32 %add242, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and243, i32 %len)
  %cmp244 = icmp eq i32 %and243, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %clc_len.0, i32 %len)
  %cmp248 = icmp ult i32 %clc_len.0, %len
  %or.cond345 = select i1 %cmp244, i1 true, i1 %cmp248
  br i1 %or.cond345, label %if.end241.cleanup278_crit_edge, label %land.end

if.end241.cleanup278_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

land.end:                                         ; preds = %if.end241
  %.b341 = load i1, ptr @smb2_check_message.__already_done, align 1
  br i1 %.b341, label %land.end.cleanup278_crit_edge, label %if.then263, !prof !248

land.end.cleanup278_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup278

if.then263:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb2_check_message.__already_done, align 1
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %len, i32 noundef %clc_len.0, i32 noundef %conv93, i64 noundef %10) #12
  br label %cleanup278

cleanup278:                                       ; preds = %if.then263, %land.end.cleanup278_crit_edge, %if.end241.cleanup278_crit_edge, %if.end228.cleanup278_crit_edge, %land.lhs.true223.cleanup278_crit_edge, %if.end193.cleanup278_crit_edge, %do.end172, %do.body166.cleanup278_crit_edge, %do.end137, %do.body131.cleanup278_crit_edge, %do.end104, %do.body98.cleanup278_crit_edge, %do.end82, %do.body76.cleanup278_crit_edge, %do.end67.i, %do.body61.i.cleanup278_crit_edge, %do.end59, %do.body53.cleanup278_crit_edge, %do.end40, %do.body34.cleanup278_crit_edge, %if.then32, %do.end, %do.body15.critedge.cleanup278_crit_edge
  %retval.1 = phi i32 [ 0, %if.then32 ], [ 1, %do.end ], [ 1, %do.body34.cleanup278_crit_edge ], [ 1, %do.end40 ], [ 1, %do.end59 ], [ 1, %do.body53.cleanup278_crit_edge ], [ 1, %do.end82 ], [ 1, %do.body76.cleanup278_crit_edge ], [ 1, %do.end104 ], [ 1, %do.body98.cleanup278_crit_edge ], [ 1, %do.end137 ], [ 1, %do.body131.cleanup278_crit_edge ], [ 1, %do.end172 ], [ 1, %do.body166.cleanup278_crit_edge ], [ 0, %land.lhs.true223.cleanup278_crit_edge ], [ 0, %if.end228.cleanup278_crit_edge ], [ 0, %if.end241.cleanup278_crit_edge ], [ 1, %if.then263 ], [ 1, %land.end.cleanup278_crit_edge ], [ 0, %if.end193.cleanup278_crit_edge ], [ 1, %do.body15.critedge.cleanup278_crit_edge ], [ 1, %do.body61.i.cleanup278_crit_edge ], [ 1, %do.end67.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_calc_size(ptr noundef %buf, ptr nocapture readnone %srvr) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %data_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_length) #9
  %1 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data_length, align 4, !annotation !249
  %StructureSize = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %StructureSize, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %StructureSize2 = getelementptr inbounds %struct.smb2_pdu, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %StructureSize2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %StructureSize2, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv1 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %Command, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %idxprom = zext i16 %10 to i32
  %11 = lshr i32 117027, %idxprom
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %entry.do.body49_crit_edge, label %if.end

entry.do.body49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end:                                           ; preds = %entry
  %call = call ptr @smb2_get_data_area_len(ptr noundef nonnull %offset, ptr noundef nonnull %data_length, ptr noundef %buf)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.end20_crit_edge, label %do.body7

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_calc_size.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_calc_size, %land.lhs.true)) #9
          to label %do.end20 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_size._rs, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end20_crit_edge, label %if.then14

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_length, align 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_calc_size.descriptor, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %17) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then14, %land.lhs.true.do.end20_crit_edge, %do.body7, %if.end.do.end20_crit_edge
  %18 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21 = icmp sgt i32 %19, 0
  br i1 %cmp21, label %if.then23, label %do.end20.do.body49_crit_edge

do.end20.do.body49_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.then23:                                        ; preds = %do.end20
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add24 = add i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %add)
  %cmp25 = icmp slt i32 %add24, %add
  br i1 %cmp25, label %do.body29, label %if.else44

do.body29:                                        ; preds = %if.then23
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_size._rs.52, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.do.body49_crit_edge, label %do.end35

do.body29.do.body49_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %add24, i32 noundef %add) #12
  br label %do.body49

if.else44:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %add45 = add i32 %21, %19
  br label %do.body49

do.body49:                                        ; preds = %if.else44, %do.end35, %do.body29.do.body49_crit_edge, %do.end20.do.body49_crit_edge, %entry.do.body49_crit_edge
  %len.0 = phi i32 [ %add, %entry.do.body49_crit_edge ], [ %add45, %if.else44 ], [ %add, %do.end20.do.body49_crit_edge ], [ %add, %do.end35 ], [ %add, %do.body29.do.body49_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and50 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end77_crit_edge, label %do.body53

do.body49.do.end77_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

do.body53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_calc_size.descriptor.55, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_calc_size, %land.lhs.true65)) #9
          to label %do.end77 [label %land.lhs.true65], !srcloc !247

land.lhs.true65:                                  ; preds = %do.body53
  %call66 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_size._rs.54, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.do.end77_crit_edge, label %if.then68

land.lhs.true65.do.end77_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

if.then68:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_calc_size.descriptor.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, i32 noundef %len.0) #9
  br label %do.end77

do.end77:                                         ; preds = %if.then68, %land.lhs.true65.do.end77_crit_edge, %do.body53, %do.body49.do.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_length) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_neg_ctxt_len(ptr nocapture noundef readonly %hdr, i32 noundef %len, i32 noundef %non_ctxlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %NegotiateContextCount = getelementptr inbounds %struct.smb2_negotiate_rsp, ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %NegotiateContextCount to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %NegotiateContextCount, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %DialectRevision = getelementptr inbounds %struct.smb2_negotiate_rsp, ptr %hdr, i32 0, i32 3
  %3 = ptrtoint ptr %DialectRevision to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %DialectRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4355, i16 %4)
  %cmp3.not = icmp eq i16 %4, 4355
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %NegotiateContextOffset = getelementptr inbounds %struct.smb2_negotiate_rsp, ptr %hdr, i32 0, i32 14
  %5 = ptrtoint ptr %NegotiateContextOffset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %NegotiateContextOffset, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %add = add i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %non_ctxlen)
  %cmp5 = icmp ult i32 %add, %non_ctxlen
  br i1 %cmp5, label %land.end, label %if.else

land.end:                                         ; preds = %if.end
  %.b153 = load i1, ptr @get_neg_ctxt_len.__already_done, align 1
  br i1 %.b153, label %land.end.cleanup_crit_edge, label %if.then13, !prof !248

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @get_neg_ctxt_len.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %7) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %non_ctxlen)
  %cmp23 = icmp eq i32 %add, %non_ctxlen
  br i1 %cmp23, label %do.body27, label %if.else52

do.body27:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body27.if.end61_crit_edge, label %do.body30

do.body27.if.end61_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.body30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_neg_ctxt_len.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_neg_ctxt_len, %land.lhs.true)) #9
          to label %if.end61 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body30
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @get_neg_ctxt_len._rs, ptr noundef nonnull @.str.110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end61_crit_edge, label %if.then42

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_neg_ctxt_len.descriptor, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.2) #9
  br label %if.end61

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %non_ctxlen)
  %cmp53 = icmp eq i32 %non_ctxlen, 193
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  %add56 = add i32 %7, -192
  br label %if.end61

if.else57:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  %sub58 = sub i32 %7, %non_ctxlen
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then55, %if.then42, %land.lhs.true.if.end61_crit_edge, %do.body30, %do.body27.if.end61_crit_edge
  %size_of_pad_before_neg_ctxts.0 = phi i32 [ %add56, %if.then55 ], [ %sub58, %if.else57 ], [ 0, %do.body27.if.end61_crit_edge ], [ 0, %land.lhs.true.if.end61_crit_edge ], [ 0, %if.then42 ], [ 0, %do.body30 ]
  %mul = shl nuw nsw i32 %conv, 3
  %add63 = add i32 %7, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %len)
  %cmp64 = icmp ugt i32 %add63, %len
  br i1 %cmp64, label %land.end74, label %do.body97

land.end74:                                       ; preds = %if.end61
  %.b151152 = load i1, ptr @get_neg_ctxt_len.__already_done.112, align 1
  br i1 %.b151152, label %land.end74.cleanup_crit_edge, label %if.then81, !prof !248

land.end74.cleanup_crit_edge:                     ; preds = %land.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %land.end74
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @get_neg_ctxt_len.__already_done.112, align 1
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #12
  br label %cleanup

do.body97:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and98 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end126_crit_edge, label %do.body101

do.body97.do.end126_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.body101:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_neg_ctxt_len.descriptor.117, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_neg_ctxt_len, %land.lhs.true113)) #9
          to label %do.end126 [label %land.lhs.true113], !srcloc !247

land.lhs.true113:                                 ; preds = %do.body101
  %call114 = tail call i32 @___ratelimit(ptr noundef nonnull @get_neg_ctxt_len._rs.116, ptr noundef nonnull @.str.110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true113.do.end126_crit_edge, label %if.then116

land.lhs.true113.do.end126_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

if.then116:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  %sub117 = sub i32 %len, %7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_neg_ctxt_len.descriptor.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.2, i32 noundef %sub117, i32 noundef %size_of_pad_before_neg_ctxts.0) #9
  br label %do.end126

do.end126:                                        ; preds = %if.then116, %land.lhs.true113.do.end126_crit_edge, %do.body101, %do.body97.do.end126_crit_edge
  %sub127 = sub i32 %len, %7
  %add128 = add i32 %sub127, %size_of_pad_before_neg_ctxts.0
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %if.then81, %land.end74.cleanup_crit_edge, %if.then13, %land.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add128, %do.end126 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %land.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_get_data_area_len(ptr nocapture noundef %off, ptr nocapture noundef %len, ptr noundef readonly %shdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %off, align 4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %len, align 4
  %Status = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 3
  %2 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %Status, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %3, label %land.lhs.true2 [
    i32 0, label %entry.if.end_crit_edge
    i32 369098944, label %entry.if.end_crit_edge168
  ]

entry.if.end_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %StructureSize = getelementptr inbounds %struct.smb2_err_rsp, ptr %shdr, i32 0, i32 1
  %5 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %StructureSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %6)
  %cmp3 = icmp eq i16 %6, 2304
  br i1 %cmp3, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge168
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 4
  %7 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %Command, align 1
  %conv5 = zext i16 %8 to i32
  %9 = tail call i32 @llvm.fshl.i32(i32 %conv5, i32 %conv5, i32 24)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %9, label %do.body27 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 5, label %sw.bb13
    i32 16, label %sw.bb14
    i32 8, label %sw.bb16
    i32 14, label %sw.bb18
    i32 11, label %sw.bb22
    i32 15, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %SecurityBufferOffset = getelementptr inbounds %struct.smb2_negotiate_rsp, ptr %shdr, i32 0, i32 12
  %11 = ptrtoint ptr %SecurityBufferOffset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %SecurityBufferOffset, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv6 = zext i16 %13 to i32
  %14 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv6, ptr %off, align 4
  %SecurityBufferLength = getelementptr inbounds %struct.smb2_negotiate_rsp, ptr %shdr, i32 0, i32 13
  %15 = ptrtoint ptr %SecurityBufferLength to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %SecurityBufferLength, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv7 = zext i16 %17 to i32
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv7, ptr %len, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %SecurityBufferOffset9 = getelementptr inbounds %struct.smb2_sess_setup_rsp, ptr %shdr, i32 0, i32 3
  %19 = ptrtoint ptr %SecurityBufferOffset9 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %SecurityBufferOffset9, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv10 = zext i16 %21 to i32
  %22 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %off, align 4
  %SecurityBufferLength11 = getelementptr inbounds %struct.smb2_sess_setup_rsp, ptr %shdr, i32 0, i32 4
  %23 = ptrtoint ptr %SecurityBufferLength11 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %SecurityBufferLength11, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv12 = zext i16 %25 to i32
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv12, ptr %len, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %CreateContextsOffset = getelementptr inbounds %struct.smb2_create_rsp, ptr %shdr, i32 0, i32 15
  %27 = ptrtoint ptr %CreateContextsOffset to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %CreateContextsOffset, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %off, align 4
  %CreateContextsLength = getelementptr inbounds %struct.smb2_create_rsp, ptr %shdr, i32 0, i32 16
  %31 = ptrtoint ptr %CreateContextsLength to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %CreateContextsLength, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %len, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %OutputBufferOffset = getelementptr inbounds %struct.smb2_query_info_rsp, ptr %shdr, i32 0, i32 2
  %35 = ptrtoint ptr %OutputBufferOffset to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %OutputBufferOffset, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv15 = zext i16 %37 to i32
  %38 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv15, ptr %off, align 4
  %OutputBufferLength = getelementptr inbounds %struct.smb2_query_info_rsp, ptr %shdr, i32 0, i32 3
  %39 = ptrtoint ptr %OutputBufferLength to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %OutputBufferLength, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %len, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %DataOffset = getelementptr inbounds %struct.smb2_read_rsp, ptr %shdr, i32 0, i32 2
  %43 = ptrtoint ptr %DataOffset to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %DataOffset, align 1
  %conv17 = zext i8 %44 to i32
  %45 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv17, ptr %off, align 4
  %DataLength = getelementptr inbounds %struct.smb2_read_rsp, ptr %shdr, i32 0, i32 4
  %46 = ptrtoint ptr %DataLength to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %DataLength, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %len, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %OutputBufferOffset19 = getelementptr inbounds %struct.smb2_query_directory_rsp, ptr %shdr, i32 0, i32 2
  %50 = ptrtoint ptr %OutputBufferOffset19 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %OutputBufferOffset19, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %conv20 = zext i16 %52 to i32
  %53 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv20, ptr %off, align 4
  %OutputBufferLength21 = getelementptr inbounds %struct.smb2_query_directory_rsp, ptr %shdr, i32 0, i32 3
  %54 = ptrtoint ptr %OutputBufferLength21 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %OutputBufferLength21, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %len, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %OutputOffset = getelementptr inbounds %struct.smb2_ioctl_rsp, ptr %shdr, i32 0, i32 8
  %58 = ptrtoint ptr %OutputOffset to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %OutputOffset, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %off, align 4
  %OutputCount = getelementptr inbounds %struct.smb2_ioctl_rsp, ptr %shdr, i32 0, i32 9
  %62 = ptrtoint ptr %OutputCount to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %OutputCount, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %len, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %OutputBufferOffset24 = getelementptr inbounds %struct.smb2_change_notify_rsp, ptr %shdr, i32 0, i32 2
  %66 = ptrtoint ptr %OutputBufferOffset24 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %OutputBufferOffset24, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %conv25 = zext i16 %68 to i32
  %69 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv25, ptr %off, align 4
  %OutputBufferLength26 = getelementptr inbounds %struct.smb2_change_notify_rsp, ptr %shdr, i32 0, i32 3
  %70 = ptrtoint ptr %OutputBufferLength26 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %OutputBufferLength26, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %len, align 4
  br label %sw.epilog

do.body27:                                        ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_data_area_len._rs, ptr noundef nonnull @__func__.smb2_get_data_area_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %do.body27.sw.epilog_crit_edge, label %do.end

do.body27.sw.epilog_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %Command, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %conv32 = zext i16 %76 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv32) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body27.sw.epilog_crit_edge, %sw.bb23, %sw.bb22, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb8, %sw.bb
  %77 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %78)
  %cmp37 = icmp sgt i32 %78, 4096
  br i1 %cmp37, label %do.body41, label %if.else

do.body41:                                        ; preds = %sw.epilog
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_data_area_len._rs.34, ptr noundef nonnull @__func__.smb2_get_data_area_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.if.end102.thread_crit_edge, label %do.end46

do.body41.if.end102.thread_crit_edge:             ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.thread

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %off, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %80) #12
  br label %if.end102.thread

if.end102.thread:                                 ; preds = %do.end46, %do.body41.if.end102.thread_crit_edge
  %81 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %len, align 4
  %82 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %off, align 4
  br label %return

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp52 = icmp slt i32 %78, 0
  br i1 %cmp52, label %do.body56, label %if.else67

do.body56:                                        ; preds = %if.else
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_data_area_len._rs.38, ptr noundef nonnull @__func__.smb2_get_data_area_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body56.do.end66_crit_edge, label %do.end61

do.body56.do.end66_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %off, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %84) #12
  br label %do.end66

do.end66:                                         ; preds = %do.end61, %do.body56.do.end66_crit_edge
  %85 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %off, align 4
  br label %if.end102.sink.split

if.else67:                                        ; preds = %if.else
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp68 = icmp slt i32 %87, 0
  br i1 %cmp68, label %do.body72, label %if.else83

do.body72:                                        ; preds = %if.else67
  %call73 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_data_area_len._rs.42, ptr noundef nonnull @__func__.smb2_get_data_area_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body72.if.end102.sink.split_crit_edge, label %do.end77

do.body72.if.end102.sink.split_crit_edge:         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.sink.split

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %89) #12
  br label %if.end102.sink.split

if.else83:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %87)
  %cmp84 = icmp ugt i32 %87, 131072
  br i1 %cmp84, label %do.body88, label %if.else83.if.end102_crit_edge

if.else83.if.end102_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.body88:                                        ; preds = %if.else83
  %call89 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_data_area_len._rs.46, ptr noundef nonnull @__func__.smb2_get_data_area_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body88.if.end102.sink.split_crit_edge, label %do.end93

do.body88.if.end102.sink.split_crit_edge:         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.sink.split

do.end93:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %91) #12
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %do.end93, %do.body88.if.end102.sink.split_crit_edge, %do.end77, %do.body72.if.end102.sink.split_crit_edge, %do.end66
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %len, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.else83.if.end102_crit_edge
  %93 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load i32, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp103.not = icmp eq i32 %.pr, 0
  br i1 %cmp103.not, label %if.end102.return_crit_edge, label %land.lhs.true105

if.end102.return_crit_edge:                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true105:                                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp106.not = icmp eq i32 %95, 0
  %add.ptr = getelementptr i8, ptr %shdr, i32 %.pr
  %spec.select = select i1 %cmp106.not, ptr null, ptr %add.ptr
  br label %return

return:                                           ; preds = %land.lhs.true105, %if.end102.return_crit_edge, %if.end102.thread, %land.lhs.true2.return_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true2.return_crit_edge ], [ null, %if.end102.return_crit_edge ], [ %spec.select, %land.lhs.true105 ], [ null, %if.end102.thread ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_convert_path_to_utf16(ptr noundef %from, ptr noundef %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !249
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %1 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mnt_cifs_flags, align 4
  %3 = ptrtoint ptr %from to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %from, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %4)
  %cmp = icmp eq i8 %4, 92
  br i1 %cmp, label %if.then8, label %if.else9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %from, i32 1
  br label %if.end23

if.else9:                                         ; preds = %entry
  %master_tlink.i = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 2
  %5 = ptrtoint ptr %master_tlink.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master_tlink.i, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.else9.if.end23_crit_edge, label %land.lhs.true

if.else9.if.end23_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else9
  %call11 = tail call ptr @cifs_sb_master_tcon(ptr noundef %cifs_sb) #9
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %call11, i32 0, i32 23
  %7 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %posix_extensions, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true14

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %from to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %from, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %10)
  %cmp17 = icmp eq i8 %10, 47
  %spec.select.idx = zext i1 %cmp17 to i32
  %spec.select = getelementptr i8, ptr %from, i32 %spec.select.idx
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true14, %land.lhs.true.if.end23_crit_edge, %if.else9.if.end23_crit_edge, %if.then8
  %start_of_path.0 = phi ptr [ %add.ptr, %if.then8 ], [ %from, %land.lhs.true.if.end23_crit_edge ], [ %from, %if.else9.if.end23_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  %and = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = lshr i32 %2, 4
  %11 = and i32 %and2, 2
  %map_type.0 = select i1 %tobool.not, i32 %11, i32 1
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %12 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %local_nls, align 4
  %call24 = call ptr @cifs_strndup_to_utf16(ptr noundef %start_of_path.0, i32 noundef 4096, ptr noundef nonnull %len, ptr noundef %13, i32 noundef %map_type.0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret ptr %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_strndup_to_utf16(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smb2_get_lease_state(ptr nocapture noundef readonly %cinode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oplock = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 6
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oplock, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 17, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mnt_cifs_flags, align 4
  %and1 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %lease.0 = phi i32 [ 67108864, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %and4 = shl i32 %1, 24
  %8 = and i32 %and4, 33554432
  %9 = or i32 %lease.0, %8
  %and10 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false12:                                  ; preds = %if.end
  %i_sb14 = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 17, i32 8
  %10 = ptrtoint ptr %i_sb14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb14, align 4
  %s_fs_info.i29 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i29, align 16
  %mnt_cifs_flags16 = getelementptr inbounds %struct.cifs_sb_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mnt_cifs_flags16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mnt_cifs_flags16, align 4
  %and17 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false12.if.end21_crit_edge, label %lor.lhs.false12.if.then19_crit_edge

lor.lhs.false12.if.then19_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false12.if.end21_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %lor.lhs.false12.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %or20 = or i32 %9, 16777216
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %lor.lhs.false12.if.end21_crit_edge
  %lease.2 = phi i32 [ %or20, %if.then19 ], [ %9, %lor.lhs.false12.if.end21_crit_edge ]
  ret i32 %lease.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smb2_is_valid_oplock_break(ptr nocapture noundef readonly %buffer, ptr noundef readonly %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_oplock_break.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_oplock_break, %land.lhs.true)) #9
          to label %do.end13 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_oplock_break._rs, ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_oplock_break.descriptor, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %buffer, i32 0, i32 4
  %1 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %2)
  %cmp.not = icmp eq i16 %2, 4608
  br i1 %cmp.not, label %if.end16, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end13
  %StructureSize = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 1
  %3 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %StructureSize, align 1
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.140)
  switch i16 %4, label %if.end16.cleanup_crit_edge [
    i16 6144, label %do.body31
    i16 11264, label %if.then26
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call fastcc zeroext i1 @smb2_is_valid_lease_break(ptr noundef %buffer)
  br label %cleanup

do.body31:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and32 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end60_crit_edge, label %do.body35

do.body31.do.end60_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

do.body35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_oplock_break.descriptor.60, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_oplock_break, %land.lhs.true47)) #9
          to label %do.end60 [label %land.lhs.true47], !srcloc !247

land.lhs.true47:                                  ; preds = %do.body35
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_oplock_break._rs.59, ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end60_crit_edge, label %if.then50

land.lhs.true47.do.end60_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  %OplockLevel = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 2
  %7 = ptrtoint ptr %OplockLevel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %OplockLevel, align 1
  %conv51 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_oplock_break.descriptor.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2, i32 noundef %conv51) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then50, %land.lhs.true47.do.end60_crit_edge, %do.body35, %do.body31.do.end60_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 1
  %9 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %ses.0260 = load ptr, ptr %smb_ses_list, align 8
  %cmp64.not261 = icmp eq ptr %ses.0260, %smb_ses_list
  br i1 %cmp64.not261, label %do.end60.for.end171_crit_edge, label %for.body.lr.ph

do.end60.for.end171_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end171

for.body.lr.ph:                                   ; preds = %do.end60
  %PersistentFid = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 5
  %VolatileFid = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 6
  br label %for.body

for.cond.loopexit:                                ; preds = %for.end.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %10 = ptrtoint ptr %ses.0262 to i32
  call void @__asan_load4_noabort(i32 %10)
  %ses.0 = load ptr, ptr %ses.0262, align 8
  %cmp64.not = icmp eq ptr %ses.0, %smb_ses_list
  br i1 %cmp64.not, label %for.cond.loopexit.for.end171_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.for.end171_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end171

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %ses.0262 = phi ptr [ %ses.0260, %for.body.lr.ph ], [ %ses.0, %for.cond.loopexit.for.body_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %ses.0262, i32 0, i32 2
  %11 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %tcon.0257 = load ptr, ptr %tcon_list, align 8
  %cmp75.not258 = icmp eq ptr %tcon.0257, %tcon_list
  br i1 %cmp75.not258, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body79_crit_edge

for.body.for.body79_crit_edge:                    ; preds = %for.body
  br label %for.body79

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body79:                                       ; preds = %for.end.for.body79_crit_edge, %for.body.for.body79_crit_edge
  %tcon.0259 = phi ptr [ %tcon.0, %for.end.for.body79_crit_edge ], [ %tcon.0257, %for.body.for.body79_crit_edge ]
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0259, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #9
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0259, i32 0, i32 5
  %12 = ptrtoint ptr %openFileList to i32
  call void @__asan_load4_noabort(i32 %12)
  %cfile.0254 = load ptr, ptr %openFileList, align 4
  %cmp86.not255 = icmp eq ptr %cfile.0254, %openFileList
  br i1 %cmp86.not255, label %for.body79.for.end_crit_edge, label %for.body90.lr.ph

for.body79.for.end_crit_edge:                     ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body90.lr.ph:                                 ; preds = %for.body79
  %13 = ptrtoint ptr %PersistentFid to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %PersistentFid, align 1
  br label %for.body90

for.body90:                                       ; preds = %for.inc.for.body90_crit_edge, %for.body90.lr.ph
  %cfile.0256 = phi ptr [ %cfile.0254, %for.body90.lr.ph ], [ %cfile.0, %for.inc.for.body90_crit_edge ]
  %persistent_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %persistent_fid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp91.not = icmp eq i64 %14, %16
  br i1 %cmp91.not, label %lor.lhs.false, label %for.body90.for.inc_crit_edge

for.body90.for.inc_crit_edge:                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body90
  %17 = ptrtoint ptr %VolatileFid to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %VolatileFid, align 1
  %volatile_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %volatile_fid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp94.not = icmp eq i64 %18, %20
  br i1 %cmp94.not, label %do.body99, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body99:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %21 = load i32, ptr @cifsFYI, align 4
  %and100 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.end127_crit_edge, label %do.body103

do.body99.do.end127_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

do.body103:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_oplock_break.descriptor.63, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_oplock_break, %land.lhs.true115)) #9
          to label %do.end127 [label %land.lhs.true115], !srcloc !247

land.lhs.true115:                                 ; preds = %do.body103
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_oplock_break._rs.62, ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.do.end127_crit_edge, label %if.then118

land.lhs.true115.do.end127_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

if.then118:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_oplock_break.descriptor.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2) #9
  br label %do.end127

do.end127:                                        ; preds = %if.then118, %land.lhs.true115.do.end127_crit_edge, %do.body103, %do.body99.do.end127_crit_edge
  %num_oplock_brks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0259, i32 0, i32 15, i32 0, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_oplock_brks, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_oplock_brks, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_oplock_brks, ptr %num_oplock_brks, i32 1, ptr elementtype(i32) %num_oplock_brks) #9, !srcloc !251
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 7
  %23 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i, align 8
  %file_info_lock = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %file_info_lock) #9
  %oplock = getelementptr i8, ptr %26, i32 -116
  %27 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oplock, align 4
  %and130 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %lor.lhs.false132, label %do.end127.if.else142_crit_edge

do.end127.if.else142_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else142

lor.lhs.false132:                                 ; preds = %do.end127
  %i_sb = getelementptr i8, ptr %26, i32 28
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mnt_cifs_flags, align 4
  %and134 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %land.lhs.true136, label %lor.lhs.false132.if.else142_crit_edge

lor.lhs.false132.if.else142_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else142

land.lhs.true136:                                 ; preds = %lor.lhs.false132
  %OplockLevel137 = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 2
  %35 = ptrtoint ptr %OplockLevel137 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %OplockLevel137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp139 = icmp eq i8 %36, 0
  br i1 %cmp139, label %if.then141, label %land.lhs.true136.if.else142_crit_edge

land.lhs.true136.if.else142_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else142

if.then141:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  %oplock_break_cancelled = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 10
  %37 = ptrtoint ptr %oplock_break_cancelled to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %oplock_break_cancelled, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %oplock_break_cancelled, align 4
  br label %if.end147

if.else142:                                       ; preds = %land.lhs.true136.if.else142_crit_edge, %lor.lhs.false132.if.else142_crit_edge, %do.end127.if.else142_crit_edge
  %oplock_break_cancelled143 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 10
  %38 = ptrtoint ptr %oplock_break_cancelled143 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load144 = load i8, ptr %oplock_break_cancelled143, align 4
  %bf.clear145 = and i8 %bf.load144, -33
  store i8 %bf.clear145, ptr %oplock_break_cancelled143, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else142, %if.then141
  %flags = getelementptr i8, ptr %26, i32 -108
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  %oplock_epoch = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 11
  %39 = ptrtoint ptr %oplock_epoch to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %oplock_epoch, align 8
  %OplockLevel148 = getelementptr inbounds %struct.smb2_oplock_break, ptr %buffer, i32 0, i32 2
  %40 = ptrtoint ptr %OplockLevel148 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %OplockLevel148, align 1
  %conv149 = zext i8 %41 to i32
  %oplock_level = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0256, i32 0, i32 12
  %42 = ptrtoint ptr %oplock_level to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv149, ptr %oplock_level, align 4
  tail call void @_raw_spin_unlock(ptr noundef %file_info_lock) #9
  tail call void @cifs_queue_oplock_break(ptr noundef %cfile.0256) #9
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body90.for.inc_crit_edge
  %43 = ptrtoint ptr %cfile.0256 to i32
  call void @__asan_load4_noabort(i32 %43)
  %cfile.0 = load ptr, ptr %cfile.0256, align 4
  %cmp86.not = icmp eq ptr %cfile.0, %openFileList
  br i1 %cmp86.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body90_crit_edge

for.inc.for.body90_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body79.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #9
  %44 = ptrtoint ptr %tcon.0259 to i32
  call void @__asan_load4_noabort(i32 %44)
  %tcon.0 = load ptr, ptr %tcon.0259, align 8
  %cmp75.not = icmp eq ptr %tcon.0, %tcon_list
  br i1 %cmp75.not, label %for.end.for.cond.loopexit_crit_edge, label %for.end.for.body79_crit_edge

for.end.for.body79_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.end.for.cond.loopexit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.end171:                                       ; preds = %for.cond.loopexit.for.end171_crit_edge, %do.end60.for.end171_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %45 = load i32, ptr @cifsFYI, align 4
  %and174 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %for.end171.cleanup_crit_edge, label %do.body177

for.end171.cleanup_crit_edge:                     ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body177:                                       ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_oplock_break.descriptor.66, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_oplock_break, %land.lhs.true189)) #9
          to label %cleanup [label %land.lhs.true189], !srcloc !247

land.lhs.true189:                                 ; preds = %do.body177
  %call190 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_oplock_break._rs.65, ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true189.cleanup_crit_edge, label %if.then192

land.lhs.true189.cleanup_crit_edge:               ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then192:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_oplock_break.descriptor.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then192, %land.lhs.true189.cleanup_crit_edge, %do.body177, %for.end171.cleanup_crit_edge, %if.end147, %if.then26, %if.end16.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i1 [ %call27, %if.then26 ], [ true, %if.end147 ], [ false, %do.end13.cleanup_crit_edge ], [ false, %if.end16.cleanup_crit_edge ], [ true, %for.end171.cleanup_crit_edge ], [ true, %land.lhs.true189.cleanup_crit_edge ], [ true, %if.then192 ], [ true, %do.body177 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smb2_is_valid_lease_break(ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_lease_break.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_lease_break, %land.lhs.true)) #9
          to label %do.end13 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_lease_break._rs, ptr noundef nonnull @.str.119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_lease_break.descriptor, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.2) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server.0200 = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not201 = icmp eq ptr %server.0200, @cifs_tcp_ses_list
  br i1 %cmp.not201, label %do.end13.for.end97_crit_edge, label %for.body.lr.ph

do.end13.for.end97_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end97

for.body.lr.ph:                                   ; preds = %do.end13
  %LeaseKey = getelementptr inbounds %struct.smb2_lease_break, ptr %buffer, i32 0, i32 4
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond20.loopexit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %server.0202 to i32
  call void @__asan_load4_noabort(i32 %1)
  %server.0 = load ptr, ptr %server.0202, align 4
  %cmp.not = icmp eq ptr %server.0, @cifs_tcp_ses_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end97_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.for.end97_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end97

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %server.0202 = phi ptr [ %server.0200, %for.body.lr.ph ], [ %server.0, %for.cond.loopexit.for.body_crit_edge ]
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0202, i32 0, i32 1
  %2 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %ses.0197 = load ptr, ptr %smb_ses_list, align 8
  %cmp23.not198 = icmp eq ptr %ses.0197, %smb_ses_list
  br i1 %cmp23.not198, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.cond20.loopexit:                              ; preds = %for.inc.for.cond20.loopexit_crit_edge, %for.body26.for.cond20.loopexit_crit_edge
  %3 = ptrtoint ptr %ses.0199 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ses.0 = load ptr, ptr %ses.0199, align 8
  %cmp23.not = icmp eq ptr %ses.0, %smb_ses_list
  br i1 %cmp23.not, label %for.cond20.loopexit.for.cond.loopexit_crit_edge, label %for.cond20.loopexit.for.body26_crit_edge

for.cond20.loopexit.for.body26_crit_edge:         ; preds = %for.cond20.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.cond20.loopexit.for.cond.loopexit_crit_edge:  ; preds = %for.cond20.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body26:                                       ; preds = %for.cond20.loopexit.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %ses.0199 = phi ptr [ %ses.0, %for.cond20.loopexit.for.body26_crit_edge ], [ %ses.0197, %for.body.for.body26_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %ses.0199, i32 0, i32 2
  %4 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tcon.0194 = load ptr, ptr %tcon_list, align 8
  %cmp34.not195 = icmp eq ptr %tcon.0194, %tcon_list
  br i1 %cmp34.not195, label %for.body26.for.cond20.loopexit_crit_edge, label %for.body26.for.body37_crit_edge

for.body26.for.body37_crit_edge:                  ; preds = %for.body26
  br label %for.body37

for.body26.for.cond20.loopexit_crit_edge:         ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.loopexit

for.body37:                                       ; preds = %for.inc.for.body37_crit_edge, %for.body26.for.body37_crit_edge
  %tcon.0196 = phi ptr [ %tcon.0, %for.inc.for.body37_crit_edge ], [ %tcon.0194, %for.body26.for.body37_crit_edge ]
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #9
  %num_oplock_brks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 15, i32 0, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_oplock_brks, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_oplock_brks, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_oplock_brks, ptr %num_oplock_brks, i32 1, ptr elementtype(i32) %num_oplock_brks) #9, !srcloc !251
  %call38 = tail call fastcc zeroext i1 @smb2_tcon_has_lease(ptr noundef %tcon.0196, ptr noundef %buffer)
  br i1 %call38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end41:                                         ; preds = %for.body37
  %call42 = tail call fastcc ptr @smb2_tcon_find_pending_open_lease(ptr noundef %tcon.0196, ptr noundef %buffer)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end51, label %if.then44

if.then44:                                        ; preds = %if.end41
  %tlink45 = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 1
  %6 = ptrtoint ptr %tlink45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlink45, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %if.then44.cifs_get_tlink.exit_crit_edge, label %if.then.i

if.then44.cifs_get_tlink.exit_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_get_tlink.exit

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %tl_count.i = getelementptr inbounds %struct.tcon_link, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tl_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tl_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tl_count.i, ptr %tl_count.i, i32 1, ptr elementtype(i32) %tl_count.i) #9, !srcloc !251
  br label %cifs_get_tlink.exit

cifs_get_tlink.exit:                              ; preds = %if.then.i, %if.then44.cifs_get_tlink.exit_crit_edge
  %lease_key47 = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2
  %9 = ptrtoint ptr %lease_key47 to i32
  call void @__asan_load1_noabort(i32 %9)
  %lease_key.sroa.0.0.copyload = load i8, ptr %lease_key47, align 4
  %lease_key.sroa.5.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %lease_key.sroa.5.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %lease_key.sroa.5.0.copyload = load i8, ptr %lease_key.sroa.5.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.6.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %lease_key.sroa.6.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %lease_key.sroa.6.0.copyload = load i8, ptr %lease_key.sroa.6.0.lease_key47.sroa_idx, align 2
  %lease_key.sroa.7.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %lease_key.sroa.7.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %lease_key.sroa.7.0.copyload = load i8, ptr %lease_key.sroa.7.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.8.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %lease_key.sroa.8.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %lease_key.sroa.8.0.copyload = load i8, ptr %lease_key.sroa.8.0.lease_key47.sroa_idx, align 4
  %lease_key.sroa.9.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %lease_key.sroa.9.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %lease_key.sroa.9.0.copyload = load i8, ptr %lease_key.sroa.9.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.10.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %lease_key.sroa.10.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %lease_key.sroa.10.0.copyload = load i8, ptr %lease_key.sroa.10.0.lease_key47.sroa_idx, align 2
  %lease_key.sroa.11.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %lease_key.sroa.11.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %lease_key.sroa.11.0.copyload = load i8, ptr %lease_key.sroa.11.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.12.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %lease_key.sroa.12.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %lease_key.sroa.12.0.copyload = load i8, ptr %lease_key.sroa.12.0.lease_key47.sroa_idx, align 4
  %lease_key.sroa.13.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %lease_key.sroa.13.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %lease_key.sroa.13.0.copyload = load i8, ptr %lease_key.sroa.13.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.14.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 10
  %19 = ptrtoint ptr %lease_key.sroa.14.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %lease_key.sroa.14.0.copyload = load i8, ptr %lease_key.sroa.14.0.lease_key47.sroa_idx, align 2
  %lease_key.sroa.15.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %lease_key.sroa.15.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %lease_key.sroa.15.0.copyload = load i8, ptr %lease_key.sroa.15.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.16.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %lease_key.sroa.16.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %lease_key.sroa.16.0.copyload = load i8, ptr %lease_key.sroa.16.0.lease_key47.sroa_idx, align 4
  %lease_key.sroa.17.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 13
  %22 = ptrtoint ptr %lease_key.sroa.17.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %lease_key.sroa.17.0.copyload = load i8, ptr %lease_key.sroa.17.0.lease_key47.sroa_idx, align 1
  %lease_key.sroa.18.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 14
  %23 = ptrtoint ptr %lease_key.sroa.18.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %lease_key.sroa.18.0.copyload = load i8, ptr %lease_key.sroa.18.0.lease_key47.sroa_idx, align 2
  %lease_key.sroa.19.0.lease_key47.sroa_idx = getelementptr inbounds %struct.cifs_pending_open, ptr %call42, i32 0, i32 2, i32 15
  %24 = ptrtoint ptr %lease_key.sroa.19.0.lease_key47.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %lease_key.sroa.19.0.copyload = load i8, ptr %lease_key.sroa.19.0.lease_key47.sroa_idx, align 1
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %NewLeaseState = getelementptr inbounds %struct.smb2_lease_break, ptr %buffer, i32 0, i32 6
  %25 = ptrtoint ptr %NewLeaseState to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %NewLeaseState, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 68) #13
  %tobool.not.i163 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i163, label %if.then.i164, label %do.body.i

if.then.i164:                                     ; preds = %cifs_get_tlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cifs_put_tlink(ptr noundef %7) #9
  br label %cleanup

do.body.i:                                        ; preds = %cifs_get_tlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.134, ptr noundef nonnull @smb2_queue_pending_open_break.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cifs_ses_oplock_break, ptr %func.i, align 4
  %tlink6.i = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %tlink6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %7, ptr %tlink6.i, align 4
  %lease_state.i = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %lease_state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %lease_state.i, align 8
  %lease_key7.i = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %lease_key7.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %lease_key.sroa.0.0.copyload, ptr %lease_key7.i, align 8
  %lease_key.sroa.5.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %lease_key.sroa.5.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %lease_key.sroa.5.0.copyload, ptr %lease_key.sroa.5.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.6.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %lease_key.sroa.6.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %lease_key.sroa.6.0.copyload, ptr %lease_key.sroa.6.0.lease_key7.i.sroa_idx, align 2
  %lease_key.sroa.7.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %lease_key.sroa.7.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %lease_key.sroa.7.0.copyload, ptr %lease_key.sroa.7.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.8.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %lease_key.sroa.8.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %lease_key.sroa.8.0.copyload, ptr %lease_key.sroa.8.0.lease_key7.i.sroa_idx, align 4
  %lease_key.sroa.9.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %lease_key.sroa.9.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %lease_key.sroa.9.0.copyload, ptr %lease_key.sroa.9.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.10.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 6
  %40 = ptrtoint ptr %lease_key.sroa.10.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %lease_key.sroa.10.0.copyload, ptr %lease_key.sroa.10.0.lease_key7.i.sroa_idx, align 2
  %lease_key.sroa.11.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 7
  %41 = ptrtoint ptr %lease_key.sroa.11.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %lease_key.sroa.11.0.copyload, ptr %lease_key.sroa.11.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.12.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 8
  %42 = ptrtoint ptr %lease_key.sroa.12.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %lease_key.sroa.12.0.copyload, ptr %lease_key.sroa.12.0.lease_key7.i.sroa_idx, align 8
  %lease_key.sroa.13.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 9
  %43 = ptrtoint ptr %lease_key.sroa.13.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %lease_key.sroa.13.0.copyload, ptr %lease_key.sroa.13.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.14.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 10
  %44 = ptrtoint ptr %lease_key.sroa.14.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %lease_key.sroa.14.0.copyload, ptr %lease_key.sroa.14.0.lease_key7.i.sroa_idx, align 2
  %lease_key.sroa.15.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 11
  %45 = ptrtoint ptr %lease_key.sroa.15.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %lease_key.sroa.15.0.copyload, ptr %lease_key.sroa.15.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.16.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 12
  %46 = ptrtoint ptr %lease_key.sroa.16.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %lease_key.sroa.16.0.copyload, ptr %lease_key.sroa.16.0.lease_key7.i.sroa_idx, align 4
  %lease_key.sroa.17.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 13
  %47 = ptrtoint ptr %lease_key.sroa.17.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %lease_key.sroa.17.0.copyload, ptr %lease_key.sroa.17.0.lease_key7.i.sroa_idx, align 1
  %lease_key.sroa.18.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 14
  %48 = ptrtoint ptr %lease_key.sroa.18.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %lease_key.sroa.18.0.copyload, ptr %lease_key.sroa.18.0.lease_key7.i.sroa_idx, align 2
  %lease_key.sroa.19.0.lease_key7.i.sroa_idx = getelementptr inbounds %struct.smb2_lease_break_work, ptr %call7.i.i, i32 0, i32 2, i32 15
  %49 = ptrtoint ptr %lease_key.sroa.19.0.lease_key7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %lease_key.sroa.19.0.copyload, ptr %lease_key.sroa.19.0.lease_key7.i.sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsiod_wq to i32))
  %50 = load ptr, ptr @cifsiod_wq, align 4
  %call.i.i165 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #9
  %crfid = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43
  %51 = ptrtoint ptr %crfid to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %crfid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end51.for.inc_crit_edge, label %land.lhs.true53

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true53:                                  ; preds = %if.end51
  %fid = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 3
  %52 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fid, align 4
  %lease_key56 = getelementptr inbounds %struct.cifs_fid, ptr %53, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %LeaseKey, ptr noundef dereferenceable(16) %lease_key56, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool59.not = icmp eq i32 %bcmp, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true53.for.inc_crit_edge

land.lhs.true53.for.inc_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then60:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  %time = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 1
  %54 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %time, align 4
  %lease_break = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 7
  tail call void @__init_work(ptr noundef %lease_break, i32 noundef 0) #9
  %55 = ptrtoint ptr %lease_break to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %lease_break, align 4
  %lockdep_map = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.121, ptr noundef nonnull @smb2_is_valid_lease_break.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry70 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 7, i32 1
  %56 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 7, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry70, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0196, i32 0, i32 43, i32 7, i32 2
  %58 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @smb2_cached_lease_break, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsiod_wq to i32))
  %59 = load ptr, ptr @cifsiod_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %lease_break) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true53.for.inc_crit_edge, %if.end51.for.inc_crit_edge
  %60 = ptrtoint ptr %tcon.0196 to i32
  call void @__asan_load4_noabort(i32 %60)
  %tcon.0 = load ptr, ptr %tcon.0196, align 8
  %cmp34.not = icmp eq ptr %tcon.0, %tcon_list
  br i1 %cmp34.not, label %for.inc.for.cond20.loopexit_crit_edge, label %for.inc.for.body37_crit_edge

for.inc.for.body37_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

for.inc.for.cond20.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.loopexit

for.end97:                                        ; preds = %for.cond.loopexit.for.end97_crit_edge, %do.end13.for.end97_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %61 = load i32, ptr @cifsFYI, align 4
  %and100 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %for.end97.cleanup_crit_edge, label %do.body103

for.end97.cleanup_crit_edge:                      ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body103:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_is_valid_lease_break.descriptor.123, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_is_valid_lease_break, %land.lhs.true115)) #9
          to label %cleanup [label %land.lhs.true115], !srcloc !247

land.lhs.true115:                                 ; preds = %do.body103
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_is_valid_lease_break._rs.122, ptr noundef nonnull @.str.119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.cleanup_crit_edge, label %if.then118

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then118:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_is_valid_lease_break.descriptor.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %land.lhs.true115.cleanup_crit_edge, %do.body103, %for.end97.cleanup_crit_edge, %if.then60, %do.body.i, %if.then.i164, %if.then39
  %cmp.not193 = phi i1 [ false, %do.body103 ], [ true, %do.body.i ], [ true, %if.then.i164 ], [ false, %if.then118 ], [ false, %land.lhs.true115.cleanup_crit_edge ], [ false, %for.end97.cleanup_crit_edge ], [ true, %if.then60 ], [ true, %if.then39 ]
  ret i1 %cmp.not193
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_queue_oplock_break(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb2_cancelled_close_fid(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %tcon1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon1, align 8
  %mid = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %do.body20, label %do.body2

do.body2:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_cancelled_close_fid._rs, ptr noundef nonnull @__func__.smb2_cancelled_close_fid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %do.body2.if.end44_crit_edge, label %do.end

do.body2.if.end44_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %tobool3.not = icmp eq ptr %1, null
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %1, i32 0, i32 8
  %tobool4.not = icmp eq ptr %treeName, null
  %4 = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  %tn.0 = select i1 %4, ptr @.str.68, ptr %treeName
  %5 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %mid, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull %tn.0, i64 noundef %6) #12
  br label %if.end44

do.body20:                                        ; preds = %entry
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_cancelled_close_fid._rs.70, ptr noundef nonnull @__func__.smb2_cancelled_close_fid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body20.if.end44_crit_edge, label %do.end36

do.body20.if.end44_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end36:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %tobool22.not = icmp eq ptr %1, null
  %treeName24 = getelementptr inbounds %struct.cifs_tcon, ptr %1, i32 0, i32 8
  %tobool26.not = icmp eq ptr %treeName24, null
  %7 = select i1 %tobool22.not, i1 true, i1 %tobool26.not
  %tn21.0 = select i1 %7, ptr @.str.68, ptr %treeName24
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull %tn21.0) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end36, %do.body20.if.end44_crit_edge, %do.end, %do.body2.if.end44_crit_edge
  %persistent_fid = getelementptr i8, ptr %work, i32 -84
  %8 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %persistent_fid, align 8
  %volatile_fid = getelementptr i8, ptr %work, i32 -76
  %10 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %volatile_fid, align 8
  %call46 = tail call i32 @SMB2_close(i32 noundef 0, ptr noundef %1, i64 noundef %9, i64 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.if.end74_crit_edge, label %do.body50

if.end44.if.end74_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.body50:                                        ; preds = %if.end44
  %call61 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_cancelled_close_fid._rs.74, ptr noundef nonnull @__func__.smb2_cancelled_close_fid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body50.if.end74_crit_edge, label %do.end66

do.body50.if.end74_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end66:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %tobool52.not = icmp eq ptr %1, null
  %treeName54 = getelementptr inbounds %struct.cifs_tcon, ptr %1, i32 0, i32 8
  %tobool56.not = icmp eq ptr %treeName54, null
  %12 = select i1 %tobool52.not, i1 true, i1 %tobool56.not
  %tn51.0 = select i1 %12, ptr @.str.68, ptr %treeName54
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %tn51.0, i32 noundef %call46) #12
  br label %if.end74

if.end74:                                         ; preds = %do.end66, %do.body50.if.end74_crit_edge, %if.end44.if.end74_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -92
  tail call void @cifs_put_tcon(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_close(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_handle_cancelled_close(ptr noundef %tcon, i64 noundef %persistent_fid, i64 noundef %volatile_fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_handle_cancelled_close.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_handle_cancelled_close, %land.lhs.true)) #9
          to label %do.end13 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_handle_cancelled_close._rs, ptr noundef nonnull @.str.78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %tc_count = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 1
  %1 = ptrtoint ptr %tc_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tc_count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_handle_cancelled_close.descriptor, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78, i32 noundef %2) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %tc_count14 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 1
  %3 = ptrtoint ptr %tc_count14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tc_count14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then15, label %if.end108

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp17 = icmp slt i32 %4, 0
  br i1 %cmp17, label %land.rhs, label %if.then15.if.end59_crit_edge

if.then15.if.end59_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.rhs:                                         ; preds = %if.then15
  %.b131 = load i1, ptr @smb2_handle_cancelled_close.__already_done, align 1
  br i1 %.b131, label %land.rhs.if.end59_crit_edge, label %if.then33, !prof !248

land.rhs.if.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb2_handle_cancelled_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 793, i32 noundef 9, ptr noundef nonnull @.str.80) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then33, %land.rhs.if.end59_crit_edge, %if.then15.if.end59_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %5 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ses, align 8
  %tobool67.not = icmp eq ptr %6, null
  br i1 %tobool67.not, label %if.end59.if.end79_crit_edge, label %do.body73

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.body73:                                        ; preds = %if.end59
  %server70 = getelementptr inbounds %struct.cifs_ses, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %server70 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server70, align 8
  %tobool74.not = icmp eq ptr %8, null
  br i1 %tobool74.not, label %do.body73.if.end79_crit_edge, label %land.lhs.true75

do.body73.if.end79_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true75:                                  ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostname, align 8
  %tobool76.not = icmp eq ptr %10, null
  %spec.select = select i1 %tobool76.not, ptr @.str.68, ptr %10
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true75, %do.body73.if.end79_crit_edge, %if.end59.if.end79_crit_edge
  %sn.0 = phi ptr [ @.str.68, %do.body73.if.end79_crit_edge ], [ %spec.select, %land.lhs.true75 ], [ @.str.68, %if.end59.if.end79_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and80 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %do.body83

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_handle_cancelled_close.descriptor.82, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_handle_cancelled_close, %land.lhs.true95)) #9
          to label %cleanup [label %land.lhs.true95], !srcloc !247

land.lhs.true95:                                  ; preds = %do.body83
  %call96 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_handle_cancelled_close._rs.81, ptr noundef nonnull @.str.78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true95.cleanup_crit_edge, label %if.then98

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  %tid = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 11
  %12 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_handle_cancelled_close.descriptor.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, ptr noundef nonnull %sn.0, i32 noundef %13, i64 noundef %persistent_fid, i64 noundef %volatile_fid) #9
  br label %cleanup

if.end108:                                        ; preds = %do.end13
  %inc = add nuw i32 %4, 1
  %14 = ptrtoint ptr %tc_count14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %tc_count14, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %call110 = tail call fastcc i32 @__smb2_handle_cancelled_cmd(ptr noundef %tcon, i16 noundef zeroext 6, i64 noundef 0, i64 noundef %persistent_fid, i64 noundef %volatile_fid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.then112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cifs_put_tcon(ptr noundef %tcon) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end108.cleanup_crit_edge, %if.then98, %land.lhs.true95.cleanup_crit_edge, %do.body83, %if.end79.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end79.cleanup_crit_edge ], [ 0, %land.lhs.true95.cleanup_crit_edge ], [ 0, %if.then98 ], [ %call110, %if.then112 ], [ 0, %if.end108.cleanup_crit_edge ], [ 0, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smb2_handle_cancelled_cmd(ptr noundef %tcon, i16 noundef zeroext %cmd, i64 noundef %mid, i64 noundef %persistent_fid, i64 noundef %volatile_fid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 152) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %persistent_fid1 = getelementptr inbounds %struct.cifs_fid, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %persistent_fid1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %persistent_fid, ptr %persistent_fid1, align 8
  %volatile_fid3 = getelementptr inbounds %struct.cifs_fid, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %volatile_fid3 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %volatile_fid, ptr %volatile_fid3, align 8
  %tcon4 = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %tcon4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tcon, ptr %tcon4, align 8
  %cmd5 = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %cmd, ptr %cmd5, align 8
  %mid6 = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %mid6 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %mid, ptr %mid6, align 8
  %work = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %6 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.137, ptr noundef nonnull @__smb2_handle_cancelled_cmd.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10 = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.close_cancelled_open, ptr %call7.i.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smb2_cancelled_close_fid, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsiod_wq to i32))
  %10 = load ptr, ptr @cifsiod_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #9
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %do.end26, !prof !248

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 777, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_handle_cancelled_mid(ptr nocapture noundef readonly %mid, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 16
  %0 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_buf, align 4
  %optype = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 21
  %2 = ptrtoint ptr %optype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %optype, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %5)
  %cmp.not = icmp eq i16 %5, 1280
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %Status = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %SessionId = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %SessionId, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %Id = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 9
  %TreeId = getelementptr inbounds %struct.anon.155, ptr %Id, i32 0, i32 1
  %11 = ptrtoint ptr %TreeId to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %TreeId, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call = tail call ptr @smb2_find_smb_tcon(ptr noundef %server, i64 noundef %10, i32 noundef %13) #9
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %14 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %Command, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %MessageId = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %MessageId to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %MessageId, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %PersistentFileId = getelementptr inbounds %struct.smb2_create_rsp, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %PersistentFileId to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %PersistentFileId, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %VolatileFileId = getelementptr inbounds %struct.smb2_create_rsp, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %VolatileFileId to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %VolatileFileId, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %call10 = tail call fastcc i32 @__smb2_handle_cancelled_cmd(ptr noundef nonnull %call, i16 noundef zeroext %16, i64 noundef %19, i64 noundef %22, i64 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cifs_put_tcon(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call10, %if.then12 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smb2_find_smb_tcon(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb311_update_preauth_hash(ptr noundef %ses, ptr noundef %server, ptr nocapture noundef readonly %iov, i32 noundef %nvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov, align 4
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.ok_crit_edge, label %if.end

entry.ok_crit_edge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ok

if.end:                                           ; preds = %entry
  %dialect = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 36
  %4 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dialect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 785, i16 %5)
  %cmp3.not = icmp eq i16 %5, 785
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp9.not = icmp eq i16 %3, 256
  %or.cond = select i1 %cmp3.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %Flags = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %Flags to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %Flags, align 1
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12.ok_crit_edge, label %land.lhs.true

if.end12.ok_crit_edge:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ok

land.lhs.true:                                    ; preds = %if.end12
  %Status = getelementptr inbounds %struct.smb2_hdr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 369098944, i32 %9)
  %cond = icmp eq i32 %9, 369098944
  br i1 %cond, label %land.lhs.true.ok_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.ok_crit_edge:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %ok

ok:                                               ; preds = %land.lhs.true.ok_crit_edge, %if.end12.ok_crit_edge, %entry.ok_crit_edge
  %call = tail call i32 @smb311_crypto_shash_allocate(ptr noundef %server) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end22, label %ok.cleanup_crit_edge

ok.cleanup_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %ok
  %sdescsha512 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 9
  %10 = ptrtoint ptr %sdescsha512 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdescsha512, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end22.do.body26_crit_edge

if.end22.do.body26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

crypto_shash_init.exit:                           ; preds = %if.end22
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 -256
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %19(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool24.not = icmp eq i32 %call3.i, 0
  br i1 %tobool24.not, label %if.end37, label %crypto_shash_init.exit.do.body26_crit_edge

crypto_shash_init.exit.do.body26_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body26:                                        ; preds = %crypto_shash_init.exit.do.body26_crit_edge, %if.end22.do.body26_crit_edge
  %retval.0.i134 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body26_crit_edge ], [ -126, %if.end22.do.body26_crit_edge ]
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @smb311_update_preauth_hash._rs, ptr noundef nonnull @__func__.smb311_update_preauth_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.body26.cleanup.sink.split_crit_edge

do.body26.cleanup.sink.split_crit_edge:           ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %crypto_shash_init.exit
  %preauth_sha_hash = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 30
  %call39 = tail call i32 @crypto_shash_update(ptr noundef %11, ptr noundef %preauth_sha_hash, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.cond.preheader, label %do.body43

for.cond.preheader:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvec)
  %cmp58135 = icmp sgt i32 %nvec, 0
  br i1 %cmp58135, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body43:                                        ; preds = %if.end37
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @smb311_update_preauth_hash._rs.85, ptr noundef nonnull @__func__.smb311_update_preauth_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.body43.cleanup.sink.split_crit_edge

do.body43.cleanup.sink.split_crit_edge:           ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %nvec
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx61 = getelementptr %struct.kvec, ptr %iov, i32 %i.0136
  %20 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx61, align 4
  %iov_len = getelementptr %struct.kvec, ptr %iov, i32 %i.0136, i32 1
  %22 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len, align 4
  %call64 = tail call i32 @crypto_shash_update(ptr noundef %11, ptr noundef %21, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %for.cond, label %do.body68

do.body68:                                        ; preds = %for.body
  %call69 = tail call i32 @___ratelimit(ptr noundef nonnull @smb311_update_preauth_hash._rs.89, ptr noundef nonnull @__func__.smb311_update_preauth_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.body68.cleanup_crit_edge, label %do.body68.cleanup.sink.split_crit_edge

do.body68.cleanup.sink.split_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call86 = tail call i32 @crypto_shash_final(ptr noundef %11, ptr noundef %preauth_sha_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.end.cleanup_crit_edge, label %do.body90

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body90:                                        ; preds = %for.end
  %call91 = tail call i32 @___ratelimit(ptr noundef nonnull @smb311_update_preauth_hash._rs.92, ptr noundef nonnull @__func__.smb311_update_preauth_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body90.cleanup_crit_edge, label %do.body90.cleanup.sink.split_crit_edge

do.body90.cleanup.sink.split_crit_edge:           ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body90.cleanup_crit_edge:                      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body90.cleanup.sink.split_crit_edge, %do.body68.cleanup.sink.split_crit_edge, %do.body43.cleanup.sink.split_crit_edge, %do.body26.cleanup.sink.split_crit_edge
  %.str.94.sink = phi ptr [ @.str.84, %do.body26.cleanup.sink.split_crit_edge ], [ @.str.87, %do.body43.cleanup.sink.split_crit_edge ], [ @.str.87, %do.body68.cleanup.sink.split_crit_edge ], [ @.str.94, %do.body90.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i134, %do.body26.cleanup.sink.split_crit_edge ], [ %call39, %do.body43.cleanup.sink.split_crit_edge ], [ %call64, %do.body68.cleanup.sink.split_crit_edge ], [ %call86, %do.body90.cleanup.sink.split_crit_edge ]
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.94.sink, ptr noundef nonnull @__func__.smb311_update_preauth_hash) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body90.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.body68.cleanup_crit_edge, %do.body43.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %ok.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %ok.cleanup_crit_edge ], [ %retval.0.i134, %do.body26.cleanup_crit_edge ], [ %call39, %do.body43.cleanup_crit_edge ], [ %call64, %do.body68.cleanup_crit_edge ], [ %call86, %do.body90.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_crypto_shash_allocate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smb2_tcon_has_lease(ptr noundef readonly %tcon, ptr nocapture noundef readonly %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Flags = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 3
  %0 = ptrtoint ptr %Flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %Flags, align 1
  %NewLeaseState = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 6
  %2 = ptrtoint ptr %NewLeaseState to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %NewLeaseState, align 1
  %4 = lshr i32 %3, 24
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 5
  %LeaseKey = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %cfile.0.in = phi ptr [ %openFileList, %entry ], [ %cfile.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %cfile.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cfile.0 = load ptr, ptr %cfile.0.in, align 4
  %cmp.not = icmp eq ptr %cfile.0, %openFileList
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0, i32 0, i32 7
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %lease_key = getelementptr i8, ptr %9, i32 -24
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lease_key, ptr noundef dereferenceable(16) %LeaseKey, i32 16) #14
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.body6:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and7 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.body27_crit_edge, label %do.body10

do.body6.do.body27_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

do.body10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_tcon_has_lease.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_tcon_has_lease, %land.lhs.true)) #9
          to label %do.body27 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body10
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_tcon_has_lease._rs, ptr noundef nonnull @.str.125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.body27_crit_edge, label %if.then19

land.lhs.true.do.body27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_tcon_has_lease.descriptor, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.2) #9
  br label %do.body27

do.body27:                                        ; preds = %if.then19, %land.lhs.true.do.body27_crit_edge, %do.body10, %do.body6.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and28 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end56_crit_edge, label %do.body31

do.body27.do.end56_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

do.body31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_tcon_has_lease.descriptor.128, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_tcon_has_lease, %land.lhs.true43)) #9
          to label %do.end56 [label %land.lhs.true43], !srcloc !247

land.lhs.true43:                                  ; preds = %do.body31
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_tcon_has_lease._rs.127, ptr noundef nonnull @.str.125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end56_crit_edge, label %if.then46

land.lhs.true43.do.end56_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_tcon_has_lease.descriptor.128, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %land.lhs.true43.do.end56_crit_edge, %do.body31, %do.body27.do.end56_crit_edge
  %oplock_break_cancelled60 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0, i32 0, i32 10
  %12 = ptrtoint ptr %oplock_break_cancelled60 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load61 = load i8, ptr %oplock_break_cancelled60, align 4
  %bf.clear = and i8 %bf.load61, -33
  %13 = lshr i32 %1, 19
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 32
  %16 = or i8 %15, %bf.clear
  %bf.set63.sink = xor i8 %16, 32
  store i8 %bf.set63.sink, ptr %oplock_break_cancelled60, align 4
  %flags = getelementptr i8, ptr %9, i32 -108
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  %Epoch = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 2
  %17 = ptrtoint ptr %Epoch to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %Epoch, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv65 = zext i16 %19 to i32
  %oplock_epoch = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0, i32 0, i32 11
  %20 = ptrtoint ptr %oplock_epoch to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv65, ptr %oplock_epoch, align 8
  %oplock_level = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile.0, i32 0, i32 12
  %21 = ptrtoint ptr %oplock_level to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %4, ptr %oplock_level, align 4
  tail call void @cifs_queue_oplock_break(ptr noundef %cfile.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %for.cond.cleanup_crit_edge
  %22 = xor i1 %cmp.not, true
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smb2_tcon_find_pending_open_lease(ptr noundef readonly %tcon, ptr nocapture noundef readonly %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %NewLeaseState = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 6
  %0 = ptrtoint ptr %NewLeaseState to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %NewLeaseState, align 1
  %2 = lshr i32 %1, 24
  %pending_opens = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 42
  %3 = ptrtoint ptr %pending_opens to i32
  call void @__asan_load4_noabort(i32 %3)
  %open.080 = load ptr, ptr %pending_opens, align 4
  %cmp.not81 = icmp eq ptr %open.080, %pending_opens
  br i1 %cmp.not81, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Flags = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 3
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %Flags, align 1
  %LeaseKey = getelementptr inbounds %struct.smb2_lease_break, ptr %rsp, i32 0, i32 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %open.083 = phi ptr [ %open.080, %for.body.lr.ph ], [ %open.0, %for.inc.for.body_crit_edge ]
  %found.082 = phi ptr [ null, %for.body.lr.ph ], [ %found.2, %for.inc.for.body_crit_edge ]
  %lease_key = getelementptr inbounds %struct.cifs_pending_open, ptr %open.083, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %lease_key, ptr noundef dereferenceable(16) %LeaseKey, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %tobool4.not = icmp eq ptr %found.082, null
  %spec.select = select i1 %tobool5.not, ptr null, ptr %open.083
  %found.1 = select i1 %tobool4.not, ptr %spec.select, ptr %found.082
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.do.body30_crit_edge, label %do.body12

if.end.do.body30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_tcon_find_pending_open_lease.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_tcon_find_pending_open_lease, %land.lhs.true19)) #9
          to label %do.body30 [label %land.lhs.true19], !srcloc !247

land.lhs.true19:                                  ; preds = %do.body12
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_tcon_find_pending_open_lease._rs, ptr noundef nonnull @.str.130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.body30_crit_edge, label %if.then22

land.lhs.true19.do.body30_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_tcon_find_pending_open_lease.descriptor, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.2) #9
  br label %do.body30

do.body30:                                        ; preds = %if.then22, %land.lhs.true19.do.body30_crit_edge, %do.body12, %if.end.do.body30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end59_crit_edge, label %do.body34

do.body30.do.end59_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.body34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_tcon_find_pending_open_lease.descriptor.133, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_tcon_find_pending_open_lease, %land.lhs.true46)) #9
          to label %do.end59 [label %land.lhs.true46], !srcloc !247

land.lhs.true46:                                  ; preds = %do.body34
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_tcon_find_pending_open_lease._rs.132, ptr noundef nonnull @.str.130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end59_crit_edge, label %if.then49

land.lhs.true46.do.end59_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_tcon_find_pending_open_lease.descriptor.133, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.2, i32 noundef %2) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then49, %land.lhs.true46.do.end59_crit_edge, %do.body34, %do.body30.do.end59_crit_edge
  %oplock = getelementptr inbounds %struct.cifs_pending_open, ptr %open.083, i32 0, i32 3
  %9 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %oplock, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end59, %for.body.for.inc_crit_edge
  %found.2 = phi ptr [ %found.082, %for.body.for.inc_crit_edge ], [ %found.1, %do.end59 ]
  %10 = ptrtoint ptr %open.083 to i32
  call void @__asan_load4_noabort(i32 %10)
  %open.0 = load ptr, ptr %open.083, align 4
  %cmp.not = icmp eq ptr %open.0, %pending_opens
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %found.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %found.2, %for.inc.for.end_crit_edge ]
  ret ptr %found.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb2_cached_lease_break(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_ses_oplock_break(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tlink = getelementptr inbounds %struct.smb2_lease_break_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_tcon.i, align 4
  %lease_key = getelementptr inbounds %struct.smb2_lease_break_work, ptr %work, i32 0, i32 2
  %lease_state = getelementptr inbounds %struct.smb2_lease_break_work, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %lease_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lease_state, align 4
  %call1 = tail call i32 @SMB2_lease_break(i32 noundef 0, ptr noundef %3, ptr noundef %lease_key, i32 noundef %5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ses_oplock_break.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ses_oplock_break, %land.lhs.true)) #9
          to label %do.end16 [label %land.lhs.true], !srcloc !247

land.lhs.true:                                    ; preds = %do.body3
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ses_oplock_break._rs, ptr noundef nonnull @.str.135) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %if.then11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ses_oplock_break.descriptor, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.2, i32 noundef %call1) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %land.lhs.true.do.end16_crit_edge, %do.body3, %entry.do.end16_crit_edge
  %7 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tlink, align 4
  tail call void @cifs_put_tlink(ptr noundef %8) #9
  tail call void @kfree(ptr noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_lease_break(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !229, !230, !232, !233, !234, !235, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/smb2misc.c", i32 163, i32 4}
!2 = !{ptr @smb2_check_message._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.smb2_check_message, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smb2_check_message._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smb2_check_message._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @smb2_check_message._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/smb2misc.c", i32 179, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smb2_check_message._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @smb2_check_message._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @smb2_check_message._rs.7, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/smb2misc.c", i32 184, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @smb2_check_message._entry.8, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @smb2_check_message._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @smb2_check_message._rs.11, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/smb2misc.c", i32 193, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @smb2_check_message._entry.12, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @smb2_check_message._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @smb2_check_message._rs.15, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/smb2misc.c", i32 200, i32 3}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @smb2_check_message._entry.16, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @smb2_check_message._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @smb2_check_message._rs.19, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/cifs/smb2misc.c", i32 208, i32 4}
!30 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @smb2_check_message._entry.20, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @smb2_check_message._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @smb2_check_message._rs.23, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/cifs/smb2misc.c", i32 216, i32 4}
!35 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @smb2_check_message._entry.24, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @smb2_check_message._entry_ptr.26, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @smb2_check_message._rs.27, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/smb2misc.c", i32 228, i32 3}
!40 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.29, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smb2_check_message.descriptor, !39, !"descriptor", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/cifs/smb2misc.c", i32 257, i32 3}
!45 = !{ptr @.str.31, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @smb2_check_message._entry.30, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @smb2_check_message._entry_ptr.32, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @smb2_get_data_area_len._rs, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../fs/cifs/smb2misc.c", i32 363, i32 3}
!50 = !{ptr @__func__.smb2_get_data_area_len, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @smb2_get_data_area_len._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @smb2_get_data_area_len._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @smb2_get_data_area_len._rs.34, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../fs/cifs/smb2misc.c", i32 372, i32 3}
!56 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @smb2_get_data_area_len._entry.35, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @smb2_get_data_area_len._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @smb2_get_data_area_len._rs.38, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../fs/cifs/smb2misc.c", i32 376, i32 3}
!61 = !{ptr @.str.40, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @smb2_get_data_area_len._entry.39, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @smb2_get_data_area_len._entry_ptr.41, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @smb2_get_data_area_len._rs.42, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../fs/cifs/smb2misc.c", i32 381, i32 3}
!66 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @smb2_get_data_area_len._entry.43, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @smb2_get_data_area_len._entry_ptr.45, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @smb2_get_data_area_len._rs.46, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../fs/cifs/smb2misc.c", i32 385, i32 3}
!71 = !{ptr @.str.48, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @smb2_get_data_area_len._entry.47, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @smb2_get_data_area_len._entry_ptr.49, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @smb2_calc_size._rs, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../fs/cifs/smb2misc.c", i32 420, i32 2}
!76 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @smb2_calc_size.descriptor, !75, !"descriptor", i1 false, i1 false}
!79 = !{ptr @smb2_calc_size._rs.52, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/smb2misc.c", i32 430, i32 4}
!81 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @smb2_calc_size._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @smb2_calc_size._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @smb2_calc_size._rs.54, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../fs/cifs/smb2misc.c", i32 438, i32 2}
!86 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @smb2_calc_size.descriptor.55, !85, !"descriptor", i1 false, i1 false}
!88 = !{ptr @smb2_is_valid_oplock_break._rs, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../fs/cifs/smb2misc.c", i32 669, i32 2}
!90 = !{ptr @.str.57, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @smb2_is_valid_oplock_break.descriptor, !89, !"descriptor", i1 false, i1 false}
!93 = !{ptr @smb2_is_valid_oplock_break._rs.59, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../fs/cifs/smb2misc.c", i32 682, i32 2}
!95 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @smb2_is_valid_oplock_break.descriptor.60, !94, !"descriptor", i1 false, i1 false}
!97 = !{ptr @smb2_is_valid_oplock_break._rs.62, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../fs/cifs/smb2misc.c", i32 697, i32 5}
!99 = !{ptr @.str.64, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @smb2_is_valid_oplock_break.descriptor.63, !98, !"descriptor", i1 false, i1 false}
!101 = !{ptr @smb2_is_valid_oplock_break._rs.65, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../fs/cifs/smb2misc.c", i32 726, i32 2}
!103 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @smb2_is_valid_oplock_break.descriptor.66, !102, !"descriptor", i1 false, i1 false}
!105 = !{ptr @.str.68, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/cifs/smb2misc.c", i32 739, i32 3}
!107 = !{ptr @smb2_cancelled_close_fid._rs, !106, !"_rs", i1 false, i1 false}
!108 = !{ptr @__func__.smb2_cancelled_close_fid, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @smb2_cancelled_close_fid._entry, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @smb2_cancelled_close_fid._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @smb2_cancelled_close_fid._rs.70, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../fs/cifs/smb2misc.c", i32 742, i32 3}
!114 = !{ptr @.str.72, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @smb2_cancelled_close_fid._entry.71, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @smb2_cancelled_close_fid._entry_ptr.73, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @smb2_cancelled_close_fid._rs.74, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../fs/cifs/smb2misc.c", i32 747, i32 3}
!119 = !{ptr @.str.76, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @smb2_cancelled_close_fid._entry.75, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @smb2_cancelled_close_fid._entry_ptr.77, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @smb2_handle_cancelled_close._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../fs/cifs/smb2misc.c", i32 788, i32 2}
!124 = !{ptr @.str.78, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @smb2_handle_cancelled_close.descriptor, !123, !"descriptor", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/cifs/smb2misc.c", i32 793, i32 3}
!129 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @smb2_handle_cancelled_close._rs.81, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../fs/cifs/smb2misc.c", i32 799, i32 3}
!132 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @smb2_handle_cancelled_close.descriptor.82, !131, !"descriptor", i1 false, i1 false}
!134 = !{ptr @smb311_update_preauth_hash._rs, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../fs/cifs/smb2misc.c", i32 893, i32 3}
!136 = !{ptr @__func__.smb311_update_preauth_hash, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.84, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @smb311_update_preauth_hash._entry, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @smb311_update_preauth_hash._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @smb311_update_preauth_hash._rs.85, !141, !"_rs", i1 false, i1 false}
!141 = !{!"../fs/cifs/smb2misc.c", i32 900, i32 3}
!142 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @smb311_update_preauth_hash._entry.86, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @smb311_update_preauth_hash._entry_ptr.88, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @smb311_update_preauth_hash._rs.89, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../fs/cifs/smb2misc.c", i32 908, i32 4}
!147 = !{ptr @smb311_update_preauth_hash._entry.90, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @smb311_update_preauth_hash._entry_ptr.91, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @smb311_update_preauth_hash._rs.92, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../fs/cifs/smb2misc.c", i32 916, i32 3}
!151 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @smb311_update_preauth_hash._entry.93, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @smb311_update_preauth_hash._entry_ptr.95, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @check_smb2_hdr._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../fs/cifs/smb2misc.c", i32 38, i32 5}
!156 = !{ptr @__func__.check_smb2_hdr, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.96, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @check_smb2_hdr._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @check_smb2_hdr._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @check_smb2_hdr._rs.97, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../fs/cifs/smb2misc.c", i32 42, i32 4}
!162 = !{ptr @.str.99, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @check_smb2_hdr._entry.98, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @check_smb2_hdr._entry_ptr.100, !161, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/smb2misc.c", i32 45, i32 4}
!167 = !{ptr @.str.103, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @check_smb2_hdr._entry.102, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @check_smb2_hdr._entry_ptr.104, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @check_smb2_hdr._rs.105, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../fs/cifs/smb2misc.c", i32 48, i32 2}
!172 = !{ptr @.str.107, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @check_smb2_hdr._entry.106, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @check_smb2_hdr._entry_ptr.108, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @smb2_rsp_struct_sizes, !176, !"smb2_rsp_struct_sizes", i1 false, i1 false}
!176 = !{!"../fs/cifs/smb2misc.c", i32 59, i32 21}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../fs/cifs/smb2misc.c", i32 110, i32 3}
!179 = !{ptr @.str.109, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.110, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @get_neg_ctxt_len._entry, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @get_neg_ctxt_len._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @get_neg_ctxt_len._rs, !184, !"_rs", i1 false, i1 false}
!184 = !{!"../fs/cifs/smb2misc.c", i32 113, i32 3}
!185 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @get_neg_ctxt_len.descriptor, !184, !"descriptor", i1 false, i1 false}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../fs/cifs/smb2misc.c", i32 123, i32 3}
!189 = !{ptr @.str.114, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @get_neg_ctxt_len._entry.113, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @get_neg_ctxt_len._entry_ptr.115, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @get_neg_ctxt_len._rs.116, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../fs/cifs/smb2misc.c", i32 127, i32 2}
!194 = !{ptr @.str.118, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @get_neg_ctxt_len.descriptor.117, !193, !"descriptor", i1 false, i1 false}
!196 = distinct !{null, !197, !"has_smb2_data_area", i1 false, i1 false}
!197 = !{!"../fs/cifs/smb2misc.c", i32 271, i32 19}
!198 = !{ptr @smb2_is_valid_lease_break._rs, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../fs/cifs/smb2misc.c", i32 607, i32 2}
!200 = !{ptr @.str.119, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.120, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @smb2_is_valid_lease_break.descriptor, !199, !"descriptor", i1 false, i1 false}
!203 = !{ptr @smb2_is_valid_lease_break.__key, !204, !"__key", i1 false, i1 false}
!204 = !{!"../fs/cifs/smb2misc.c", i32 645, i32 6}
!205 = !{ptr @.str.121, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @smb2_is_valid_lease_break._rs.122, !207, !"_rs", i1 false, i1 false}
!207 = !{!"../fs/cifs/smb2misc.c", i32 656, i32 2}
!208 = !{ptr @.str.124, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @smb2_is_valid_lease_break.descriptor.123, !207, !"descriptor", i1 false, i1 false}
!210 = !{ptr @smb2_tcon_has_lease._rs, !211, !"_rs", i1 false, i1 false}
!211 = !{!"../fs/cifs/smb2misc.c", i32 548, i32 3}
!212 = !{ptr @.str.125, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.126, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @smb2_tcon_has_lease.descriptor, !211, !"descriptor", i1 false, i1 false}
!215 = !{ptr @smb2_tcon_has_lease._rs.127, !216, !"_rs", i1 false, i1 false}
!216 = !{!"../fs/cifs/smb2misc.c", i32 549, i32 3}
!217 = !{ptr @.str.129, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @smb2_tcon_has_lease.descriptor.128, !216, !"descriptor", i1 false, i1 false}
!219 = !{ptr @smb2_tcon_find_pending_open_lease._rs, !220, !"_rs", i1 false, i1 false}
!220 = !{!"../fs/cifs/smb2misc.c", i32 588, i32 3}
!221 = !{ptr @.str.130, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.131, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @smb2_tcon_find_pending_open_lease.descriptor, !220, !"descriptor", i1 false, i1 false}
!224 = !{ptr @smb2_tcon_find_pending_open_lease._rs.132, !225, !"_rs", i1 false, i1 false}
!225 = !{!"../fs/cifs/smb2misc.c", i32 589, i32 3}
!226 = !{ptr @smb2_tcon_find_pending_open_lease.descriptor.133, !225, !"descriptor", i1 false, i1 false}
!227 = !{ptr @smb2_queue_pending_open_break.__key, !228, !"__key", i1 false, i1 false}
!228 = !{!"../fs/cifs/smb2misc.c", i32 523, i32 2}
!229 = !{ptr @.str.134, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @cifs_ses_oplock_break._rs, !231, !"_rs", i1 false, i1 false}
!231 = !{!"../fs/cifs/smb2misc.c", i32 506, i32 2}
!232 = !{ptr @.str.135, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.136, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cifs_ses_oplock_break.descriptor, !231, !"descriptor", i1 false, i1 false}
!235 = !{ptr @__smb2_handle_cancelled_cmd.__key, !236, !"__key", i1 false, i1 false}
!236 = !{!"../fs/cifs/smb2misc.c", i32 776, i32 2}
!237 = !{ptr @.str.137, !236, !"<string literal>", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{i64 2148845487, i64 2148845492, i64 2148845505, i64 2148845549, i64 2148845583, i64 2148845604}
!248 = !{!"branch_weights", i32 2000, i32 1}
!249 = !{!"auto-init"}
!250 = !{i8 0, i8 2}
!251 = !{i64 2148363672, i64 2148363698, i64 2148363727, i64 2148363761, i64 2148363792, i64 2148363815}
