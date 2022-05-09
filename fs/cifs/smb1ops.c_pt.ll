; ModuleID = '/llk/IR_all_yes/fs/cifs/smb1ops.c_pt.bc'
source_filename = "../fs/cifs/smb1ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.158, i8, i16, i16, %union.anon.160, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.158 = type { i32 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i32, i32 }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.kuid_t = type { i32 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.smb_com_read_rsp = type <{ %struct.smb_hdr, i8, i8, i16, i16, i16, i16, i16, i16, i16, i64, i16 }>
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.4, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.kgid_t = type { i32 }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.FILE_ALL_INFO = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i64, i32, i32, i32, [1 x i8] }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.143, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.144, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.145, ptr, %struct.address_space, %struct.list_head, %union.anon.146, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.143 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.144 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.146 = type { ptr }
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
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.FILE_BASIC_INFO = type { i64, i64, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dfs_info3_param = type { i32, i32, i32, i32, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.149, %struct.list_head, %struct.list_head, %union.anon.150 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.7, ptr }
%union.anon.7 = type { i64 }
%struct.lockref = type { %union.anon.147 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { %struct.spinlock, i32 }
%union.anon.149 = type { %struct.list_head }
%union.anon.150 = type { %struct.hlist_node }
%struct.cifsInodeInfo = type { i8, %struct.list_head, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, i32, i32, i64, i64, i64, [16 x i8], ptr, %struct.inode, %struct.list_head, %struct.spinlock, i8 }
%struct.cifs_io_parms = type { i16, i64, i64, i32, i64, i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.cifs_unix_set_info_args = type { i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.44 = type { %struct.callback_head }
%struct.win_dev = type { [8 x i8], i64, i64 }
%struct.smb_t2_rsp = type <{ %struct.smb_hdr, %struct.trans2_resp }>
%struct.trans2_resp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8 }

@smb1_operations = dso_local global { %struct.smb_version_operations, [96 x i8] } { %struct.smb_version_operations { ptr @send_nt_cancel, ptr @cifs_compare_fids, ptr @cifs_setup_request, ptr @cifs_setup_async_request, ptr @cifs_check_receive, ptr @cifs_add_credits, ptr @cifs_set_credits, ptr @cifs_get_credits_field, ptr @cifs_get_credits, ptr @cifs_get_next_mid, ptr null, ptr @cifs_read_data_offset, ptr @cifs_read_data_length, ptr @map_smb_to_linux_error, ptr @cifs_find_mid, ptr @cifs_dump_detail, ptr @cifs_clear_stats, ptr @cifs_print_stats, ptr null, ptr @checkSMB, ptr @is_valid_oplock_break, ptr null, ptr @cifs_downgrade_oplock, ptr @cifs_check_trans2, ptr @cifs_need_neg, ptr @cifs_negotiate, ptr @cifs_negotiate_wsize, ptr @cifs_negotiate_rsize, ptr @CIFS_SessSetup, ptr @CIFSSMBLogoff, ptr @CIFSTCon, ptr @CIFSSMBTDis, ptr @CIFSGetDFSRefer, ptr @cifs_qfs_tcon, ptr @cifs_is_path_accessible, ptr @cifs_query_path_info, ptr @cifs_query_file_info, ptr null, ptr @cifs_get_srv_inum, ptr @CIFSSMBSetEOF, ptr @CIFSSMBSetFileSize, ptr @smb_set_file_info, ptr @cifs_set_compression, ptr @cifs_can_echo, ptr @CIFSSMBEcho, ptr null, ptr @CIFSSMBMkDir, ptr @cifs_mkdir_setinfo, ptr @CIFSSMBRmDir, ptr @CIFSSMBDelFile, ptr @cifs_rename_pending_delete, ptr @CIFSSMBRename, ptr @CIFSCreateHardLink, ptr @cifs_query_symlink, ptr @cifs_open_file, ptr @cifs_set_fid, ptr @cifs_close_file, ptr null, ptr @cifs_flush_file, ptr @cifs_async_readv, ptr @cifs_async_writev, ptr @cifs_sync_read, ptr @cifs_sync_write, ptr @cifs_query_dir_first, ptr @cifs_query_dir_next, ptr @cifs_close_dir, ptr @smbCalcSize, ptr null, ptr null, ptr @cifs_oplock_response, ptr @cifs_queryfs, ptr @cifs_mand_lock, ptr @cifs_unlock_range, ptr @cifs_push_mandatory_locks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_query_mf_symlink, ptr @cifs_create_mf_symlink, ptr @cifs_is_read_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @CIFSSMBQAllEAs, ptr @CIFSSMBSetEA, ptr @get_cifs_acl, ptr @get_cifs_acl_by_fid, ptr @set_cifs_acl, ptr @cifs_wp_retry_size, ptr @cifs_wait_mtu_credits, ptr null, ptr @cifs_dir_needs_close, ptr null, ptr null, ptr null, ptr null, ptr @cifs_select_sectype, ptr null, ptr null, ptr @cifs_make_node, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@smb1_values = dso_local global { %struct.smb_version_values, [60 x i8] } { %struct.smb_version_values { ptr @.str, i16 0, i32 0, i32 16, i32 0, i32 1, i32 0, i32 4, i32 37, i32 88, i32 63, i16 9216, i32 8388608, i32 528, i32 8, i16 4, i16 8, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@send_nt_cancel._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@send_nt_cancel.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_nt_cancel\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cifs/smb1ops.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: issued NT_CANCEL for mid %u, rc = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@enable_oplocks = external dso_local local_unnamed_addr global i8, align 1
@GlobalMid_Lock = external dso_local global %struct.spinlock, align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" Oplocks breaks: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0AReads:  %d Bytes: %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0AWrites: %d Bytes: %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0AFlushes: %d\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0ALocks: %d HardLinks: %d Symlinks: %d\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0AOpens: %d Closes: %d Deletes: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0APosix Opens: %d Posix Mkdirs: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AMkdirs: %d Rmdirs: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0ARenames: %d T2 Renames %d\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0AFindFirst: %d FNext %d FClose %d\00", [62 x i8] zeroinitializer }, align 32
@cifs_check_trans2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_check_trans2 = private unnamed_addr constant [18 x i8] c"cifs_check_trans2\00", align 1
@cifs_check_trans2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.cifs_check_trans2, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: 1st trans2 resp needs bigbuf\0A\00", [53 x i8] zeroinitializer }, align 32
@cifs_check_trans2._entry_ptr = internal global ptr @cifs_check_trans2._entry, section ".printk_index", align 4
@check2ndT2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check2ndT2.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check2ndT2\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIFS: %s: Invalid transact2 word count\0A\00", [56 x i8] zeroinitializer }, align 32
@check2ndT2._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check2ndT2.descriptor.20 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.21, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CIFS: %s: total data %d smaller than data in frame %d\0A\00", [41 x i8] zeroinitializer }, align 32
@check2ndT2._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check2ndT2.descriptor.23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.24, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CIFS: %s: missing %d bytes from transact2, check next response\0A\00", [32 x i8] zeroinitializer }, align 32
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@check2ndT2._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check2ndT2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.4, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013CIFS: VFS: TotalDataSize %d is over maximum buffer %d\0A\00", [39 x i8] zeroinitializer }, align 32
@check2ndT2._entry_ptr = internal global ptr @check2ndT2._entry, section ".printk_index", align 4
@coalesce_t2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coalesce_t2\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"CIFS: %s: total data count of primary and secondary t2 differ source=%hu target=%hu\0A\00", [43 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.30 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"CIFS: %s: Server sent too much data. tgt_total_cnt=%hu total_in_tgt=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.33 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.34, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: no more data remains\0A\00", [32 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.36 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.37, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: transact2 2nd response contains too much data\0A\00", [39 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.39 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.40, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: coalesced DataCount too large (%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.42 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.43, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIFS: %s: coalesced BCC too large (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.45 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.46, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: coalesced BCC exceeds buffer size (%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.48 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.49, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: waiting for more secondary responses\0A\00", [48 x i8] zeroinitializer }, align 32
@coalesce_t2._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@coalesce_t2.descriptor.51 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.27, ptr @.str.4, ptr @.str.52, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: found the last secondary response\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smb_set_file_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb_set_file_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smb_set_file_info\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"CIFS: %s: calling SetFileInfo since SetPathInfo for times not supported by this server\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_query_symlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_query_symlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_query_symlink\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: %s: path: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_query_symlink._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_query_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.4, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CIFS: VFS: reparse points not handled for SMB1 symlinks\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_query_symlink._entry_ptr = internal global ptr @cifs_query_symlink._entry, section ".printk_index", align 4
@cifs_query_symlink._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_query_symlink.descriptor.60 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.55, ptr @.str.4, ptr @.str.61, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: %s: target path: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@cifs_query_dir_first._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_query_dir_first.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_query_dir_first\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: find first failed=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_make_node._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_make_node.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_make_node\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: sfu compat create special file\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967274]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967274]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967274]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"smb1_operations\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1155, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1240, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"smb1_values\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1239, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 60, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 652, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 654, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 657, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 660, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 662, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 666, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 670, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 673, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 676, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 679, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 406, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 257, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 269, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 276, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 279, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 301, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 309, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 316, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 322, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 337, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 348, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 357, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 368, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 373, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 812, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 958, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 961, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1002, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 855, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [21 x i8] c"../fs/cifs/smb1ops.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1093, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @check2ndT2._entry, ptr @check2ndT2._entry_ptr, ptr @cifs_check_trans2._entry, ptr @cifs_check_trans2._entry_ptr, ptr @cifs_query_symlink._entry, ptr @cifs_query_symlink._entry_ptr, ptr @smb1_operations, ptr @.str, ptr @smb1_values, ptr @send_nt_cancel._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cifs_check_trans2._rs, ptr @.str.16, ptr @check2ndT2._rs, ptr @.str.17, ptr @.str.18, ptr @check2ndT2._rs.19, ptr @.str.21, ptr @check2ndT2._rs.22, ptr @.str.24, ptr @check2ndT2._rs.25, ptr @.str.26, ptr @coalesce_t2._rs, ptr @.str.27, ptr @.str.28, ptr @coalesce_t2._rs.29, ptr @.str.31, ptr @coalesce_t2._rs.32, ptr @.str.34, ptr @coalesce_t2._rs.35, ptr @.str.37, ptr @coalesce_t2._rs.38, ptr @.str.40, ptr @coalesce_t2._rs.41, ptr @.str.43, ptr @coalesce_t2._rs.44, ptr @.str.46, ptr @coalesce_t2._rs.47, ptr @.str.49, ptr @coalesce_t2._rs.50, ptr @.str.52, ptr @smb_set_file_info._rs, ptr @.str.53, ptr @.str.54, ptr @cifs_query_symlink._rs, ptr @.str.55, ptr @.str.56, ptr @cifs_query_symlink._rs.57, ptr @.str.58, ptr @cifs_query_symlink._rs.59, ptr @.str.61, ptr @cifs_query_dir_first._rs, ptr @.str.62, ptr @.str.63, ptr @cifs_make_node._rs, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1_operations to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1_values to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_nt_cancel._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_check_trans2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_check_trans2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check2ndT2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check2ndT2._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check2ndT2._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check2ndT2._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check2ndT2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce_t2._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_set_file_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_query_symlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_query_symlink._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_query_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_query_symlink._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_query_dir_first._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_make_node._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_nt_cancel(ptr noundef %server, ptr nocapture noundef readonly %rqst, ptr noundef %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 35, ptr %3, align 1
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %Command to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -92, ptr %Command, align 1
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %WordCount to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %WordCount, align 1
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 37
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %add.ptr.i.i, align 1
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #14
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 7
  %call = tail call i32 @cifs_sign_smb(ptr noundef %3, ptr noundef %server, ptr noundef %sequence_number) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sequence_number2 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 46
  %8 = ptrtoint ptr %sequence_number2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sequence_number2, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %sequence_number2, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %3, align 1
  %call4 = tail call i32 @smb_send(ptr noundef %server, ptr noundef %3, i32 noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %sequence_number2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence_number2, align 8
  %dec7 = add i32 %13, -1
  store i32 %dec7, ptr %sequence_number2, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.body13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_nt_cancel.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_nt_cancel, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !142

land.lhs.true:                                    ; preds = %do.body13
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @send_nt_cancel._rs, ptr noundef nonnull @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %Mid.i = getelementptr inbounds %struct.smb_hdr, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %Mid.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %Mid.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #14
  %conv = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_nt_cancel.descriptor, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %do.body13, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end8.cleanup_crit_edge ], [ %call4, %land.lhs.true.cleanup_crit_edge ], [ %call4, %if.then20 ], [ %call4, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cifs_compare_fids(ptr nocapture noundef readonly %ob1, ptr nocapture noundef readonly %ob2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %ob1, i32 0, i32 5
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %fid1 = getelementptr inbounds %struct.cifsFileInfo, ptr %ob2, i32 0, i32 5
  %2 = ptrtoint ptr %fid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fid1, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_setup_request(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_setup_async_request(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_check_receive(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_add_credits(ptr noundef %server, ptr nocapture noundef readonly %credits, i32 noundef %optype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock) #14
  %0 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %credits, align 4
  %credits1 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 20
  %2 = ptrtoint ptr %credits1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %credits1, align 8
  %add = add i32 %3, %1
  store i32 %add, ptr %credits1, align 8
  %in_flight = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 22
  %4 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_flight, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %in_flight, align 8
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #14
  %request_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %request_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_set_credits(ptr noundef %server, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock) #14
  %credits = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 20
  %0 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %credits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp sgt i32 %val, 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @enable_oplocks to i32))
  %1 = load i8, ptr @enable_oplocks, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %phi.sel = select i1 %tobool.not, i8 0, i8 -128
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %phi.sel, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %oplocks = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 37
  %2 = ptrtoint ptr %oplocks to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %oplocks, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %cond
  store i8 %bf.set, ptr %oplocks, align 8
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cifs_get_credits_field(ptr noundef readnone %server, i32 noundef %optype) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %credits = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 20
  ret ptr %credits
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_get_credits(ptr nocapture noundef readnone %mid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cifs_get_next_mid(ptr noundef %server) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #14
  %CurrentMid = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %0 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %CurrentMid, align 8
  %conv = trunc i64 %1 to i16
  %inc = add i16 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %inc)
  %cmp = icmp eq i16 %inc, -1
  %inc3 = add i16 %conv, 2
  %spec.select = select i1 %cmp, i16 %inc3, i16 %inc
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15
  %2 = ptrtoint ptr %pending_mid_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %mid_entry.086 = load ptr, ptr %pending_mid_q, align 4
  %cmp15.not87 = icmp eq ptr %mid_entry.086, %pending_mid_q
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry
  %cur_mid.196 = phi i16 [ %spec.select, %entry ], [ %inc39, %cleanup.while.body_crit_edge ]
  %reconnect.0.off095 = phi i1 [ false, %entry ], [ %spec.select71, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cur_mid.196)
  %cmp9 = icmp eq i16 %cur_mid.196, 0
  %spec.select70 = select i1 %cmp9, i16 1, i16 %cur_mid.196
  %.pre = zext i16 %spec.select70 to i64
  br i1 %cmp15.not87, label %cleanup.thread.thread, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %mid_entry.089 = phi ptr [ %mid_entry.0, %for.inc.for.body_crit_edge ], [ %mid_entry.086, %while.body.for.body_crit_edge ]
  %num_mids.088 = phi i32 [ %inc17, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %inc17 = add i32 %num_mids.088, 1
  %mid18 = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.089, i32 0, i32 3
  %3 = ptrtoint ptr %mid18 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mid18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %.pre)
  %cmp20 = icmp eq i64 %4, %.pre
  br i1 %cmp20, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.089, i32 0, i32 18
  %5 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp22 = icmp eq i32 %6, 2
  br i1 %cmp22, label %cleanup, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %mid_entry.089 to i32
  call void @__asan_load4_noabort(i32 %7)
  %mid_entry.0 = load ptr, ptr %mid_entry.089, align 4
  %cmp15.not = icmp eq ptr %mid_entry.0, %pending_mid_q
  br i1 %cmp15.not, label %cleanup.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.thread.thread:                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %.pre, ptr %CurrentMid, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #14
  br label %if.end43

cleanup.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %inc17)
  %phi.cmp = icmp ugt i32 %inc17, 32768
  %phi.sel = select i1 %phi.cmp, i1 true, i1 %reconnect.0.off095
  %9 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %.pre, ptr %CurrentMid, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #14
  br i1 %phi.sel, label %cleanup.thread.if.then42_crit_edge, label %cleanup.thread.if.end43_crit_edge

cleanup.thread.if.end43_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

cleanup.thread.if.then42_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %inc17)
  %cmp31 = icmp ugt i32 %inc17, 32768
  %spec.select71 = select i1 %cmp31, i1 true, i1 %reconnect.0.off095
  %inc39 = add i16 %spec.select70, 1
  %cmp6.not = icmp eq i16 %inc39, %conv
  br i1 %cmp6.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #14
  br i1 %spec.select71, label %while.end.if.then42_crit_edge, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

while.end.if.then42_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.then42:                                        ; preds = %while.end.if.then42_crit_edge, %cleanup.thread.if.then42_crit_edge
  %mid.283 = phi i64 [ %.pre, %cleanup.thread.if.then42_crit_edge ], [ 0, %while.end.if.then42_crit_edge ]
  tail call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %server, i1 noundef zeroext false) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %while.end.if.end43_crit_edge, %cleanup.thread.if.end43_crit_edge, %cleanup.thread.thread
  %mid.282 = phi i64 [ %.pre, %cleanup.thread.if.end43_crit_edge ], [ %mid.283, %if.then42 ], [ 0, %while.end.if.end43_crit_edge ], [ %.pre, %cleanup.thread.thread ]
  ret i64 %mid.282
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_read_data_offset(ptr nocapture noundef readonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %DataOffset = getelementptr inbounds %struct.smb_com_read_rsp, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %DataOffset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %DataOffset, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_read_data_length(ptr nocapture noundef readonly %buf, i1 noundef zeroext %in_remaining) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %in_remaining, label %do.end, label %entry.if.end_crit_edge, !prof !144

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 84, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %DataLengthHigh = getelementptr inbounds %struct.smb_com_read_rsp, ptr %buf, i32 0, i32 9
  %0 = ptrtoint ptr %DataLengthHigh to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %DataLengthHigh, align 1
  %DataLength = getelementptr inbounds %struct.smb_com_read_rsp, ptr %buf, i32 0, i32 7
  %2 = ptrtoint ptr %DataLength to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %DataLength, align 1
  %4 = zext i16 %1 to i32
  %5 = zext i16 %3 to i32
  %6 = shl nuw i32 %5, 16
  %7 = or i32 %6, %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_smb_to_linux_error(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cifs_find_mid(ptr noundef readonly %server, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #14
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15
  %0 = ptrtoint ptr %pending_mid_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %mid.026 = load ptr, ptr %pending_mid_q, align 4
  %cmp.not27 = icmp eq ptr %mid.026, %pending_mid_q
  br i1 %cmp.not27, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %Mid.i = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 12
  %1 = ptrtoint ptr %Mid.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %Mid.i, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #14
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mid.028 = phi ptr [ %mid.026, %for.body.lr.ph ], [ %mid.0, %for.inc.for.body_crit_edge ]
  %mid2 = getelementptr inbounds %struct.mid_q_entry, ptr %mid.028, i32 0, i32 3
  %4 = ptrtoint ptr %mid2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mid2, align 8
  %conv = trunc i64 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %conv)
  %cmp.i = icmp eq i16 %3, %conv
  br i1 %cmp.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %mid.028, i32 0, i32 18
  %6 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %mid.028, i32 0, i32 20
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %command, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Command, align 1
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %13)
  %cmp9 = icmp eq i16 %10, %13
  br i1 %cmp9, label %if.then, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true6
  %refcount = getelementptr inbounds %struct.mid_q_entry, ptr %mid.028, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !144

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !146

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %mid.028 to i32
  call void @__asan_load4_noabort(i32 %16)
  %mid.0 = load ptr, ptr %mid.028, align 4
  %cmp.not = icmp eq ptr %mid.0, %pending_mid_q
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %mid.028, %if.else.i.i.i.i.cleanup_crit_edge ], [ %mid.028, %if.end15.sink.split.i.i.i.i ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_dump_detail(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_clear_stats(ptr noundef %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #14
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %stats, align 4
  %num_reads = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 1
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_reads, i32 noundef 4) #14
  %1 = ptrtoint ptr %num_reads to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %num_reads, align 4
  %num_flushes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 2
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_flushes, i32 noundef 4) #14
  %2 = ptrtoint ptr %num_flushes to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %num_flushes, align 4
  %num_oplock_brks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 3
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_oplock_brks, i32 noundef 4) #14
  %3 = ptrtoint ptr %num_oplock_brks to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %num_oplock_brks, align 4
  %num_opens = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 4
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_opens, i32 noundef 4) #14
  %4 = ptrtoint ptr %num_opens to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %num_opens, align 4
  %num_posixopens = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 8
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_posixopens, i32 noundef 4) #14
  %5 = ptrtoint ptr %num_posixopens to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %num_posixopens, align 4
  %num_posixmkdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 9
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_posixmkdirs, i32 noundef 4) #14
  %6 = ptrtoint ptr %num_posixmkdirs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %num_posixmkdirs, align 4
  %num_closes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 5
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_closes, i32 noundef 4) #14
  %7 = ptrtoint ptr %num_closes to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %num_closes, align 4
  %num_deletes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 6
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_deletes, i32 noundef 4) #14
  %8 = ptrtoint ptr %num_deletes to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %num_deletes, align 4
  %num_mkdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 7
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mkdirs, i32 noundef 4) #14
  %9 = ptrtoint ptr %num_mkdirs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %num_mkdirs, align 4
  %num_rmdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 10
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_rmdirs, i32 noundef 4) #14
  %10 = ptrtoint ptr %num_rmdirs to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %num_rmdirs, align 4
  %num_renames = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 11
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_renames, i32 noundef 4) #14
  %11 = ptrtoint ptr %num_renames to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %num_renames, align 4
  %num_t2renames = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 12
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_t2renames, i32 noundef 4) #14
  %12 = ptrtoint ptr %num_t2renames to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %num_t2renames, align 4
  %num_ffirst = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 13
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_ffirst, i32 noundef 4) #14
  %13 = ptrtoint ptr %num_ffirst to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %num_ffirst, align 4
  %num_fnext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 14
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_fnext, i32 noundef 4) #14
  %14 = ptrtoint ptr %num_fnext to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %num_fnext, align 4
  %num_fclose = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 15
  %call.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_fclose, i32 noundef 4) #14
  %15 = ptrtoint ptr %num_fclose to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %num_fclose, align 4
  %num_hardlinks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 16
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_hardlinks, i32 noundef 4) #14
  %16 = ptrtoint ptr %num_hardlinks to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %num_hardlinks, align 4
  %num_symlinks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 17
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_symlinks, i32 noundef 4) #14
  %17 = ptrtoint ptr %num_symlinks to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %num_symlinks, align 4
  %num_locks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 18
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_locks, i32 noundef 4) #14
  %18 = ptrtoint ptr %num_locks to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %num_locks, align 4
  %num_acl_get = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 1
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_acl_get, i32 noundef 4) #14
  %19 = ptrtoint ptr %num_acl_get to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %num_acl_get, align 4
  %num_acl_set = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 1, i32 1
  %call.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_acl_set, i32 noundef 4) #14
  %20 = ptrtoint ptr %num_acl_set to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %num_acl_set, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_print_stats(ptr noundef %m, ptr noundef %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15
  %num_oplock_brks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_oplock_brks, i32 noundef 4) #14
  %0 = ptrtoint ptr %num_oplock_brks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_oplock_brks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %1) #14
  %num_reads = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 1
  %call.i.i66 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_reads, i32 noundef 4) #14
  %2 = ptrtoint ptr %num_reads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_reads, align 4
  %bytes_read = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 16
  %4 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_read, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %3, i64 noundef %5) #14
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #14
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %stats, align 4
  %bytes_written = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 17
  %8 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_written, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %7, i64 noundef %9) #14
  %num_flushes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 2
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_flushes, i32 noundef 4) #14
  %10 = ptrtoint ptr %num_flushes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %num_flushes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %11) #14
  %num_locks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 18
  %call.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_locks, i32 noundef 4) #14
  %12 = ptrtoint ptr %num_locks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %num_locks, align 4
  %num_hardlinks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 16
  %call.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_hardlinks, i32 noundef 4) #14
  %14 = ptrtoint ptr %num_hardlinks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %num_hardlinks, align 4
  %num_symlinks = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 17
  %call.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_symlinks, i32 noundef 4) #14
  %16 = ptrtoint ptr %num_symlinks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %num_symlinks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %15, i32 noundef %17) #14
  %num_opens = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 4
  %call.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_opens, i32 noundef 4) #14
  %18 = ptrtoint ptr %num_opens to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %num_opens, align 4
  %num_closes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 5
  %call.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_closes, i32 noundef 4) #14
  %20 = ptrtoint ptr %num_closes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %num_closes, align 4
  %num_deletes = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 6
  %call.i.i74 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_deletes, i32 noundef 4) #14
  %22 = ptrtoint ptr %num_deletes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %num_deletes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %19, i32 noundef %21, i32 noundef %23) #14
  %num_posixopens = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 8
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_posixopens, i32 noundef 4) #14
  %24 = ptrtoint ptr %num_posixopens to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %num_posixopens, align 4
  %num_posixmkdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 9
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_posixmkdirs, i32 noundef 4) #14
  %26 = ptrtoint ptr %num_posixmkdirs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %num_posixmkdirs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %27) #14
  %num_mkdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 7
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_mkdirs, i32 noundef 4) #14
  %28 = ptrtoint ptr %num_mkdirs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %num_mkdirs, align 4
  %num_rmdirs = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 10
  %call.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_rmdirs, i32 noundef 4) #14
  %30 = ptrtoint ptr %num_rmdirs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %num_rmdirs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %31) #14
  %num_renames = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 11
  %call.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_renames, i32 noundef 4) #14
  %32 = ptrtoint ptr %num_renames to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %num_renames, align 4
  %num_t2renames = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 12
  %call.i.i80 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_t2renames, i32 noundef 4) #14
  %34 = ptrtoint ptr %num_t2renames to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %num_t2renames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %35) #14
  %num_ffirst = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 13
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_ffirst, i32 noundef 4) #14
  %36 = ptrtoint ptr %num_ffirst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %num_ffirst, align 4
  %num_fnext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 14
  %call.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_fnext, i32 noundef 4) #14
  %38 = ptrtoint ptr %num_fnext to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %num_fnext, align 4
  %num_fclose = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 15, i32 0, i32 0, i32 15
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_fclose, i32 noundef 4) #14
  %40 = ptrtoint ptr %num_fclose to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %num_fclose, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %37, i32 noundef %39, i32 noundef %41) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @checkSMB(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_valid_oplock_break(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_downgrade_oplock(ptr nocapture noundef readnone %server, ptr noundef %cinode, i32 noundef %oplock, i32 noundef %epoch, ptr nocapture noundef readnone %purge_cache) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cifs_set_oplock_level(ptr noundef %cinode, i32 noundef %oplock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cifs_check_trans2(ptr noundef %mid, ptr nocapture noundef %server, ptr noundef %buf, i32 noundef %malformed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %malformed)
  %tobool.not = icmp eq i32 %malformed, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @check2ndT2(ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end2:                                          ; preds = %if.end
  %multiRsp = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 22
  %0 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %multiRsp, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %multiRsp, align 4
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 16
  %1 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resp_buf, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end14, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call6 = tail call fastcc i32 @coalesce_t2(ptr noundef %buf, ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then4.return_crit_edge, label %if.end9

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load10 = load i8, ptr %multiRsp, align 4
  %bf.set12 = or i8 %bf.load10, 32
  store i8 %bf.set12, ptr %multiRsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool13 = icmp ne i32 %call6, 0
  tail call void @dequeue_mid(ptr noundef %mid, i1 noundef zeroext %tobool13) #14
  br label %return

if.end14:                                         ; preds = %if.end2
  %large_buf = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 56
  %4 = ptrtoint ptr %large_buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %large_buf, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %do.body17, label %if.else

do.body17:                                        ; preds = %if.end14
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_check_trans2._rs, ptr noundef nonnull @__func__.cifs_check_trans2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body17.return_crit_edge, label %do.end

do.body17.return_crit_edge:                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end:                                           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #17
  br label %return

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %resp_buf, align 4
  %bf.set30 = or i8 %bf.load, -64
  %7 = ptrtoint ptr %multiRsp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set30, ptr %multiRsp, align 4
  %bigbuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 62
  %8 = ptrtoint ptr %bigbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bigbuf, align 4
  br label %return

return:                                           ; preds = %if.else, %do.end, %do.body17.return_crit_edge, %if.end9, %if.then4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ true, %if.then4.return_crit_edge ], [ true, %do.body17.return_crit_edge ], [ true, %do.end ], [ true, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cifs_need_neg(ptr nocapture noundef readonly %server) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %maxBuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 39
  %0 = ptrtoint ptr %maxBuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxBuf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_negotiate(i32 noundef %xid, ptr noundef %ses, ptr noundef %server) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @CIFSSMBNegotiate(i32 noundef %xid, ptr noundef %ses, ptr noundef %server) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %set_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %set_credits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_credits.i, align 4
  tail call void %3(ptr noundef %server, i32 noundef 1) #14
  %call1 = tail call i32 @CIFSSMBNegotiate(i32 noundef %xid, ptr noundef %ses, ptr noundef %server) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp2 = icmp eq i32 %call1, -11
  %spec.store.select = select i1 %cmp2, i32 -112, i32 %call1
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ %spec.store.select, %if.then ], [ %call, %entry.if.end4_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_negotiate_wsize(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %ctx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %Capability, align 4
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %3 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ses, align 8
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server1, align 8
  %wsize2 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 40
  %7 = ptrtoint ptr %wsize2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wsize2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = and i64 %2, 128
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %9 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %unix_ext, align 8
  %10 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %bf.cast.not = icmp eq i16 %10, 0
  %and = and i64 %2, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  %or.cond = select i1 %bf.cast.not, i1 true, i1 %tobool4.not
  %spec.select = select i1 %or.cond, i32 65536, i32 1048576
  br label %if.end7

if.end7:                                          ; preds = %if.else, %entry.if.end7_crit_edge
  %and13.pre-phi = phi i64 [ %.pre, %entry.if.end7_crit_edge ], [ %and, %if.else ]
  %wsize.0 = phi i32 [ %8, %entry.if.end7_crit_edge ], [ %spec.select, %if.else ]
  %unix_ext8 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %11 = ptrtoint ptr %unix_ext8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load9 = load i16, ptr %unix_ext8, align 8
  %12 = and i16 %bf.load9, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %bf.cast12.not = icmp eq i16 %12, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.pre-phi)
  %tobool14.not = icmp eq i64 %and13.pre-phi, 0
  %or.cond56 = select i1 %bf.cast12.not, i1 true, i1 %tobool14.not
  %13 = tail call i32 @llvm.umin.i32(i32 %wsize.0, i32 131007)
  %wsize.1 = select i1 %or.cond56, i32 %13, i32 %wsize.0
  %capabilities = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 41
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 8
  %and17 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end7.if.then25_crit_edge, label %lor.lhs.false19

if.end7.if.then25_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

lor.lhs.false19:                                  ; preds = %if.end7
  %and21 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %lor.lhs.false19.if.end32_crit_edge

lor.lhs.false19.if.end32_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.lhs.true23:                                  ; preds = %lor.lhs.false19
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 29
  %16 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sign, align 2, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool24.not = icmp eq i8 %17, 0
  br i1 %tobool24.not, label %land.lhs.true23.if.end32_crit_edge, label %land.lhs.true23.if.then25_crit_edge

land.lhs.true23.if.then25_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then25:                                        ; preds = %land.lhs.true23.if.then25_crit_edge, %if.end7.if.then25_crit_edge
  %maxBuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 39
  %18 = ptrtoint ptr %maxBuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxBuf, align 8
  %add = add i32 %19, -64
  %20 = tail call i32 @llvm.umin.i32(i32 %wsize.1, i32 %add)
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %land.lhs.true23.if.end32_crit_edge, %lor.lhs.false19.if.end32_crit_edge
  %wsize.2 = phi i32 [ %wsize.1, %lor.lhs.false19.if.end32_crit_edge ], [ %20, %if.then25 ], [ %wsize.1, %land.lhs.true23.if.end32_crit_edge ]
  %21 = tail call i32 @llvm.umin.i32(i32 %wsize.2, i32 16777151)
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_negotiate_rsize(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %0 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses, align 8
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server1, align 8
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %4 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %unix_ext, align 8
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %bf.cast.not = icmp eq i16 %5, 0
  br i1 %bf.cast.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %Capability, align 4
  %8 = and i64 %7, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %capabilities = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 41
  %9 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capabilities, align 8
  %and2 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %maxBuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 39
  %11 = ptrtoint ptr %maxBuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxBuf, align 8
  %sub = add i32 %12, -63
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.else.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %defsize.0 = phi i32 [ %sub, %if.else5 ], [ 1048576, %land.lhs.true.if.end6_crit_edge ], [ 61440, %if.else.if.end6_crit_edge ]
  %rsize7 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 39
  %13 = ptrtoint ptr %rsize7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsize7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  %defsize.0. = select i1 %tobool8.not, i32 %defsize.0, i32 %14
  %capabilities10 = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 41
  %15 = ptrtoint ptr %capabilities10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities10, align 8
  %and11 = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %17 = load i32, ptr @CIFSMaxBufSize, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %defsize.0.)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end6.if.end18_crit_edge
  %rsize.0 = phi i32 [ %defsize.0., %if.end6.if.end18_crit_edge ], [ %18, %if.then13 ]
  %19 = tail call i32 @llvm.umin.i32(i32 %rsize.0, i32 16777157)
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFS_SessSetup(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBLogoff(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSTCon(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBTDis(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSGetDFSRefer(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_qfs_tcon(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readnone %cifs_sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @CIFSSMBQFSDeviceInfo(i32 noundef %xid, ptr noundef %tcon) #14
  %call1 = tail call i32 @CIFSSMBQFSAttributeInfo(i32 noundef %xid, ptr noundef %tcon) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_is_path_accessible(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 109) #18
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %1 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local_nls, align 4
  %call1 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call2 = tail call i32 @CIFSSMBQPathInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef nonnull %call7.i, i32 noundef 0, ptr noundef %2, i32 noundef %call1) #14
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.if.end9_crit_edge [
    i32 -95, label %if.end.if.then5_crit_edge
    i32 -22, label %if.end.if.then5_crit_edge22
  ]

if.end.if.then5_crit_edge22:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge22
  %4 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_nls, align 4
  %call7 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call8 = tail call i32 @SMBQueryInformation(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef nonnull %call7.i, ptr noundef %5, i32 noundef %call7) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %rc.0 = phi i32 [ %call8, %if.then5 ], [ %call2, %if.end.if.end9_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_query_path_info(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %full_path, ptr noundef %data, ptr nocapture noundef writeonly %adjustTZ, ptr nocapture noundef writeonly %symlink) #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %symlink to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %symlink, align 1
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %1 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local_nls, align 4
  %call = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call1 = tail call i32 @CIFSSMBQPathInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef %data, i32 noundef 0, ptr noundef %2, i32 noundef %call) #14
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call1, label %entry.if.end_crit_edge [
    i32 -95, label %entry.if.then_crit_edge
    i32 -22, label %entry.if.then_crit_edge41
  ]

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge41
  %4 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_nls, align 4
  %call4 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call5 = tail call i32 @SMBQueryInformation(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef %data, ptr noundef %5, i32 noundef %call4) #14
  %6 = ptrtoint ptr %adjustTZ to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %adjustTZ, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then ], [ %call1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool.not = icmp eq i32 %rc.0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %Attributes = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %Attributes to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %Attributes, align 1
  %9 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end20_crit_edge, label %if.then7

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #14
  %10 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #14
  %11 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #14
  %12 = getelementptr inbounds i8, ptr %oparms, i32 28
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb9 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %15 = ptrtoint ptr %cifs_sb9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cifs_sb, ptr %cifs_sb9, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %16 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %if.then7.cifs_create_options.exit_crit_edge, label %land.lhs.true.i

if.then7.cifs_create_options.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cifs_create_options.exit

land.lhs.true.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #14
  %spec.select.i = select i1 %call.i, i32 16384, i32 0
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %land.lhs.true.i, %if.then7.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then7.cifs_create_options.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %17 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %18 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %19 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %full_path, ptr %path, align 4
  %fid11 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %20 = ptrtoint ptr %fid11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fid, ptr %fid11, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %21 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call12 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #14
  %22 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call12, label %cifs_create_options.exit.if.end19_crit_edge [
    i32 -95, label %if.then14
    i32 0, label %if.then16
  ]

cifs_create_options.exit.if.end19_crit_edge:      ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %symlink to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %symlink, align 1
  br label %if.end19

if.then16:                                        ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fid, align 8
  %conv = zext i16 %25 to i32
  %call17 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14, %cifs_create_options.exit.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_query_file_info(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %fid, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %call = tail call i32 @CIFSSMBQFileInfo(i32 noundef %xid, ptr noundef %tcon, i16 noundef zeroext %1, ptr noundef %data) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_get_srv_inum(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %full_path, ptr noundef %uniqueid, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %0 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_nls, align 4
  %call = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call1 = tail call i32 @CIFSGetSrvInodeNumber(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef %uniqueid, ptr noundef %1, i32 noundef %call) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetEOF(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetFileSize(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb_set_file_info(ptr noundef %inode, ptr noundef %full_path, ptr noundef %buf, i32 noundef %xid) #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #14
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #14
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #14
  %2 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @find_writable_file(ptr noundef %add.ptr.i, i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fid3 = getelementptr inbounds %struct.cifsFileInfo, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %fid3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fid3, align 8
  %9 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %fid, align 8
  %pid = getelementptr inbounds %struct.cifsFileInfo, ptr %call2, i32 0, i32 4
  %tlink5 = getelementptr inbounds %struct.cifsFileInfo, ptr %call2, i32 0, i32 8
  %10 = ptrtoint ptr %tlink5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlink5, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tl_tcon.i, align 4
  br label %set_via_filehandle

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @cifs_sb_tlink(ptr noundef %6) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out.thread, label %if.end11

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %call7 to i32
  br label %if.end67

if.end11:                                         ; preds = %if.end
  %tl_tcon.i100 = getelementptr inbounds %struct.tcon_link, ptr %call7, i32 0, i32 5
  %15 = ptrtoint ptr %tl_tcon.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tl_tcon.i100, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 3
  %17 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %local_nls, align 4
  %call13 = tail call i32 @CIFSSMBSetPathInfo(i32 noundef %xid, ptr noundef %16, ptr noundef %full_path, ptr noundef %buf, ptr noundef %18, ptr noundef %6) #14
  %19 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call13, label %if.end11.out_crit_edge [
    i32 0, label %if.then14
    i32 -95, label %if.end11.if.end19_crit_edge
    i32 -22, label %if.end11.if.end19_crit_edge107
  ]

if.end11.if.end19_crit_edge107:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %Attributes = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %buf, i32 0, i32 4
  %20 = ptrtoint ptr %Attributes to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %Attributes, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %cifsAttrs = getelementptr i8, ptr %inode, i32 -120
  %23 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cifsAttrs, align 8
  br label %out

if.end19:                                         ; preds = %if.end11.if.end19_crit_edge, %if.end11.if.end19_crit_edge107
  %24 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %oparms, align 4
  %cifs_sb21 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %25 = ptrtoint ptr %cifs_sb21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %6, ptr %cifs_sb21, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %26 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1048832, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end19.cifs_create_options.exit_crit_edge, label %land.lhs.true.i

if.end19.cifs_create_options.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cifs_create_options.exit

land.lhs.true.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %6) #14
  %spec.select.i = select i1 %call.i, i32 16448, i32 64
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %land.lhs.true.i, %if.end19.cifs_create_options.exit_crit_edge
  %retval.0.i101 = phi i32 [ 64, %if.end19.cifs_create_options.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %27 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i101, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %28 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %29 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %full_path, ptr %path, align 4
  %fid23 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %30 = ptrtoint ptr %fid23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fid, ptr %fid23, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %31 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %32 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %cifs_create_options.exit.do.end42_crit_edge, label %do.body27

cifs_create_options.exit.do.end42_crit_edge:      ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

do.body27:                                        ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb_set_file_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb_set_file_info, %land.lhs.true32)) #14
          to label %do.end42 [label %land.lhs.true32], !srcloc !142

land.lhs.true32:                                  ; preds = %do.body27
  %call33 = call i32 @___ratelimit(ptr noundef nonnull @smb_set_file_info._rs, ptr noundef nonnull @.str.53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end42_crit_edge, label %if.then35

land.lhs.true32.do.end42_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb_set_file_info.descriptor, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.4) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %land.lhs.true32.do.end42_crit_edge, %do.body27, %cifs_create_options.exit.do.end42_crit_edge
  %call43 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43)
  %cmp46 = icmp eq i32 %call43, -5
  %spec.store.select = select i1 %cmp46, i32 -22, i32 %call43
  br label %out

if.end49:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  %33 = call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 69
  br label %set_via_filehandle

set_via_filehandle:                               ; preds = %if.end49, %if.then
  %tlink.0 = phi ptr [ null, %if.then ], [ %call7, %if.end49 ]
  %tcon.0 = phi ptr [ %13, %if.then ], [ %16, %if.end49 ]
  %netpid.0.in = phi ptr [ %pid, %if.then ], [ %tgid, %if.end49 ]
  %37 = ptrtoint ptr %netpid.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %netpid.0 = load i32, ptr %netpid.0.in, align 4
  %38 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fid, align 8
  %call52 = call i32 @CIFSSMBSetFileInfo(i32 noundef %xid, ptr noundef %tcon.0, ptr noundef %buf, i16 noundef zeroext %39, i32 noundef %netpid.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %set_via_filehandle.if.end57_crit_edge

set_via_filehandle.if.end57_crit_edge:            ; preds = %set_via_filehandle
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then54:                                        ; preds = %set_via_filehandle
  call void @__sanitizer_cov_trace_pc() #16
  %Attributes55 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %buf, i32 0, i32 4
  %40 = ptrtoint ptr %Attributes55 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %Attributes55, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %cifsAttrs56 = getelementptr i8, ptr %inode, i32 -120
  %43 = ptrtoint ptr %cifsAttrs56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cifsAttrs56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %set_via_filehandle.if.end57_crit_edge
  br i1 %tobool.not, label %if.then59, label %if.else62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fid, align 8
  %conv = zext i16 %45 to i32
  %call61 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon.0, i32 noundef %conv) #14
  br label %out

if.else62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  call void @cifsFileInfo_put(ptr noundef nonnull %call2) #14
  br label %out

out:                                              ; preds = %if.else62, %if.then59, %if.then45, %if.then14, %if.end11.out_crit_edge
  %tlink.1 = phi ptr [ %tlink.0, %if.then59 ], [ %tlink.0, %if.else62 ], [ %call7, %if.then14 ], [ %call7, %if.then45 ], [ %call7, %if.end11.out_crit_edge ]
  %rc.0 = phi i32 [ %call52, %if.then59 ], [ %call52, %if.else62 ], [ 0, %if.then14 ], [ %spec.store.select, %if.then45 ], [ %call13, %if.end11.out_crit_edge ]
  %cmp64.not = icmp eq ptr %tlink.1, null
  br i1 %cmp64.not, label %out.if.end67_crit_edge, label %if.then66

out.if.end67_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then66:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @cifs_put_tlink(ptr noundef nonnull %tlink.1) #14
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %out.if.end67_crit_edge, %out.thread
  %rc.0106 = phi i32 [ %14, %out.thread ], [ %rc.0, %if.then66 ], [ %rc.0, %out.if.end67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #14
  ret i32 %rc.0106
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_set_compression(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %cfile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %call = tail call i32 @CIFSSMB_set_compression(i32 noundef %xid, ptr noundef %tcon, i16 noundef zeroext %1) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cifs_can_echo(ptr nocapture noundef readonly %server) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %0 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBEcho(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBMkDir(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_mkdir_setinfo(ptr nocapture noundef %inode, ptr noundef %full_path, ptr noundef %cifs_sb, ptr noundef %tcon, i32 noundef %xid) #0 align 64 {
entry:
  %info = alloca %struct.FILE_BASIC_INFO, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #14
  %0 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info, i32 0, i32 4
  %1 = call ptr @memset(ptr %info, i32 0, i32 40)
  %cifsAttrs = getelementptr i8, ptr %inode, i32 -120
  %2 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cifsAttrs, align 8
  %or = or i32 %3, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 8
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %6 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local_nls, align 4
  %call1 = call i32 @CIFSSMBSetPathInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef nonnull %info, ptr noundef %7, ptr noundef %cifs_sb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %cifsAttrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBRmDir(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBDelFile(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_rename_pending_delete(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBRename(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSCreateHardLink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_query_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %full_path, ptr noundef %target_path, i1 noundef zeroext %is_reparse_point) #0 align 64 {
entry:
  %referral.i = alloca %struct.dfs_info3_param, align 4
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #14
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #14
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #14
  %2 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_query_symlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_query_symlink, %land.lhs.true)) #14
          to label %do.end14 [label %land.lhs.true], !srcloc !142

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_query_symlink._rs, ptr noundef nonnull @.str.55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %if.then9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_query_symlink.descriptor, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, ptr noundef %full_path) #14
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  br i1 %is_reparse_point, label %do.body18, label %if.end32

do.body18:                                        ; preds = %do.end14
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_query_symlink._rs.57, ptr noundef nonnull @.str.55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.end24

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #17
  br label %cleanup

if.end32:                                         ; preds = %do.end14
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server.i, align 8
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vals.i, align 8
  %cap_unix.i = getelementptr inbounds %struct.smb_version_values, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %cap_unix.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_unix.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 15
  %12 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end41, label %if.then34

if.then34:                                        ; preds = %if.end32
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %14 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local_nls, align 4
  %call35 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #14
  %call36 = tail call i32 @CIFSSMBUnixQuerySymLink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef %target_path, ptr noundef %15, i32 noundef %call35) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66, i32 %call36)
  %cmp = icmp eq i32 %call36, -66
  br i1 %cmp, label %if.then37, label %if.then34.out_crit_edge

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then37:                                        ; preds = %if.then34
  %16 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local_nls, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %referral.i) #14
  %18 = call ptr @memset(ptr %referral.i, i32 0, i32 28)
  %19 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ses, align 8
  %call.i.i = call i32 @dfs_cache_find(i32 noundef %xid, ptr noundef %20, ptr noundef %17, i32 noundef 0, ptr noundef %full_path, ptr noundef nonnull %referral.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then37.cifs_unix_dfs_readlink.exit_crit_edge

if.then37.cifs_unix_dfs_readlink.exit_crit_edge:  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cifs_unix_dfs_readlink.exit

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %node_name.i = getelementptr inbounds %struct.dfs_info3_param, ptr %referral.i, i32 0, i32 5
  %21 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node_name.i, align 4
  %call1.i = call noalias ptr @kstrdup(ptr noundef %22, i32 noundef 3264) #14
  %23 = ptrtoint ptr %target_path to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i, ptr %target_path, align 4
  %path_name.i.i = getelementptr inbounds %struct.dfs_info3_param, ptr %referral.i, i32 0, i32 4
  %24 = ptrtoint ptr %path_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path_name.i.i, align 4
  call void @kfree(ptr noundef %25) #14
  %26 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node_name.i, align 4
  call void @kfree(ptr noundef %27) #14
  %28 = ptrtoint ptr %target_path to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %target_path, align 4
  %tobool2.not.i = icmp eq ptr %29, null
  %spec.select.i = select i1 %tobool2.not.i, i32 -12, i32 0
  br label %cifs_unix_dfs_readlink.exit

cifs_unix_dfs_readlink.exit:                      ; preds = %if.then.i, %if.then37.cifs_unix_dfs_readlink.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %if.then37.cifs_unix_dfs_readlink.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %referral.i) #14
  br label %out

if.end41:                                         ; preds = %if.end32
  %30 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb43 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %31 = ptrtoint ptr %cifs_sb43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cifs_sb, ptr %cifs_sb43, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %32 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %desired_access, align 4
  %tobool.not.i121 = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i121, label %if.end41.cifs_create_options.exit_crit_edge, label %land.lhs.true.i

if.end41.cifs_create_options.exit_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cifs_create_options.exit

land.lhs.true.i:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #14
  %spec.select.i122 = select i1 %call.i, i32 2113536, i32 2097152
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %land.lhs.true.i, %if.end41.cifs_create_options.exit_crit_edge
  %retval.0.i123 = phi i32 [ 2097152, %if.end41.cifs_create_options.exit_crit_edge ], [ %spec.select.i122, %land.lhs.true.i ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %33 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i123, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %34 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %35 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %full_path, ptr %path, align 4
  %fid45 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %36 = ptrtoint ptr %fid45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %fid, ptr %fid45, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %37 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call46 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %cifs_create_options.exit.cleanup_crit_edge

cifs_create_options.exit.cleanup_crit_edge:       ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %cifs_create_options.exit
  %38 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fid, align 8
  %local_nls50 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %40 = ptrtoint ptr %local_nls50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %local_nls50, align 4
  %call51 = call i32 @CIFSSMBQuerySymLink(i32 noundef %xid, ptr noundef %tcon, i16 noundef zeroext %39, ptr noundef %target_path, ptr noundef %41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.out_close_crit_edge

if.end49.out_close_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_close

if.end54:                                         ; preds = %if.end49
  %42 = ptrtoint ptr %target_path to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %target_path, align 4
  %call1.i124 = call ptr @strchr(ptr noundef %43, i32 noundef 92) #14
  %tobool.not2.i = icmp eq ptr %call1.i124, null
  br i1 %tobool.not2.i, label %if.end54.out_close_crit_edge, label %if.end54.while.body.i_crit_edge

if.end54.while.body.i_crit_edge:                  ; preds = %if.end54
  br label %while.body.i

if.end54.out_close_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_close

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end54.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i125, %while.body.i.while.body.i_crit_edge ], [ %call1.i124, %if.end54.while.body.i_crit_edge ]
  %44 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 47, ptr %call3.i, align 1
  %call.i125 = call ptr @strchr(ptr noundef nonnull %call3.i, i32 noundef 92) #14
  %tobool.not.i126 = icmp eq ptr %call.i125, null
  br i1 %tobool.not.i126, label %while.body.i.out_close_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.out_close_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_close

out_close:                                        ; preds = %while.body.i.out_close_crit_edge, %if.end54.out_close_crit_edge, %if.end49.out_close_crit_edge
  %45 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fid, align 8
  %conv = zext i16 %46 to i32
  %call56 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #14
  br label %out

out:                                              ; preds = %out_close, %cifs_unix_dfs_readlink.exit, %if.then34.out_crit_edge
  %rc.0 = phi i32 [ %rc.0.i, %cifs_unix_dfs_readlink.exit ], [ %call36, %if.then34.out_crit_edge ], [ %call51, %out_close ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool57.not = icmp eq i32 %rc.0, 0
  br i1 %tobool57.not, label %do.body60, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body60:                                        ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and61 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %do.body64

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body64:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_query_symlink.descriptor.60, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_query_symlink, %land.lhs.true76)) #14
          to label %cleanup [label %land.lhs.true76], !srcloc !142

land.lhs.true76:                                  ; preds = %do.body64
  %call77 = call i32 @___ratelimit(ptr noundef nonnull @cifs_query_symlink._rs.59, ptr noundef nonnull @.str.55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.cleanup_crit_edge, label %if.then79

land.lhs.true76.cleanup_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %target_path to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %target_path, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_query_symlink.descriptor.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, ptr noundef %49) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %land.lhs.true76.cleanup_crit_edge, %do.body64, %do.body60.cleanup_crit_edge, %out.cleanup_crit_edge, %cifs_create_options.exit.cleanup_crit_edge, %do.end24, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end24 ], [ -95, %do.body18.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %land.lhs.true76.cleanup_crit_edge ], [ 0, %do.body60.cleanup_crit_edge ], [ %rc.0, %out.cleanup_crit_edge ], [ 0, %do.body64 ], [ %call46, %cifs_create_options.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_open_file(i32 noundef %xid, ptr noundef %oparms, ptr noundef %oplock, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oparms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oparms, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ses, align 8
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %8 = ptrtoint ptr %disposition to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disposition, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %10 = ptrtoint ptr %desired_access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desired_access, align 4
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %12 = ptrtoint ptr %create_options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %create_options, align 4
  %fid = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %14 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fid, align 4
  %cifs_sb = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %16 = ptrtoint ptr %cifs_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cifs_sb, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local_nls, align 4
  %call = tail call i32 @cifs_remap(ptr noundef %17) #14
  %call3 = tail call i32 @SMBLegacyOpen(i32 noundef %xid, ptr noundef %1, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %15, ptr noundef %oplock, ptr noundef %buf, ptr noundef %19, i32 noundef %call) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @CIFS_open(i32 noundef %xid, ptr noundef %oparms, ptr noundef %oplock, ptr noundef %buf) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_set_fid(ptr nocapture noundef %cfile, ptr nocapture noundef readonly %fid, i32 noundef %oplock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -280
  %4 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid, align 8
  %fid2 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %6 = ptrtoint ptr %fid2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %fid2, align 8
  tail call void @cifs_set_oplock_level(ptr noundef %add.ptr.i, i32 noundef %oplock) #14
  %oplock4 = getelementptr i8, ptr %3, i32 -116
  %7 = ptrtoint ptr %oplock4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oplock4, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr i8, ptr %3, i32 28
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mnt_cifs_flags, align 4
  %and6 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %15 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool7, %lor.rhs ]
  %frombool = zext i1 %15 to i8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %add.ptr.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_close_file(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %fid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_flush_file(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %fid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 @CIFSSMBFlush(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_async_readv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_async_writev(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_sync_read(i32 noundef %xid, ptr nocapture noundef readonly %pfid, ptr noundef %parms, ptr noundef %bytes_read, ptr noundef %buf, ptr noundef %buf_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pfid, align 8
  %2 = ptrtoint ptr %parms to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %parms, align 8
  %call = tail call i32 @CIFSSMBRead(i32 noundef %xid, ptr noundef %parms, ptr noundef %bytes_read, ptr noundef %buf, ptr noundef %buf_type) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_sync_write(i32 noundef %xid, ptr nocapture noundef readonly %pfid, ptr noundef %parms, ptr noundef %written, ptr noundef %iov, i32 noundef %nr_segs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pfid, align 8
  %2 = ptrtoint ptr %parms to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %parms, align 8
  %call = tail call i32 @CIFSSMBWrite2(i32 noundef %xid, ptr noundef %parms, ptr noundef %written, ptr noundef %iov, i32 noundef %nr_segs) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_query_dir_first(i32 noundef %xid, ptr noundef %tcon, ptr noundef %path, ptr noundef %cifs_sb, ptr noundef %fid, i16 noundef zeroext %search_flags, ptr noundef %srch_inf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @CIFSFindFirst(i32 noundef %xid, ptr noundef %tcon, ptr noundef %path, ptr noundef %cifs_sb, ptr noundef %fid, i16 noundef zeroext %search_flags, ptr noundef %srch_inf, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body1

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.if.end17_crit_edge, label %do.body4

do.body1.if.end17_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.body4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_query_dir_first.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_query_dir_first, %land.lhs.true)) #14
          to label %if.end17 [label %land.lhs.true], !srcloc !142

land.lhs.true:                                    ; preds = %do.body4
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_query_dir_first._rs, ptr noundef nonnull @.str.62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end17_crit_edge, label %if.then11

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_query_dir_first.descriptor, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, i32 noundef %call) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %land.lhs.true.if.end17_crit_edge, %do.body4, %do.body1.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_query_dir_next(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %fid, i16 noundef zeroext %search_flags, ptr noundef %srch_inf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %call = tail call i32 @CIFSFindNext(i32 noundef %xid, ptr noundef %tcon, i16 noundef zeroext %1, i16 noundef zeroext %search_flags, ptr noundef %srch_inf) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_close_dir(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readonly %fid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %call = tail call i32 @CIFSFindClose(i32 noundef %xid, ptr noundef %tcon, i16 noundef zeroext %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smbCalcSize(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_oplock_response(ptr noundef %tcon, ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %cinode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgid, align 4
  %oplock = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 6
  %8 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oplock, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 17, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mnt_cifs_flags, align 4
  %and2 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %16 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool3, %lor.rhs ]
  %conv = zext i1 %16 to i8
  %call4 = tail call i32 @CIFSSMBLock(i32 noundef 0, ptr noundef %tcon, i16 noundef zeroext %1, i32 noundef %7, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 2, i1 noundef zeroext false, i8 noundef zeroext %conv) #14
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_queryfs(i32 noundef %xid, ptr noundef %tcon, ptr nocapture noundef readnone %cifs_sb, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -11317950, ptr %buf, align 8
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %1 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ses, align 8
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capabilities, align 8
  %and = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.lhs.true4_crit_edge, label %land.lhs.true

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 21, i32 2
  %5 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %Capability, align 4
  %7 = and i64 %6, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true4_crit_edge, label %if.then

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true4

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @CIFSSMBQFSPosixInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp28 = icmp eq i32 %call, 0
  br i1 %phi.cmp28, label %if.then.if.end15_crit_edge, label %if.then.land.lhs.true4_crit_edge

if.then.land.lhs.true4_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true4

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true4:                                   ; preds = %if.then.land.lhs.true4_crit_edge, %land.lhs.true.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %capabilities6 = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %capabilities6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capabilities6, align 8
  %and7 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true4.if.then13_crit_edge, label %if.then9

land.lhs.true4.if.then13_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then9:                                         ; preds = %land.lhs.true4
  %call10 = tail call i32 @CIFSSMBQFSInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %phi.cmp = icmp eq i32 %call10, 0
  br i1 %phi.cmp, label %if.then9.if.end15_crit_edge, label %if.then9.if.then13_crit_edge

if.then9.if.then13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %if.then9.if.then13_crit_edge, %land.lhs.true4.if.then13_crit_edge
  %call14 = tail call i32 @SMBOldQFSInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %buf) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %rc.2 = phi i32 [ %call14, %if.then13 ], [ 0, %if.then9.if.end15_crit_edge ], [ 0, %if.then.if.end15_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_mand_lock(i32 noundef %xid, ptr nocapture noundef readonly %cfile, i64 noundef %offset, i64 noundef %length, i32 noundef %type, i32 noundef %lock, i32 noundef %unlock, i1 noundef zeroext %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 8
  %0 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_tcon.i, align 4
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %4 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 69
  %10 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgid, align 4
  %conv = trunc i32 %type to i8
  %call2 = tail call i32 @CIFSSMBLock(i32 noundef %xid, ptr noundef %3, i16 noundef zeroext %5, i32 noundef %11, i64 noundef %length, i64 noundef %offset, i32 noundef %unlock, i32 noundef %lock, i8 noundef zeroext %conv, i1 noundef zeroext %wait, i8 noundef zeroext 0) #14
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_unlock_range(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_push_mandatory_locks(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_query_mf_symlink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_create_mf_symlink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cifs_is_read_op(i32 noundef %oplock) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %oplock)
  %cmp = icmp eq i32 %oplock, 3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQAllEAs(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetEA(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cifs_acl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cifs_acl_by_fid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cifs_acl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_wp_retry_size(ptr nocapture noundef readonly %inode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %wsize = getelementptr inbounds %struct.smb3_fs_context, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wsize, align 4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_wait_mtu_credits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cifs_dir_needs_close(ptr nocapture noundef readonly %cfile) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %endOfSearch = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 16, i32 9
  %0 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %endOfSearch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %invalidHandle = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 10
  %1 = ptrtoint ptr %invalidHandle to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1 = load i8, ptr %invalidHandle, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %bf.cast3.not = icmp sgt i8 %bf.load1, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %bf.cast3.not, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_select_sectype(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_make_node(i32 noundef %xid, ptr nocapture noundef readonly %inode, ptr noundef %dentry, ptr noundef %tcon, ptr noundef %full_path, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  %newinode = alloca ptr, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %bytes_written = alloca i32, align 4
  %iov = alloca [2 x %struct.kvec], align 4
  %args = alloca %struct.cifs_unix_set_info_args, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newinode) #14
  %4 = ptrtoint ptr %newinode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %newinode, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #14
  %5 = call ptr @memset(ptr %io_parms, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #14
  %6 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #14
  %7 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #14
  %8 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_written) #14
  %9 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bytes_written, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #14
  %10 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %12 = call ptr @memset(ptr %iov, i32 255, i32 16)
  %13 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %unix_ext, align 8
  %14 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %bf.cast.not = icmp eq i16 %14, 0
  br i1 %bf.cast.not, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args) #14
  %mode1 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 3
  %conv = zext i16 %mode to i32
  %15 = call ptr @memset(ptr %args, i32 255, i32 48)
  %call2 = tail call i32 @current_umask() #14
  %neg = xor i32 %call2, -1
  %and = and i32 %neg, %conv
  %16 = zext i32 %and to i64
  %17 = ptrtoint ptr %mode1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %mode1, align 8
  %uid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 5
  %device = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 6
  %18 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dev, ptr %device, align 8
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mnt_cifs_flags, align 4
  %and4 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %21 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fsuid, align 4
  %29 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %uid, align 8
  %30 = load ptr, ptr %task, align 8
  %cred15 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred15, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fsgid, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %uid, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %storemerge189 = phi i32 [ %34, %if.then5 ], [ -1, %if.else ]
  %36 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge189, ptr %gid, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %local_nls, align 4
  %call20 = tail call i32 @cifs_remap(ptr noundef %3) #14
  %call21 = call i32 @CIFSSMBUnixSetPathInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef nonnull %args, ptr noundef %38, i32 noundef %call20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call26 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %newinode, ptr noundef %full_path, ptr noundef %40, i32 noundef %xid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  br i1 %cmp, label %if.then28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %newinode, align 4
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %42) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %rc.0 = phi i32 [ %call21, %if.end.cleanup_crit_edge ], [ 0, %if.then28 ], [ %call26, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args) #14
  br label %out

if.end30:                                         ; preds = %entry
  %mnt_cifs_flags31 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %43 = ptrtoint ptr %mnt_cifs_flags31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mnt_cifs_flags31, align 4
  %and32 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.out_crit_edge, label %if.end35

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end35:                                         ; preds = %if.end30
  %45 = and i16 %mode, -4096
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %45, label %if.end35.out_crit_edge [
    i16 24576, label %if.end35.do.body47_crit_edge
    i16 8192, label %if.end35.do.body47_crit_edge193
  ]

if.end35.do.body47_crit_edge193:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body47

if.end35.do.body47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body47

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body47:                                        ; preds = %if.end35.do.body47_crit_edge, %if.end35.do.body47_crit_edge193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and48 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end69_crit_edge, label %do.body51

do.body47.do.end69_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

do.body51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_make_node.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_make_node, %land.lhs.true57)) #14
          to label %do.end69 [label %land.lhs.true57], !srcloc !142

land.lhs.true57:                                  ; preds = %do.body51
  %call58 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_make_node._rs, ptr noundef nonnull @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end69_crit_edge, label %if.then60

land.lhs.true57.do.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_make_node.descriptor, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.4) #14
  br label %do.end69

do.end69:                                         ; preds = %if.then60, %land.lhs.true57.do.end69_crit_edge, %do.body51, %do.body47.do.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 109) #18
  %cmp71 = icmp eq ptr %call7.i, null
  br i1 %cmp71, label %do.end69.out_crit_edge, label %if.end74

do.end69.out_crit_edge:                           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end74:                                         ; preds = %do.end69
  %49 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb76 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %50 = ptrtoint ptr %cifs_sb76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %3, ptr %cifs_sb76, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %51 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1073741824, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end74.cifs_create_options.exit_crit_edge, label %land.lhs.true.i

if.end74.cifs_create_options.exit_crit_edge:      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cifs_create_options.exit

land.lhs.true.i:                                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %3) #14
  %spec.select.i = select i1 %call.i, i32 536887360, i32 536870976
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %land.lhs.true.i, %if.end74.cifs_create_options.exit_crit_edge
  %retval.0.i190 = phi i32 [ 536870976, %if.end74.cifs_create_options.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %52 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i190, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %53 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %54 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %full_path, ptr %path, align 4
  %fid78 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %55 = ptrtoint ptr %fid78 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %fid, ptr %fid78, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %56 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load79 = load i8, ptr %reconnect, align 2
  %bf.clear80 = and i8 %bf.load79, 127
  store i8 %bf.clear80, ptr %reconnect, align 2
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %57 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %server, align 8
  %oplocks = getelementptr inbounds %struct.TCP_Server_Info, ptr %60, i32 0, i32 37
  %61 = ptrtoint ptr %oplocks to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load81 = load i8, ptr %oplocks, align 8
  %62 = lshr i8 %bf.load81, 6
  %63 = and i8 %62, 2
  %64 = zext i8 %63 to i32
  %65 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %oplock, align 4
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %60, i32 0, i32 5
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %open = getelementptr inbounds %struct.smb_version_operations, ptr %67, i32 0, i32 54
  %68 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %open, align 4
  %call89 = call i32 %69(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef nonnull %call7.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %cifs_create_options.exit.out_crit_edge

cifs_create_options.exit.out_crit_edge:           ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end92:                                         ; preds = %cifs_create_options.exit
  %70 = call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i191 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i191 to ptr
  %task94 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task94 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task94, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 69
  %74 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %76 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %pid, align 8
  %tcon95 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %77 = ptrtoint ptr %tcon95 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tcon, ptr %tcon95, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %78 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %79 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 24, ptr %length, align 8
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i, ptr %10, align 4
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 24, ptr %11, align 4
  %82 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %45, label %if.end92.if.end131_crit_edge [
    i16 8192, label %if.end92.if.end131.sink.split_crit_edge
    i16 24576, label %if.then115
  ]

if.end92.if.end131.sink.split_crit_edge:          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131.sink.split

if.end92.if.end131_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131

if.then115:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131.sink.split

if.end131.sink.split:                             ; preds = %if.then115, %if.end92.if.end131.sink.split_crit_edge
  %.sink = phi i64 [ 5291294672064105216, %if.then115 ], [ 5291294672080622080, %if.end92.if.end131.sink.split_crit_edge ]
  %83 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %.sink, ptr %call7.i, align 8
  %shr118 = lshr i32 %dev, 20
  %conv119 = zext i32 %shr118 to i64
  %84 = call i64 @llvm.bswap.i64(i64 %conv119)
  %major120 = getelementptr inbounds %struct.win_dev, ptr %call7.i, i32 0, i32 1
  %85 = ptrtoint ptr %major120 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %major120, align 8
  %and121 = and i32 %dev, 1048575
  %conv122 = zext i32 %and121 to i64
  %86 = call i64 @llvm.bswap.i64(i64 %conv122)
  %minor123 = getelementptr inbounds %struct.win_dev, ptr %call7.i, i32 0, i32 2
  %87 = ptrtoint ptr %minor123 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %minor123, align 8
  %88 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ses, align 8
  %server125 = getelementptr inbounds %struct.cifs_ses, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %server125 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %server125, align 8
  %ops126 = getelementptr inbounds %struct.TCP_Server_Info, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %ops126 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops126, align 4
  %sync_write127 = getelementptr inbounds %struct.smb_version_operations, ptr %93, i32 0, i32 62
  %94 = ptrtoint ptr %sync_write127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sync_write127, align 4
  %call129 = call i32 %95(i32 noundef %xid, ptr noundef nonnull %fid, ptr noundef nonnull %io_parms, ptr noundef nonnull %bytes_written, ptr noundef nonnull %iov, i32 noundef 1) #14
  br label %if.end131

if.end131:                                        ; preds = %if.end131.sink.split, %if.end92.if.end131_crit_edge
  %rc.1 = phi i32 [ 0, %if.end92.if.end131_crit_edge ], [ %call129, %if.end131.sink.split ]
  %96 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ses, align 8
  %server133 = getelementptr inbounds %struct.cifs_ses, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %server133 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %server133, align 8
  %ops134 = getelementptr inbounds %struct.TCP_Server_Info, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %ops134 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops134, align 4
  %close = getelementptr inbounds %struct.smb_version_operations, ptr %101, i32 0, i32 56
  %102 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %close, align 4
  call void %103(i32 noundef %xid, ptr noundef %tcon, ptr noundef nonnull %fid) #14
  call void @d_drop(ptr noundef %dentry) #14
  br label %out

out:                                              ; preds = %if.end131, %cifs_create_options.exit.out_crit_edge, %do.end69.out_crit_edge, %if.end35.out_crit_edge, %if.end30.out_crit_edge, %cleanup
  %buf.0 = phi ptr [ null, %cleanup ], [ %call7.i, %cifs_create_options.exit.out_crit_edge ], [ %call7.i, %if.end131 ], [ null, %if.end30.out_crit_edge ], [ null, %if.end35.out_crit_edge ], [ null, %do.end69.out_crit_edge ]
  %rc.2 = phi i32 [ %rc.0, %cleanup ], [ %call89, %cifs_create_options.exit.out_crit_edge ], [ %rc.1, %if.end131 ], [ -1, %if.end30.out_crit_edge ], [ -1, %if.end35.out_crit_edge ], [ -12, %do.end69.out_crit_edge ]
  call void @kfree(ptr noundef %buf.0) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_written) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newinode) #14
  ret i32 %rc.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_sign_smb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_set_oplock_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check2ndT2(ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %1)
  %cmp.not = icmp eq i8 %1, 50
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 13
  %2 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp3.not = icmp eq i8 %3, 10
  br i1 %cmp3.not, label %if.end21, label %do.body6

do.body6:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6.cleanup_crit_edge, label %do.body8

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check2ndT2.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check2ndT2, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !142

land.lhs.true:                                    ; preds = %do.body8
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @check2ndT2._rs, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.then14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check2ndT2.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %TotalDataCount = getelementptr inbounds %struct.smb_t2_rsp, ptr %buf, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %TotalDataCount to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %TotalDataCount, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #14
  %DataCount = getelementptr inbounds %struct.smb_t2_rsp, ptr %buf, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %DataCount to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %DataCount, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #14
  %conv25 = zext i16 %7 to i32
  %conv26 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %9)
  %cmp27 = icmp eq i16 %6, %9
  br i1 %cmp27, label %if.end21.cleanup_crit_edge, label %if.else30

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp33 = icmp ult i16 %7, %10
  br i1 %cmp33, label %do.body37, label %if.end69

do.body37:                                        ; preds = %if.else30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and38 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.cleanup_crit_edge, label %do.body41

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check2ndT2.descriptor.20, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check2ndT2, %land.lhs.true53)) #14
          to label %cleanup [label %land.lhs.true53], !srcloc !142

land.lhs.true53:                                  ; preds = %do.body41
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @check2ndT2._rs.19, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.cleanup_crit_edge, label %if.then56

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check2ndT2.descriptor.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4, i32 noundef %conv25, i32 noundef %conv26) #14
  br label %cleanup

if.end69:                                         ; preds = %if.else30
  %sub = sub nsw i32 %conv25, %conv26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and74 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end69.do.end101_crit_edge, label %do.body77

if.end69.do.end101_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

do.body77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check2ndT2.descriptor.23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check2ndT2, %land.lhs.true89)) #14
          to label %do.end101 [label %land.lhs.true89], !srcloc !142

land.lhs.true89:                                  ; preds = %do.body77
  %call90 = tail call i32 @___ratelimit(ptr noundef nonnull @check2ndT2._rs.22, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true89.do.end101_crit_edge, label %if.then92

land.lhs.true89.do.end101_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

if.then92:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check2ndT2.descriptor.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4, i32 noundef %sub) #14
  br label %do.end101

do.end101:                                        ; preds = %if.then92, %land.lhs.true89.do.end101_crit_edge, %do.body77, %if.end69.do.end101_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %13 = load i32, ptr @CIFSMaxBufSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv25)
  %cmp103 = icmp ult i32 %13, %conv25
  br i1 %cmp103, label %do.body107, label %do.end101.cleanup_crit_edge

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body107:                                       ; preds = %do.end101
  %call108 = tail call i32 @___ratelimit(ptr noundef nonnull @check2ndT2._rs.25, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.body107.cleanup_crit_edge, label %do.end113

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %14 = load i32, ptr @CIFSMaxBufSize, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv25, i32 noundef %14) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %do.body107.cleanup_crit_edge, %do.end101.cleanup_crit_edge, %if.then56, %land.lhs.true53.cleanup_crit_edge, %do.body41, %do.body37.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then14, %land.lhs.true.cleanup_crit_edge, %do.body8, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.body6.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then14 ], [ 0, %if.end21.cleanup_crit_edge ], [ -22, %do.body37.cleanup_crit_edge ], [ -22, %land.lhs.true53.cleanup_crit_edge ], [ -22, %if.then56 ], [ -22, %do.end113 ], [ -22, %do.body107.cleanup_crit_edge ], [ %sub, %do.end101.cleanup_crit_edge ], [ -22, %do.body8 ], [ -22, %do.body41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coalesce_t2(ptr nocapture noundef readonly %second_buf, ptr nocapture noundef %target_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %TotalDataCount = getelementptr inbounds %struct.smb_t2_rsp, ptr %second_buf, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %TotalDataCount to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %TotalDataCount, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #14
  %TotalDataCount2 = getelementptr inbounds %struct.smb_t2_rsp, ptr %target_hdr, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %TotalDataCount2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %TotalDataCount2, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #14
  %conv = zext i16 %5 to i32
  %conv4 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %1)
  %cmp.not = icmp eq i16 %4, %1
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %do.body6

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.body6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6.if.end23_crit_edge, label %do.body8

do.body6.if.end23_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.body8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true)) #14
          to label %if.end23 [label %land.lhs.true], !srcloc !142

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end23_crit_edge, label %if.then15

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef %conv4, i32 noundef %conv) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %land.lhs.true.if.end23_crit_edge, %do.body8, %do.body6.if.end23_crit_edge, %entry.if.end23_crit_edge
  %DataCount = getelementptr inbounds %struct.smb_t2_rsp, ptr %target_hdr, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %DataCount to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %DataCount, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #14
  %conv26 = zext i16 %9 to i32
  %sub = sub nsw i32 %conv, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %do.body32, label %if.end62

do.body32:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and33 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.cleanup_crit_edge, label %do.body36

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.30, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true48)) #14
          to label %cleanup [label %land.lhs.true48], !srcloc !142

land.lhs.true48:                                  ; preds = %do.body36
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.29, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.cleanup_crit_edge, label %if.then51

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv26) #14
  br label %cleanup

if.end62:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %8)
  %cmp63 = icmp eq i16 %4, %8
  br i1 %cmp63, label %do.body67, label %if.end96

do.body67:                                        ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and68 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.cleanup_crit_edge, label %do.body71

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.33, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true83)) #14
          to label %cleanup [label %land.lhs.true83], !srcloc !142

land.lhs.true83:                                  ; preds = %do.body71
  %call84 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.32, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.cleanup_crit_edge, label %if.then86

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end96:                                         ; preds = %if.end62
  %DataCount98 = getelementptr inbounds %struct.smb_t2_rsp, ptr %second_buf, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %DataCount98 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %DataCount98, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #14
  %conv100 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv100)
  %cmp101 = icmp ult i32 %sub, %conv100
  br i1 %cmp101, label %do.body105, label %if.end96.if.end134_crit_edge

if.end96.if.end134_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

do.body105:                                       ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %15 = load i32, ptr @cifsFYI, align 4
  %and106 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.if.end134_crit_edge, label %do.body109

do.body105.if.end134_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

do.body109:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.36, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true121)) #14
          to label %if.end134 [label %land.lhs.true121], !srcloc !142

land.lhs.true121:                                 ; preds = %do.body109
  %call122 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.35, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true121.if.end134_crit_edge, label %if.then124

land.lhs.true121.if.end134_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then124:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.4) #14
  br label %if.end134

if.end134:                                        ; preds = %if.then124, %land.lhs.true121.if.end134_crit_edge, %do.body109, %do.body105.if.end134_crit_edge, %if.end96.if.end134_crit_edge
  %Protocol = getelementptr inbounds %struct.smb_hdr, ptr %target_hdr, i32 0, i32 1
  %DataOffset = getelementptr inbounds %struct.smb_t2_rsp, ptr %target_hdr, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %DataOffset to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %DataOffset, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #14
  %conv137 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %Protocol, i32 %conv137
  %Protocol139 = getelementptr inbounds %struct.smb_hdr, ptr %second_buf, i32 0, i32 1
  %DataOffset141 = getelementptr inbounds %struct.smb_t2_rsp, ptr %second_buf, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %DataOffset141 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %DataOffset141, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #14
  %conv143 = zext i16 %21 to i32
  %add.ptr144 = getelementptr i8, ptr %Protocol139, i32 %conv143
  %add.ptr145 = getelementptr i8, ptr %add.ptr, i32 %conv26
  %add = add nuw nsw i32 %conv100, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp147 = icmp ugt i32 %add, 65535
  br i1 %cmp147, label %do.body151, label %if.end180

do.body151:                                       ; preds = %if.end134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and152 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.cleanup_crit_edge, label %do.body155

do.body151.cleanup_crit_edge:                     ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body155:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.39, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true167)) #14
          to label %cleanup [label %land.lhs.true167], !srcloc !142

land.lhs.true167:                                 ; preds = %do.body155
  %call168 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.38, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %land.lhs.true167.cleanup_crit_edge, label %if.then170

land.lhs.true167.cleanup_crit_edge:               ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then170:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, i32 noundef %add) #14
  br label %cleanup

if.end180:                                        ; preds = %if.end134
  %conv181 = trunc i32 %add to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv181) #14
  %24 = ptrtoint ptr %DataCount to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %DataCount, align 1
  %add.ptr.i.i = getelementptr i8, ptr %target_hdr, i32 37
  %WordCount.i.i = getelementptr inbounds %struct.smb_hdr, ptr %target_hdr, i32 0, i32 13
  %25 = ptrtoint ptr %WordCount.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %WordCount.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr1.i.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #14
  %conv185 = zext i16 %29 to i32
  %add187 = add nuw nsw i32 %conv185, %conv100
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add187)
  %cmp188 = icmp ugt i32 %add187, 65535
  br i1 %cmp188, label %do.body192, label %if.end221

do.body192:                                       ; preds = %if.end180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %30 = load i32, ptr @cifsFYI, align 4
  %and193 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.cleanup_crit_edge, label %do.body196

do.body192.cleanup_crit_edge:                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body196:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.42, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true208)) #14
          to label %cleanup [label %land.lhs.true208], !srcloc !142

land.lhs.true208:                                 ; preds = %do.body196
  %call209 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.41, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %land.lhs.true208.cleanup_crit_edge, label %if.then211

land.lhs.true208.cleanup_crit_edge:               ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then211:                                       ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, i32 noundef %add187) #14
  br label %cleanup

if.end221:                                        ; preds = %if.end180
  %conv222 = trunc i32 %add187 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv222) #14
  %32 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %add.ptr1.i.i, align 1
  %33 = ptrtoint ptr %target_hdr to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %target_hdr, align 1
  %add224 = add i32 %34, %conv100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %35 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub226 = add i32 %35, 84
  call void @__sanitizer_cov_trace_cmp4(i32 %add224, i32 %sub226)
  %cmp227 = icmp ugt i32 %add224, %sub226
  br i1 %cmp227, label %do.body231, label %if.end260

do.body231:                                       ; preds = %if.end221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %36 = load i32, ptr @cifsFYI, align 4
  %and232 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body231.cleanup_crit_edge, label %do.body235

do.body231.cleanup_crit_edge:                     ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body235:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.45, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true247)) #14
          to label %cleanup [label %land.lhs.true247], !srcloc !142

land.lhs.true247:                                 ; preds = %do.body235
  %call248 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.44, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %land.lhs.true247.cleanup_crit_edge, label %if.then250

land.lhs.true247.cleanup_crit_edge:               ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then250:                                       ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef %add224) #14
  br label %cleanup

if.end260:                                        ; preds = %if.end221
  %37 = ptrtoint ptr %target_hdr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %add224, ptr %target_hdr, align 1
  %38 = call ptr @memcpy(ptr %add.ptr145, ptr %add.ptr144, i32 %conv100)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv100)
  %cmp264.not = icmp eq i32 %sub, %conv100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %39 = load i32, ptr @cifsFYI, align 4
  %and300 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %cmp264.not, label %do.body299, label %do.body268

do.body268:                                       ; preds = %if.end260
  br i1 %tobool301.not, label %do.body268.cleanup_crit_edge, label %do.body272

do.body268.cleanup_crit_edge:                     ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body272:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.48, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true284)) #14
          to label %cleanup [label %land.lhs.true284], !srcloc !142

land.lhs.true284:                                 ; preds = %do.body272
  %call285 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.47, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %land.lhs.true284.cleanup_crit_edge, label %if.then287

land.lhs.true284.cleanup_crit_edge:               ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then287:                                       ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.4) #14
  br label %cleanup

do.body299:                                       ; preds = %if.end260
  br i1 %tobool301.not, label %do.body299.cleanup_crit_edge, label %do.body303

do.body299.cleanup_crit_edge:                     ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body303:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coalesce_t2.descriptor.51, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coalesce_t2, %land.lhs.true315)) #14
          to label %cleanup [label %land.lhs.true315], !srcloc !142

land.lhs.true315:                                 ; preds = %do.body303
  %call316 = tail call i32 @___ratelimit(ptr noundef nonnull @coalesce_t2._rs.50, ptr noundef nonnull @.str.27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %land.lhs.true315.cleanup_crit_edge, label %if.then318

land.lhs.true315.cleanup_crit_edge:               ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then318:                                       ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @coalesce_t2.descriptor.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then318, %land.lhs.true315.cleanup_crit_edge, %do.body303, %do.body299.cleanup_crit_edge, %if.then287, %land.lhs.true284.cleanup_crit_edge, %do.body272, %do.body268.cleanup_crit_edge, %if.then250, %land.lhs.true247.cleanup_crit_edge, %do.body235, %do.body231.cleanup_crit_edge, %if.then211, %land.lhs.true208.cleanup_crit_edge, %do.body196, %do.body192.cleanup_crit_edge, %if.then170, %land.lhs.true167.cleanup_crit_edge, %do.body155, %do.body151.cleanup_crit_edge, %if.then86, %land.lhs.true83.cleanup_crit_edge, %do.body71, %do.body67.cleanup_crit_edge, %if.then51, %land.lhs.true48.cleanup_crit_edge, %do.body36, %do.body32.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.body32.cleanup_crit_edge ], [ -71, %land.lhs.true48.cleanup_crit_edge ], [ -71, %if.then51 ], [ 0, %do.body67.cleanup_crit_edge ], [ 0, %land.lhs.true83.cleanup_crit_edge ], [ 0, %if.then86 ], [ -71, %do.body151.cleanup_crit_edge ], [ -71, %land.lhs.true167.cleanup_crit_edge ], [ -71, %if.then170 ], [ -71, %do.body192.cleanup_crit_edge ], [ -71, %land.lhs.true208.cleanup_crit_edge ], [ -71, %if.then211 ], [ -105, %do.body231.cleanup_crit_edge ], [ -105, %land.lhs.true247.cleanup_crit_edge ], [ -105, %if.then250 ], [ 1, %do.body268.cleanup_crit_edge ], [ 1, %land.lhs.true284.cleanup_crit_edge ], [ 1, %if.then287 ], [ 0, %do.body299.cleanup_crit_edge ], [ 0, %land.lhs.true315.cleanup_crit_edge ], [ 0, %if.then318 ], [ -71, %do.body36 ], [ 0, %do.body71 ], [ -71, %do.body155 ], [ -71, %do.body196 ], [ -105, %do.body235 ], [ 1, %do.body272 ], [ 0, %do.body303 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dequeue_mid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBNegotiate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQFSDeviceInfo(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQFSAttributeInfo(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQPathInfo(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMBQueryInformation(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFS_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBClose(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQFileInfo(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSGetSrvInodeNumber(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_writable_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetPathInfo(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetFileInfo(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifsFileInfo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMB_set_compression(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixQuerySymLink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQuerySymLink(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfs_cache_find(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMBLegacyOpen(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBFlush(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBRead(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBWrite2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSFindFirst(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSFindNext(i32 noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSFindClose(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBLock(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQFSPosixInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBQFSInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMBOldQFSInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixSetPathInfo(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_inode_info_unix(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !123, !125, !126, !127, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @smb1_operations, !1, !"smb1_operations", i1 false, i1 false}
!1 = !{!"../fs/cifs/smb1ops.c", i32 1155, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/cifs/smb1ops.c", i32 1240, i32 20}
!4 = !{ptr @smb1_values, !5, !"smb1_values", i1 false, i1 false}
!5 = !{!"../fs/cifs/smb1ops.c", i32 1239, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cifs/smb1ops.c", i32 60, i32 2}
!8 = !{ptr @send_nt_cancel._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @send_nt_cancel.descriptor, !7, !"descriptor", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cifs/smb1ops.c", i32 652, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/cifs/smb1ops.c", i32 654, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/cifs/smb1ops.c", i32 657, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/cifs/smb1ops.c", i32 660, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/cifs/smb1ops.c", i32 662, i32 16}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/cifs/smb1ops.c", i32 666, i32 16}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/cifs/smb1ops.c", i32 670, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/cifs/smb1ops.c", i32 673, i32 16}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/cifs/smb1ops.c", i32 676, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/cifs/smb1ops.c", i32 679, i32 16}
!34 = !{ptr @cifs_check_trans2._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/smb1ops.c", i32 406, i32 3}
!36 = !{ptr @__func__.cifs_check_trans2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cifs_check_trans2._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cifs_check_trans2._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @check2ndT2._rs, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../fs/cifs/smb1ops.c", i32 257, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @check2ndT2.descriptor, !41, !"descriptor", i1 false, i1 false}
!45 = !{ptr @check2ndT2._rs.19, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../fs/cifs/smb1ops.c", i32 269, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @check2ndT2.descriptor.20, !46, !"descriptor", i1 false, i1 false}
!49 = !{ptr @check2ndT2._rs.22, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/cifs/smb1ops.c", i32 276, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @check2ndT2.descriptor.23, !50, !"descriptor", i1 false, i1 false}
!53 = !{ptr @check2ndT2._rs.25, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../fs/cifs/smb1ops.c", i32 279, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @check2ndT2._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @check2ndT2._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @coalesce_t2._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../fs/cifs/smb1ops.c", i32 301, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @coalesce_t2.descriptor, !59, !"descriptor", i1 false, i1 false}
!63 = !{ptr @coalesce_t2._rs.29, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../fs/cifs/smb1ops.c", i32 309, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @coalesce_t2.descriptor.30, !64, !"descriptor", i1 false, i1 false}
!67 = !{ptr @coalesce_t2._rs.32, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/smb1ops.c", i32 316, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @coalesce_t2.descriptor.33, !68, !"descriptor", i1 false, i1 false}
!71 = !{ptr @coalesce_t2._rs.35, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../fs/cifs/smb1ops.c", i32 322, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @coalesce_t2.descriptor.36, !72, !"descriptor", i1 false, i1 false}
!75 = !{ptr @coalesce_t2._rs.38, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../fs/cifs/smb1ops.c", i32 337, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @coalesce_t2.descriptor.39, !76, !"descriptor", i1 false, i1 false}
!79 = !{ptr @coalesce_t2._rs.41, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/smb1ops.c", i32 348, i32 3}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @coalesce_t2.descriptor.42, !80, !"descriptor", i1 false, i1 false}
!83 = !{ptr @coalesce_t2._rs.44, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../fs/cifs/smb1ops.c", i32 357, i32 3}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @coalesce_t2.descriptor.45, !84, !"descriptor", i1 false, i1 false}
!87 = !{ptr @coalesce_t2._rs.47, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../fs/cifs/smb1ops.c", i32 368, i32 3}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @coalesce_t2.descriptor.48, !88, !"descriptor", i1 false, i1 false}
!91 = !{ptr @coalesce_t2._rs.50, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../fs/cifs/smb1ops.c", i32 373, i32 2}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @coalesce_t2.descriptor.51, !92, !"descriptor", i1 false, i1 false}
!95 = !{ptr @smb_set_file_info._rs, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../fs/cifs/smb1ops.c", i32 812, i32 2}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @smb_set_file_info.descriptor, !96, !"descriptor", i1 false, i1 false}
!100 = !{ptr @cifs_query_symlink._rs, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../fs/cifs/smb1ops.c", i32 958, i32 2}
!102 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cifs_query_symlink.descriptor, !101, !"descriptor", i1 false, i1 false}
!105 = !{ptr @cifs_query_symlink._rs.57, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../fs/cifs/smb1ops.c", i32 961, i32 3}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cifs_query_symlink._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cifs_query_symlink._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @cifs_query_symlink._rs.59, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../fs/cifs/smb1ops.c", i32 1002, i32 3}
!112 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cifs_query_symlink.descriptor.60, !111, !"descriptor", i1 false, i1 false}
!114 = !{ptr @cifs_query_dir_first._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../fs/cifs/smb1ops.c", i32 855, i32 3}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cifs_query_dir_first.descriptor, !115, !"descriptor", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../fs/cifs/smb1ops.c", i32 1063, i32 15}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../fs/cifs/smb1ops.c", i32 1064, i32 15}
!123 = !{ptr @cifs_make_node._rs, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../fs/cifs/smb1ops.c", i32 1093, i32 2}
!125 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cifs_make_node.descriptor, !124, !"descriptor", i1 false, i1 false}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/cifs/smb1ops.c", i32 1132, i32 22}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/cifs/smb1ops.c", i32 1138, i32 22}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148338783, i64 2148338788, i64 2148338801, i64 2148338845, i64 2148338879, i64 2148338900}
!143 = !{i8 0, i8 2}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 2148739636, i64 2148739668, i64 2148739697, i64 2148739731, i64 2148739762, i64 2148739785}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{!"auto-init"}
