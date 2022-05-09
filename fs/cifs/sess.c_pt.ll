; ModuleID = '/llk/IR_all_yes/fs/cifs/sess.c_pt.bc'
source_filename = "../fs/cifs/sess.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.cifs_server_iface = type { i32, i8, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.141 }
%union.anon.141 = type { ptr, [124 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.51 = type { %struct.callback_head }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct._CHALLENGE_MESSAGE = type { [8 x i8], i32, %struct._SECURITY_BUFFER, i32, [8 x i8], [8 x i8], %struct._SECURITY_BUFFER }
%struct._SECURITY_BUFFER = type { i16, i16, i32 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct._NEGOTIATE_MESSAGE = type { [8 x i8], i32, i32, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, [0 x i8] }
%struct.negotiate_message = type { [8 x i8], i32, i32, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, %struct.ntlmssp_version, [0 x i8] }
%struct.ntlmssp_version = type { i8, i8, i16, [3 x i8], i8 }
%struct._AUTHENTICATE_MESSAGE = type { [8 x i8], i32, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, %struct._SECURITY_BUFFER, i32, [0 x i8] }
%struct.sess_data = type { i32, ptr, ptr, ptr, ptr, i32, i32, [3 x %struct.kvec] }
%struct.kvec = type { ptr, i32 }
%struct.anon.161 = type <{ %struct.smb_hdr, i8, i8, i16, i16, i16, i16, i32, i16, i32, i32, i16, [1 x i8] }>
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.157, i8, i16, i16, %union.anon.159, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, i32 }
%struct.anon.162 = type <{ %struct.smb_hdr, i8, i8, i16, i16, i16, i16, i32, i16, i16, i32, i32, i16, [1 x i8] }>
%struct.anon.163 = type <{ %struct.smb_hdr, i8, i8, i16, i16, i16, i16, [1 x i8] }>
%struct.key = type { %struct.refcount_struct, i32, %union.anon.12, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.13, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.14, %union.anon.18, ptr }
%union.anon.12 = type { %struct.rb_node }
%union.anon.13 = type { i64 }
%union.anon.14 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.15, ptr, ptr, ptr }
%union.anon.15 = type { i32 }
%union.anon.18 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cifs_spnego_msg = type { i32, i32, i32, i32, [1 x i8] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/cifs/sess.c\00", [17 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_chan_set_need_reconnect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_chan_set_need_reconnect.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cifs_chan_set_need_reconnect\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: Set reconnect bitmask for chan %u; now 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_chan_clear_need_reconnect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_chan_clear_need_reconnect.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cifs_chan_clear_need_reconnect\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"CIFS: %s: Cleared reconnect bitmask for chan %u; now 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cifs_try_adding_channels\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"CIFS: %s: ses already at max_channels (%zu), nothing to open\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013CIFS: VFS: multichannel is not supported on this protocol version, use 3.0 or above\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry_ptr = internal global ptr @cifs_try_adding_channels._entry, section ".printk_index", align 4
@cifs_try_adding_channels._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: server %s does not support multichannel\0A\00", [42 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry_ptr.14 = internal global ptr @cifs_try_adding_channels._entry.12, section ".printk_index", align 4
@cifs_try_adding_channels._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: no iface list available to open channels\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._entry_ptr.18 = internal global ptr @cifs_try_adding_channels._entry.16, section ".printk_index", align 4
@cifs_try_adding_channels._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels.descriptor.20 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.21, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"CIFS: %s: too many channel open attempts (%d channels left to open)\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels.descriptor.23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.24, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CIFS: %s: failed to open extra channel on iface#%d rc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_try_adding_channels.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.27, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CIFS: %s: successfully opened new channel on iface#%d\0A\00", [41 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.decode_ntlmssp_challenge = private unnamed_addr constant [25 x i8] c"decode_ntlmssp_challenge\00", align 1
@decode_ntlmssp_challenge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: challenge blob len %d too small\0A\00", [50 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr = internal global ptr @decode_ntlmssp_challenge._entry, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTLMSSP\00", [24 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: blob signature incorrect %s\0A\00", [54 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.33 = internal global ptr @decode_ntlmssp_challenge._entry.31, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: Incorrect message type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.37 = internal global ptr @decode_ntlmssp_challenge._entry.35, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, ptr @.str.39, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: negotiate=0x%08x challenge=0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013CIFS: VFS: %s: requested signing/encryption but server did not return either 56-bit or 128-bit session key size\0A\00", [45 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.43 = internal global ptr @decode_ntlmssp_challenge._entry.41, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013CIFS: VFS: %s: server does not seem to support either NTLMv1 or NTLMv2\0A\00", [54 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.47 = internal global ptr @decode_ntlmssp_challenge._entry.45, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013CIFS: VFS: %s: forced packet signing but server does not seem to support it\0A\00", [49 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.51 = internal global ptr @decode_ntlmssp_challenge._entry.49, section ".printk_index", align 4
@decode_ntlmssp_challenge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@decode_ntlmssp_challenge._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014CIFS: %s: authentication has been weakened as server does not support key exchange\0A\00", [42 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.54 = internal global ptr @decode_ntlmssp_challenge._entry.52, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: tioffset + tilen too high %u + %u\0A\00", [48 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.58 = internal global ptr @decode_ntlmssp_challenge._entry.56, section ".printk_index", align 4
@decode_ntlmssp_challenge._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.decode_ntlmssp_challenge, ptr @.str, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: Challenge target info alloc failure\0A\00", [46 x i8] zeroinitializer }, align 32
@decode_ntlmssp_challenge._entry_ptr.62 = internal global ptr @decode_ntlmssp_challenge._entry.60, section ".printk_index", align 4
@build_ntlmssp_negotiate_blob._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.build_ntlmssp_negotiate_blob = private unnamed_addr constant [29 x i8] c"build_ntlmssp_negotiate_blob\00", align 1
@build_ntlmssp_negotiate_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.build_ntlmssp_negotiate_blob, ptr @.str, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: Error %d during NTLMSSP allocation\0A\00", [47 x i8] zeroinitializer }, align 32
@build_ntlmssp_negotiate_blob._entry_ptr = internal global ptr @build_ntlmssp_negotiate_blob._entry, section ".printk_index", align 4
@build_ntlmssp_smb3_negotiate_blob._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.build_ntlmssp_smb3_negotiate_blob = private unnamed_addr constant [34 x i8] c"build_ntlmssp_smb3_negotiate_blob\00", align 1
@build_ntlmssp_smb3_negotiate_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.build_ntlmssp_smb3_negotiate_blob, ptr @.str, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@build_ntlmssp_smb3_negotiate_blob._entry_ptr = internal global ptr @build_ntlmssp_smb3_negotiate_blob._entry, section ".printk_index", align 4
@build_ntlmssp_auth_blob._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.build_ntlmssp_auth_blob = private unnamed_addr constant [24 x i8] c"build_ntlmssp_auth_blob\00", align 1
@build_ntlmssp_auth_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.build_ntlmssp_auth_blob, ptr @.str, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: Error %d during NTLMSSP authentication\0A\00", [43 x i8] zeroinitializer }, align 32
@build_ntlmssp_auth_blob._entry_ptr = internal global ptr @build_ntlmssp_auth_blob._entry, section ".printk_index", align 4
@build_ntlmssp_auth_blob._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@build_ntlmssp_auth_blob._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.build_ntlmssp_auth_blob, ptr @.str, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@build_ntlmssp_auth_blob._entry_ptr.67 = internal global ptr @build_ntlmssp_auth_blob._entry.66, section ".printk_index", align 4
@global_secflags = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: ses == NULL!\00", [47 x i8] zeroinitializer }, align 32
@__func__.CIFS_SessSetup = private unnamed_addr constant [15 x i8] c"CIFS_SessSetup\00", align 1
@cifs_ses_add_channel.unc_fmt = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\\%s\\foo\00", [24 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.69, ptr @.str, ptr @.str.70, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_ses_add_channel\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_ses_add_channel._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel.descriptor.72 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.69, ptr @.str, ptr @.str.73, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"CIFS: %s: adding channel to ses %p (speed:%zu bps rdma:%s ip:%pI4)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel.descriptor.77 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.69, ptr @.str, ptr @.str.78, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"CIFS: %s: adding channel to ses %p (speed:%zu bps rdma:%s ip:%pI6)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cifs_ses_add_channel._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.69, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CIFS: VFS: %s: crypto alloc failed\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_ses_add_channel._entry_ptr = internal global ptr @cifs_ses_add_channel._entry, section ".printk_index", align 4
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@select_sec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@select_sec.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.85, ptr @.str, ptr @.str.86, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"select_sec\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: sess setup type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@select_sec._rs.87 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@select_sec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.85, ptr @.str, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: Unable to select appropriate authentication method!\0A\00", [62 x i8] zeroinitializer }, align 32
@select_sec._entry_ptr = internal global ptr @select_sec._entry, section ".printk_index", align 4
@select_sec._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@select_sec._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str, i32 1676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: secType %d not supported!\0A\00", [56 x i8] zeroinitializer }, align 32
@select_sec._entry_ptr.92 = internal global ptr @select_sec._entry.90, section ".printk_index", align 4
@sess_auth_ntlmv2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sess_auth_ntlmv2 = private unnamed_addr constant [17 x i8] c"sess_auth_ntlmv2\00", align 1
@sess_auth_ntlmv2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @__func__.sess_auth_ntlmv2, ptr @.str, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CIFS: VFS: Error %d during NTLMv2 authentication\0A\00", [44 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2._entry_ptr = internal global ptr @sess_auth_ntlmv2._entry, section ".printk_index", align 4
@sess_auth_ntlmv2._rs.94 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.sess_auth_ntlmv2, ptr @.str, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CIFS: VFS: bad word count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2._entry_ptr.97 = internal global ptr @sess_auth_ntlmv2._entry.95, section ".printk_index", align 4
@sess_auth_ntlmv2._rs.98 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @__func__.sess_auth_ntlmv2, ptr @.str, ptr @.str.99, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: Guest login\0A\00", [41 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_ntlmv2.descriptor.101 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @__func__.sess_auth_ntlmv2, ptr @.str, ptr @.str.102, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIFS: %s: UID = %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Linux version \00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIFS VFS Client for Linux\00", [38 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@ascii_ssetup_strings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ascii_ssetup_strings.__already_done.105 = internal unnamed_addr global i1 false, section ".data.once", align 1
@decode_unicode_ssetup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str, ptr @.str.107, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"decode_unicode_ssetup\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CIFS: %s: bleft %d\0A\00", [44 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup.descriptor.109 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str, ptr @.str.110, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: serverOS=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup._rs.111 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup.descriptor.112 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str, ptr @.str.113, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: serverNOS=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup._rs.114 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_unicode_ssetup.descriptor.115 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str, ptr @.str.116, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: serverDomain=%s\0A\00", [37 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.117, ptr @.str, ptr @.str.118, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode_ascii_ssetup\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CIFS: %s: decode sessetup ascii. bleft %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OS/2\00", [27 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup._rs.120 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup.descriptor.121 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.117, ptr @.str, ptr @.str.122, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: OS/2 server\0A\00", [41 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup._rs.123 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@decode_ascii_ssetup.descriptor.124 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.117, ptr @.str, ptr @.str.125, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: ascii: bytes left %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sess_establish_session._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_establish_session.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.126, ptr @.str, ptr @.str.127, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sess_establish_session\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: CIFS session established successfully\0A\00", [47 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sess_auth_kerberos = private unnamed_addr constant [19 x i8] c"sess_auth_kerberos\00", align 1
@sess_auth_kerberos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @__func__.sess_auth_kerberos, ptr @.str, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013CIFS: VFS: incorrect version of cifs.upcall (expected %d but got %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry_ptr = internal global ptr @sess_auth_kerberos._entry, section ".printk_index", align 4
@sess_auth_kerberos._rs.129 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @__func__.sess_auth_kerberos, ptr @.str, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: Kerberos can't allocate (%u bytes) memory\0A\00", [40 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry_ptr.132 = internal global ptr @sess_auth_kerberos._entry.130, section ".printk_index", align 4
@sess_auth_kerberos._rs.133 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.sess_auth_kerberos, ptr @.str, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry_ptr.135 = internal global ptr @sess_auth_kerberos._entry.134, section ".printk_index", align 4
@sess_auth_kerberos._rs.136 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_kerberos.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @__func__.sess_auth_kerberos, ptr @.str, ptr @.str.99, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sess_auth_kerberos._rs.137 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_kerberos.descriptor.138 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @__func__.sess_auth_kerberos, ptr @.str, ptr @.str.102, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sess_auth_kerberos._rs.139 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @__func__.sess_auth_kerberos, ptr @.str, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: bad security blob length %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sess_auth_kerberos._entry_ptr.142 = internal global ptr @sess_auth_kerberos._entry.140, section ".printk_index", align 4
@sess_auth_rawntlmssp_negotiate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.143, ptr @.str, ptr @.str.144, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sess_auth_rawntlmssp_negotiate\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: rawntlmssp session setup negotiate phase\0A\00", [44 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._rs.145 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate.descriptor.146 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.143, ptr @.str, ptr @.str.147, i8 1, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: rawntlmssp session setup challenge phase\0A\00", [44 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._rs.148 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.143, ptr @.str, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._entry_ptr = internal global ptr @sess_auth_rawntlmssp_negotiate._entry, section ".printk_index", align 4
@sess_auth_rawntlmssp_negotiate._rs.149 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate.descriptor.150 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.143, ptr @.str, ptr @.str.102, i8 1, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sess_auth_rawntlmssp_negotiate._rs.151 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.143, ptr @.str, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_negotiate._entry_ptr.153 = internal global ptr @sess_auth_rawntlmssp_negotiate._entry.152, section ".printk_index", align 4
@_sess_auth_rawntlmssp_assemble_req._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__._sess_auth_rawntlmssp_assemble_req = private unnamed_addr constant [35 x i8] c"_sess_auth_rawntlmssp_assemble_req\00", align 1
@_sess_auth_rawntlmssp_assemble_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @__func__._sess_auth_rawntlmssp_assemble_req, ptr @.str, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: NTLMSSP requires Unicode support\0A\00", [49 x i8] zeroinitializer }, align 32
@_sess_auth_rawntlmssp_assemble_req._entry_ptr = internal global ptr @_sess_auth_rawntlmssp_assemble_req._entry, section ".printk_index", align 4
@sess_auth_rawntlmssp_authenticate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.155, ptr @.str, ptr @.str.156, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sess_auth_rawntlmssp_authenticate\00", [62 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CIFS: %s: rawntlmssp session setup authenticate phase\0A\00", [41 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._rs.157 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.155, ptr @.str, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._entry_ptr = internal global ptr @sess_auth_rawntlmssp_authenticate._entry, section ".printk_index", align 4
@sess_auth_rawntlmssp_authenticate._rs.158 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate.descriptor.159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.155, ptr @.str, ptr @.str.99, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sess_auth_rawntlmssp_authenticate._rs.160 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate.descriptor.161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.155, ptr @.str, ptr @.str.162, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: UID changed! new UID = %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._rs.163 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.155, ptr @.str, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sess_auth_rawntlmssp_authenticate._entry_ptr.165 = internal global ptr @sess_auth_rawntlmssp_authenticate._entry.164, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.174 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 84, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 95, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 106, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 137, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 145, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 152, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 166, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 187, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 200, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 206, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 636, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 640, i32 31 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 641, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 646, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 652, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 657, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 662, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 666, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 672, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 685, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 693, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 778, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 840, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 901, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 910, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1691, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [8 x i8] c"unc_fmt\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 243, i32 20 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 248, i32 21 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 251, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 255, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 287, i32 16 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 341, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 609, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 108, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1654, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1656, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1676, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1171, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1211, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1216, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1219, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 426, i32 49 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 434, i32 50 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 547, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 551, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 560, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 569, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 581, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 593, i32 30 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 594, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 624, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1114, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1288, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1297, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1337, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1342, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1345, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1352, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1445, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1494, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1498, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1503, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1510, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1407, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1551, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1588, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1593, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1597, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.656 = private constant [18 x i8] c"../fs/cifs/sess.c\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1604, i32 3 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @_sess_auth_rawntlmssp_assemble_req._entry, ptr @_sess_auth_rawntlmssp_assemble_req._entry_ptr, ptr @build_ntlmssp_auth_blob._entry, ptr @build_ntlmssp_auth_blob._entry.66, ptr @build_ntlmssp_auth_blob._entry_ptr, ptr @build_ntlmssp_auth_blob._entry_ptr.67, ptr @build_ntlmssp_negotiate_blob._entry, ptr @build_ntlmssp_negotiate_blob._entry_ptr, ptr @build_ntlmssp_smb3_negotiate_blob._entry, ptr @build_ntlmssp_smb3_negotiate_blob._entry_ptr, ptr @cifs_ses_add_channel._entry, ptr @cifs_ses_add_channel._entry_ptr, ptr @cifs_try_adding_channels._entry, ptr @cifs_try_adding_channels._entry.12, ptr @cifs_try_adding_channels._entry.16, ptr @cifs_try_adding_channels._entry_ptr, ptr @cifs_try_adding_channels._entry_ptr.14, ptr @cifs_try_adding_channels._entry_ptr.18, ptr @decode_ntlmssp_challenge._entry, ptr @decode_ntlmssp_challenge._entry.31, ptr @decode_ntlmssp_challenge._entry.35, ptr @decode_ntlmssp_challenge._entry.41, ptr @decode_ntlmssp_challenge._entry.45, ptr @decode_ntlmssp_challenge._entry.49, ptr @decode_ntlmssp_challenge._entry.52, ptr @decode_ntlmssp_challenge._entry.56, ptr @decode_ntlmssp_challenge._entry.60, ptr @decode_ntlmssp_challenge._entry_ptr, ptr @decode_ntlmssp_challenge._entry_ptr.33, ptr @decode_ntlmssp_challenge._entry_ptr.37, ptr @decode_ntlmssp_challenge._entry_ptr.43, ptr @decode_ntlmssp_challenge._entry_ptr.47, ptr @decode_ntlmssp_challenge._entry_ptr.51, ptr @decode_ntlmssp_challenge._entry_ptr.54, ptr @decode_ntlmssp_challenge._entry_ptr.58, ptr @decode_ntlmssp_challenge._entry_ptr.62, ptr @select_sec._entry, ptr @select_sec._entry.90, ptr @select_sec._entry_ptr, ptr @select_sec._entry_ptr.92, ptr @sess_auth_kerberos._entry, ptr @sess_auth_kerberos._entry.130, ptr @sess_auth_kerberos._entry.134, ptr @sess_auth_kerberos._entry.140, ptr @sess_auth_kerberos._entry_ptr, ptr @sess_auth_kerberos._entry_ptr.132, ptr @sess_auth_kerberos._entry_ptr.135, ptr @sess_auth_kerberos._entry_ptr.142, ptr @sess_auth_ntlmv2._entry, ptr @sess_auth_ntlmv2._entry.95, ptr @sess_auth_ntlmv2._entry_ptr, ptr @sess_auth_ntlmv2._entry_ptr.97, ptr @sess_auth_rawntlmssp_authenticate._entry, ptr @sess_auth_rawntlmssp_authenticate._entry.164, ptr @sess_auth_rawntlmssp_authenticate._entry_ptr, ptr @sess_auth_rawntlmssp_authenticate._entry_ptr.165, ptr @sess_auth_rawntlmssp_negotiate._entry, ptr @sess_auth_rawntlmssp_negotiate._entry.152, ptr @sess_auth_rawntlmssp_negotiate._entry_ptr, ptr @sess_auth_rawntlmssp_negotiate._entry_ptr.153, ptr @.str, ptr @cifs_chan_set_need_reconnect._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_chan_clear_need_reconnect._rs, ptr @.str.5, ptr @.str.6, ptr @cifs_try_adding_channels._rs, ptr @.str.7, ptr @.str.8, ptr @cifs_try_adding_channels._rs.9, ptr @.str.10, ptr @cifs_try_adding_channels._rs.11, ptr @.str.13, ptr @cifs_try_adding_channels._rs.15, ptr @.str.17, ptr @cifs_try_adding_channels._rs.19, ptr @.str.21, ptr @cifs_try_adding_channels._rs.22, ptr @.str.24, ptr @cifs_try_adding_channels._rs.25, ptr @.str.27, ptr @decode_ntlmssp_challenge._rs, ptr @.str.28, ptr @.str.29, ptr @decode_ntlmssp_challenge._rs.30, ptr @.str.32, ptr @decode_ntlmssp_challenge._rs.34, ptr @.str.36, ptr @decode_ntlmssp_challenge._rs.38, ptr @.str.39, ptr @decode_ntlmssp_challenge._rs.40, ptr @.str.42, ptr @decode_ntlmssp_challenge._rs.44, ptr @.str.46, ptr @decode_ntlmssp_challenge._rs.48, ptr @.str.50, ptr @.str.53, ptr @decode_ntlmssp_challenge._rs.55, ptr @.str.57, ptr @decode_ntlmssp_challenge._rs.59, ptr @.str.61, ptr @build_ntlmssp_negotiate_blob._rs, ptr @.str.63, ptr @build_ntlmssp_smb3_negotiate_blob._rs, ptr @build_ntlmssp_auth_blob._rs, ptr @.str.64, ptr @build_ntlmssp_auth_blob._rs.65, ptr @.str.68, ptr @cifs_ses_add_channel.unc_fmt, ptr @cifs_ses_add_channel._rs, ptr @.str.69, ptr @.str.70, ptr @cifs_ses_add_channel._rs.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @cifs_ses_add_channel._rs.76, ptr @.str.78, ptr @.str.79, ptr @cifs_ses_add_channel._rs.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @select_sec._rs, ptr @.str.85, ptr @.str.86, ptr @select_sec._rs.87, ptr @.str.88, ptr @select_sec._rs.89, ptr @.str.91, ptr @sess_auth_ntlmv2._rs, ptr @.str.93, ptr @sess_auth_ntlmv2._rs.94, ptr @.str.96, ptr @sess_auth_ntlmv2._rs.98, ptr @.str.99, ptr @sess_auth_ntlmv2._rs.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @decode_unicode_ssetup._rs, ptr @.str.106, ptr @.str.107, ptr @decode_unicode_ssetup._rs.108, ptr @.str.110, ptr @decode_unicode_ssetup._rs.111, ptr @.str.113, ptr @decode_unicode_ssetup._rs.114, ptr @.str.116, ptr @decode_ascii_ssetup._rs, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @decode_ascii_ssetup._rs.120, ptr @.str.122, ptr @decode_ascii_ssetup._rs.123, ptr @.str.125, ptr @sess_establish_session._rs, ptr @.str.126, ptr @.str.127, ptr @sess_auth_kerberos._rs, ptr @.str.128, ptr @sess_auth_kerberos._rs.129, ptr @.str.131, ptr @sess_auth_kerberos._rs.133, ptr @sess_auth_kerberos._rs.136, ptr @sess_auth_kerberos._rs.137, ptr @sess_auth_kerberos._rs.139, ptr @.str.141, ptr @sess_auth_rawntlmssp_negotiate._rs, ptr @.str.143, ptr @.str.144, ptr @sess_auth_rawntlmssp_negotiate._rs.145, ptr @.str.147, ptr @sess_auth_rawntlmssp_negotiate._rs.148, ptr @sess_auth_rawntlmssp_negotiate._rs.149, ptr @sess_auth_rawntlmssp_negotiate._rs.151, ptr @_sess_auth_rawntlmssp_assemble_req._rs, ptr @.str.154, ptr @sess_auth_rawntlmssp_authenticate._rs, ptr @.str.155, ptr @.str.156, ptr @sess_auth_rawntlmssp_authenticate._rs.157, ptr @sess_auth_rawntlmssp_authenticate._rs.158, ptr @sess_auth_rawntlmssp_authenticate._rs.160, ptr @.str.162, ptr @sess_auth_rawntlmssp_authenticate._rs.163], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_chan_set_need_reconnect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_chan_clear_need_reconnect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_try_adding_channels._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ntlmssp_challenge._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_negotiate_blob._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_negotiate_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_smb3_negotiate_blob._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_smb3_negotiate_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_auth_blob._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_auth_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_auth_blob._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_ntlmssp_auth_blob._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel.unc_fmt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ses_add_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_sec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_sec._rs.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_sec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_sec._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_sec._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._rs.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._rs.98 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_ntlmv2._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_unicode_ssetup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_unicode_ssetup._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_unicode_ssetup._rs.111 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_unicode_ssetup._rs.114 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ascii_ssetup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ascii_ssetup._rs.120 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ascii_ssetup._rs.123 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_establish_session._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs.129 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs.133 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs.137 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._rs.139 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_kerberos._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._rs.145 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._rs.148 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._rs.149 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._rs.151 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_negotiate._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sess_auth_rawntlmssp_assemble_req._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sess_auth_rawntlmssp_assemble_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._rs.157 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._rs.158 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._rs.160 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._rs.163 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_auth_rawntlmssp_authenticate._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_server_using_iface(ptr nocapture noundef readonly %server, ptr nocapture noundef readonly %iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sockaddr = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %0 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dstaddr, align 8
  %2 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sockaddr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.end.cleanup_crit_edge [
    i16 2, label %if.then13
    i16 10, label %if.then25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %sin_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10, i32 0, i32 1
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr, align 4
  %sin_addr14 = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %sin_addr14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sin_addr14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp16.not = icmp eq i32 %6, %8
  br i1 %cmp16.not, label %if.then13.if.end33_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13.if.end33_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then25:                                        ; preds = %if.end
  %sin6_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10, i32 0, i32 1, i32 4
  %sin6_addr26 = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr, ptr noundef dereferenceable(16) %sin6_addr26, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp27.not = icmp eq i32 %bcmp, 0
  br i1 %cmp27.not, label %if.then25.if.end33_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %if.then25.if.end33_crit_edge, %if.then13.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then25.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end33 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then13.cleanup_crit_edge ], [ false, %if.then25.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_ses_using_iface(ptr noundef %ses, ptr nocapture noundef readonly %iface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sockaddr.i = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2
  %2 = ptrtoint ptr %sockaddr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sockaddr.i, align 4
  %sin6_addr26.i = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1, i32 4
  %sin_addr14.i = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp14 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dstaddr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %dstaddr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dstaddr.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %3)
  %cmp.not.i = icmp eq i16 %7, %3
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %8 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %3, label %if.end.i.for.inc_crit_edge [
    i16 2, label %if.then13.i
    i16 10, label %if.then25.i
  ]

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then13.i:                                      ; preds = %if.end.i
  %sin_addr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %5, i32 0, i32 10, i32 0, i32 1
  %9 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sin_addr.i, align 4
  %11 = ptrtoint ptr %sin_addr14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin_addr14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp16.not.i = icmp eq i32 %10, %12
  br i1 %cmp16.not.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.for.inc_crit_edge

if.then13.i.for.inc_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then25.i:                                      ; preds = %if.end.i
  %sin6_addr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %5, i32 0, i32 10, i32 0, i32 1, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i, ptr noundef dereferenceable(16) %sin6_addr26.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp27.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp27.not.i, label %if.then25.i.cleanup_crit_edge, label %if.then25.i.for.inc_crit_edge

if.then25.i.for.inc_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then25.i.cleanup_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %if.then25.i.for.inc_crit_edge, %if.then13.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.013, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp ult i32 %inc, %1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then25.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp11 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp14, %if.then25.i.cleanup_crit_edge ], [ %cmp14, %if.then13.i.cleanup_crit_edge ], [ %cmp, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  ret i1 %cmp11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_ses_get_chan_index(ptr nocapture noundef readonly %ses, ptr noundef readnone %server) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %server
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %i.026, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_chan_set_need_reconnect(ptr noundef %ses, ptr noundef readnone %server) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not.i = icmp eq i32 %1, 0
  br i1 %cmp25.not.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.026.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %3, %server
  br i1 %cmp2.i, label %for.body.i.cifs_ses_get_chan_index.exit_crit_edge, label %for.inc.i

for.body.i.cifs_ses_get_chan_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ses_get_chan_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #15
  br label %cifs_ses_get_chan_index.exit

cifs_ses_get_chan_index.exit:                     ; preds = %do.end.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge
  %retval.0.i19 = phi i32 [ 0, %do.end.i ], [ %i.026.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge ]
  %chans_need_reconnect = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 40
  tail call void @_set_bit(i32 noundef %retval.0.i19, ptr noundef %chans_need_reconnect) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cifs_ses_get_chan_index.exit.do.end15_crit_edge, label %do.body2

cifs_ses_get_chan_index.exit.do.end15_crit_edge:  ; preds = %cifs_ses_get_chan_index.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body2:                                         ; preds = %cifs_ses_get_chan_index.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_chan_set_need_reconnect.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_chan_set_need_reconnect, %land.lhs.true)) #15
          to label %do.end15 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_chan_set_need_reconnect._rs, ptr noundef nonnull @.str.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end15_crit_edge, label %if.then9

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %chans_need_reconnect to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chans_need_reconnect, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_chan_set_need_reconnect.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef %retval.0.i19, i32 noundef %6) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %land.lhs.true.do.end15_crit_edge, %do.body2, %cifs_ses_get_chan_index.exit.do.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_chan_clear_need_reconnect(ptr noundef %ses, ptr noundef readnone %server) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not.i = icmp eq i32 %1, 0
  br i1 %cmp25.not.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.026.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %3, %server
  br i1 %cmp2.i, label %for.body.i.cifs_ses_get_chan_index.exit_crit_edge, label %for.inc.i

for.body.i.cifs_ses_get_chan_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ses_get_chan_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #15
  br label %cifs_ses_get_chan_index.exit

cifs_ses_get_chan_index.exit:                     ; preds = %do.end.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge
  %retval.0.i19 = phi i32 [ 0, %do.end.i ], [ %i.026.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge ]
  %chans_need_reconnect = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 40
  tail call void @_clear_bit(i32 noundef %retval.0.i19, ptr noundef %chans_need_reconnect) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cifs_ses_get_chan_index.exit.do.end15_crit_edge, label %do.body2

cifs_ses_get_chan_index.exit.do.end15_crit_edge:  ; preds = %cifs_ses_get_chan_index.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body2:                                         ; preds = %cifs_ses_get_chan_index.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_chan_clear_need_reconnect.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_chan_clear_need_reconnect, %land.lhs.true)) #15
          to label %do.end15 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_chan_clear_need_reconnect._rs, ptr noundef nonnull @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end15_crit_edge, label %if.then9

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %chans_need_reconnect to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chans_need_reconnect, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_chan_clear_need_reconnect.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef %retval.0.i19, i32 noundef %6) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %land.lhs.true.do.end15_crit_edge, %do.body2, %cifs_ses_get_chan_index.exit.do.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cifs_chan_needs_reconnect(ptr noundef %ses, ptr noundef readnone %server) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not.i = icmp eq i32 %1, 0
  br i1 %cmp25.not.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i3 = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.026.i
  %2 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i3, align 4
  %cmp2.i = icmp eq ptr %3, %server
  br i1 %cmp2.i, label %for.body.i.cifs_ses_get_chan_index.exit_crit_edge, label %for.inc.i

for.body.i.cifs_ses_get_chan_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ses_get_chan_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #15
  br label %cifs_ses_get_chan_index.exit

cifs_ses_get_chan_index.exit:                     ; preds = %do.end.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %i.026.i, %for.body.i.cifs_ses_get_chan_index.exit_crit_edge ]
  %chans_need_reconnect = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 40
  %div3.i = lshr i32 %retval.0.i, 5
  %arrayidx.i = getelementptr i32, ptr %chans_need_reconnect, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %retval.0.i, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_try_adding_channels(ptr nocapture noundef readonly %cifs_sb, ptr noundef %ses) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count, align 8
  %chan_max = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 38
  %2 = ptrtoint ptr %chan_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_max, align 4
  %sub = sub i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup202_crit_edge, label %do.body5

if.then.cleanup202_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_try_adding_channels.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_try_adding_channels, %land.lhs.true)) #15
          to label %cleanup202 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup202_crit_edge, label %if.then11

land.lhs.true.cleanup202_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %chan_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_max, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_try_adding_channels.descriptor, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef %6) #15
  br label %cleanup202

if.end18:                                         ; preds = %entry
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %7 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server, align 8
  %dialect = getelementptr inbounds %struct.TCP_Server_Info, ptr %8, i32 0, i32 36
  %9 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dialect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %10)
  %cmp19 = icmp ult i16 %10, 768
  br i1 %cmp19, label %if.then21, label %if.end38

if.then21:                                        ; preds = %if.end18
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.9, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then21.cleanup202_crit_edge, label %do.end30

if.then21.cleanup202_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

do.end30:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #20
  br label %cleanup202

if.end38:                                         ; preds = %if.end18
  %capabilities = getelementptr inbounds %struct.TCP_Server_Info, ptr %8, i32 0, i32 41
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 8
  %and40 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end61

if.then42:                                        ; preds = %if.end38
  %13 = ptrtoint ptr %chan_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %chan_max, align 4
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.11, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then42.cleanup202_crit_edge, label %do.end52

if.then42.cleanup202_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

do.end52:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %server, align 8
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostname, align 8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %17) #20
  br label %cleanup202

if.end61:                                         ; preds = %if.end38
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  %iface_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %iface_lock) #15
  %iface_count63 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 33
  %18 = ptrtoint ptr %iface_count63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iface_count63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp64 = icmp eq i32 %19, 0
  br i1 %cmp64, label %if.then66, label %if.end83

if.then66:                                        ; preds = %if.end61
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #15
  %call70 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.15, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then66.cleanup202_crit_edge, label %do.end75

if.then66.cleanup202_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

do.end75:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #20
  br label %cleanup202

if.end83:                                         ; preds = %if.end61
  %iface_list = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 32
  %20 = ptrtoint ptr %iface_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iface_list, align 8
  %mul = mul i32 %19, 136
  %call84 = tail call ptr @kmemdup(ptr noundef %21, i32 noundef %mul, i32 noundef 2592) #15
  %tobool85.not = icmp eq ptr %call84, null
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #15
  br i1 %tobool85.not, label %if.end83.cleanup202_crit_edge, label %if.end83.while.cond_crit_edge

if.end83.while.cond_crit_edge:                    ; preds = %if.end83
  br label %while.cond

if.end83.cleanup202_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end83.while.cond_crit_edge
  %tries.0 = phi i32 [ %inc, %cleanup.while.cond_crit_edge ], [ 0, %if.end83.while.cond_crit_edge ]
  %i.0 = phi i32 [ %i.1, %cleanup.while.cond_crit_edge ], [ 0, %if.end83.while.cond_crit_edge ]
  %left.0 = phi i32 [ %left.1, %cleanup.while.cond_crit_edge ], [ %sub, %if.end83.while.cond_crit_edge ]
  %new_chan_count.0 = phi i32 [ %new_chan_count.1, %cleanup.while.cond_crit_edge ], [ %1, %if.end83.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0)
  %cmp90 = icmp sgt i32 %left.0, 0
  br i1 %cmp90, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add i32 %tries.0, 1
  %22 = ptrtoint ptr %chan_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan_max, align 4
  %mul93 = mul i32 %23, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %mul93)
  %cmp94 = icmp ugt i32 %inc, %mul93
  br i1 %cmp94, label %do.body98, label %if.end127

do.body98:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and99 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.while.end_crit_edge, label %do.body102

do.body98.while.end_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.body102:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_try_adding_channels.descriptor.20, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_try_adding_channels, %land.lhs.true114)) #15
          to label %cleanup [label %land.lhs.true114], !srcloc !316

land.lhs.true114:                                 ; preds = %do.body102
  %call115 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.19, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true114.while.end_crit_edge, label %if.then117

land.lhs.true114.while.end_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_try_adding_channels.descriptor.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef %left.0) #15
  br label %while.end

if.end127:                                        ; preds = %while.body
  %arrayidx = getelementptr %struct.cifs_server_iface, ptr %call84, i32 %i.0
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %25 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12.not.i = icmp eq i32 %26, 0
  br i1 %cmp12.not.i, label %is_ses_using_iface.exit.thread, label %for.body.lr.ph.i

is_ses_using_iface.exit.thread:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  br label %if.end133

for.body.lr.ph.i:                                 ; preds = %if.end127
  %sockaddr.i.i = getelementptr %struct.cifs_server_iface, ptr %call84, i32 %i.0, i32 2
  %27 = ptrtoint ptr %sockaddr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sockaddr.i.i, align 4
  %sin6_addr26.i.i = getelementptr %struct.cifs_server_iface, ptr %call84, i32 %i.0, i32 2, i32 0, i32 1, i32 4
  %sin_addr14.i.i = getelementptr %struct.cifs_server_iface, ptr %call84, i32 %i.0, i32 2, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmp14.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i, %for.inc.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.013.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %dstaddr.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %dstaddr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dstaddr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %28)
  %cmp.not.i.i = icmp eq i16 %32, %28
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %33 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %28, label %if.end.i.i.for.inc.i_crit_edge [
    i16 2, label %if.then13.i.i
    i16 10, label %if.then25.i.i
  ]

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  %sin_addr.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 10, i32 0, i32 1
  %34 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sin_addr.i.i, align 4
  %36 = ptrtoint ptr %sin_addr14.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sin_addr14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp16.not.i.i = icmp eq i32 %35, %37
  br i1 %cmp16.not.i.i, label %if.then13.i.i.is_ses_using_iface.exit_crit_edge, label %if.then13.i.i.for.inc.i_crit_edge

if.then13.i.i.for.inc.i_crit_edge:                ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then13.i.i.is_ses_using_iface.exit_crit_edge:  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_ses_using_iface.exit

if.then25.i.i:                                    ; preds = %if.end.i.i
  %sin6_addr.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 10, i32 0, i32 1, i32 4
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i.i, ptr noundef dereferenceable(16) %sin6_addr26.i.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp27.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp27.not.i.i, label %if.then25.i.i.is_ses_using_iface.exit_crit_edge, label %if.then25.i.i.for.inc.i_crit_edge

if.then25.i.i.for.inc.i_crit_edge:                ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then25.i.i.is_ses_using_iface.exit_crit_edge:  ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_ses_using_iface.exit

for.inc.i:                                        ; preds = %if.then25.i.i.for.inc.i_crit_edge, %if.then13.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %26)
  %cmp.i = icmp ult i32 %inc.i, %26
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.inc.i.is_ses_using_iface.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.is_ses_using_iface.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_ses_using_iface.exit

is_ses_using_iface.exit:                          ; preds = %for.inc.i.is_ses_using_iface.exit_crit_edge, %if.then25.i.i.is_ses_using_iface.exit_crit_edge, %if.then13.i.i.is_ses_using_iface.exit_crit_edge
  %cmp11.i = phi i1 [ %cmp14.i, %if.then25.i.i.is_ses_using_iface.exit_crit_edge ], [ %cmp14.i, %if.then13.i.i.is_ses_using_iface.exit_crit_edge ], [ %cmp.i, %for.inc.i.is_ses_using_iface.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  br i1 %cmp11.i, label %land.lhs.true130, label %is_ses_using_iface.exit.if.end133_crit_edge

is_ses_using_iface.exit.if.end133_crit_edge:      ; preds = %is_ses_using_iface.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

land.lhs.true130:                                 ; preds = %is_ses_using_iface.exit
  %rss_capable = getelementptr %struct.cifs_server_iface, ptr %call84, i32 %i.0, i32 1
  %38 = ptrtoint ptr %rss_capable to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %rss_capable, align 4
  %39 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool131.not = icmp eq i8 %39, 0
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true130.if.end133_crit_edge

land.lhs.true130.if.end133_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.then132:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %i.0, 1
  %rem = urem i32 %add, %19
  br label %cleanup

if.end133:                                        ; preds = %land.lhs.true130.if.end133_crit_edge, %is_ses_using_iface.exit.if.end133_crit_edge, %is_ses_using_iface.exit.thread
  %call134 = tail call fastcc i32 @cifs_ses_add_channel(ptr noundef %cifs_sb, ptr noundef %ses, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %40 = load i32, ptr @cifsFYI, align 4
  %and172 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool135.not, label %do.body171, label %do.body138

do.body138:                                       ; preds = %if.end133
  br i1 %tobool173.not, label %do.body138.do.end166_crit_edge, label %do.body142

do.body138.do.end166_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end166

do.body142:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_try_adding_channels.descriptor.23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_try_adding_channels, %land.lhs.true154)) #15
          to label %do.end166 [label %land.lhs.true154], !srcloc !316

land.lhs.true154:                                 ; preds = %do.body142
  %call155 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.22, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %land.lhs.true154.do.end166_crit_edge, label %if.then157

land.lhs.true154.do.end166_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end166

if.then157:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_try_adding_channels.descriptor.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef %i.0, i32 noundef %call134) #15
  br label %do.end166

do.end166:                                        ; preds = %if.then157, %land.lhs.true154.do.end166_crit_edge, %do.body142, %do.body138.do.end166_crit_edge
  %add167 = add i32 %i.0, 1
  %rem168 = urem i32 %add167, %19
  br label %cleanup

do.body171:                                       ; preds = %if.end133
  br i1 %tobool173.not, label %do.body171.do.end199_crit_edge, label %do.body175

do.body171.do.end199_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end199

do.body175:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_try_adding_channels.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_try_adding_channels, %land.lhs.true187)) #15
          to label %do.end199 [label %land.lhs.true187], !srcloc !316

land.lhs.true187:                                 ; preds = %do.body175
  %call188 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_try_adding_channels._rs.25, ptr noundef nonnull @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %land.lhs.true187.do.end199_crit_edge, label %if.then190

land.lhs.true187.do.end199_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end199

if.then190:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_try_adding_channels.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef %i.0) #15
  br label %do.end199

do.end199:                                        ; preds = %if.then190, %land.lhs.true187.do.end199_crit_edge, %do.body175, %do.body171.do.end199_crit_edge
  %dec = add i32 %left.0, -1
  %inc200 = add i32 %new_chan_count.0, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end199, %do.end166, %if.then132, %do.body102
  %i.1 = phi i32 [ %rem168, %do.end166 ], [ %i.0, %do.end199 ], [ %rem, %if.then132 ], [ %i.0, %do.body102 ]
  %left.1 = phi i32 [ %left.0, %do.end166 ], [ %dec, %do.end199 ], [ %left.0, %if.then132 ], [ %left.0, %do.body102 ]
  %new_chan_count.1 = phi i32 [ %new_chan_count.0, %do.end166 ], [ %inc200, %do.end199 ], [ %new_chan_count.0, %if.then132 ], [ %new_chan_count.0, %do.body102 ]
  br i1 %cmp94, label %cleanup.while.end_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then117, %land.lhs.true114.while.end_crit_edge, %do.body98.while.end_crit_edge, %while.cond.while.end_crit_edge
  %new_chan_count.2 = phi i32 [ %new_chan_count.0, %land.lhs.true114.while.end_crit_edge ], [ %new_chan_count.0, %if.then117 ], [ %new_chan_count.0, %do.body98.while.end_crit_edge ], [ %new_chan_count.0, %while.cond.while.end_crit_edge ], [ %new_chan_count.1, %cleanup.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call84) #15
  %sub201 = sub i32 %new_chan_count.2, %1
  br label %cleanup202

cleanup202:                                       ; preds = %while.end, %if.end83.cleanup202_crit_edge, %do.end75, %if.then66.cleanup202_crit_edge, %do.end52, %if.then42.cleanup202_crit_edge, %do.end30, %if.then21.cleanup202_crit_edge, %if.then11, %land.lhs.true.cleanup202_crit_edge, %do.body5, %if.then.cleanup202_crit_edge
  %retval.0 = phi i32 [ %sub201, %while.end ], [ 0, %if.then.cleanup202_crit_edge ], [ 0, %land.lhs.true.cleanup202_crit_edge ], [ 0, %if.then11 ], [ 0, %do.end30 ], [ 0, %if.then21.cleanup202_crit_edge ], [ 0, %do.end52 ], [ 0, %if.then42.cleanup202_crit_edge ], [ 0, %do.end75 ], [ 0, %if.then66.cleanup202_crit_edge ], [ 0, %do.body5 ], [ 0, %if.end83.cleanup202_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_ses_add_channel(ptr nocapture noundef readonly %cifs_sb, ptr noundef %ses, ptr noundef %iface) unnamed_addr #2 align 64 {
entry:
  %ctx = alloca %struct.smb3_fs_context, align 8
  %unc = alloca [89 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %ctx) #15
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 480)
  call void @llvm.lifetime.start.p0(i64 89, ptr nonnull %unc) #15
  %1 = call ptr @memset(ptr %unc, i32 0, i32 89)
  %sockaddr = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2
  %call = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body3

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ses_add_channel.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ses_add_channel, %land.lhs.true)) #15
          to label %do.end21 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body3
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ses_add_channel._rs, ptr noundef nonnull @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end21_crit_edge, label %if.then10

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call14 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ses_add_channel.descriptor, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str, ptr noundef nonnull @.str.69, i32 noundef %call, i32 noundef %call14) #15
  br label %do.end21

do.end21:                                         ; preds = %if.then10, %land.lhs.true.do.end21_crit_edge, %do.body3, %entry.do.end21_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call)
  %10 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp = icmp eq i16 %11, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and28 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %cmp, label %do.body27, label %do.body59

do.body27:                                        ; preds = %do.end21
  br i1 %tobool29.not, label %do.body27.if.end95_crit_edge, label %do.body31

do.body27.if.end95_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

do.body31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ses_add_channel.descriptor.72, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ses_add_channel, %land.lhs.true43)) #15
          to label %if.end95 [label %land.lhs.true43], !srcloc !316

land.lhs.true43:                                  ; preds = %do.body31
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ses_add_channel._rs.71, ptr noundef nonnull @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end95_crit_edge, label %if.then46

land.lhs.true43.if.end95_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iface, align 4
  %rdma_capable = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 1
  %15 = ptrtoint ptr %rdma_capable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %rdma_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool47.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool47.not, ptr @.str.75, ptr @.str.74
  %sin_addr = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ses_add_channel.descriptor.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str, ptr noundef %ses, i32 noundef %14, ptr noundef nonnull %cond, ptr noundef %sin_addr) #15
  br label %if.end95

do.body59:                                        ; preds = %do.end21
  br i1 %tobool29.not, label %do.body59.if.end95_crit_edge, label %do.body63

do.body59.if.end95_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

do.body63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ses_add_channel.descriptor.77, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ses_add_channel, %land.lhs.true75)) #15
          to label %if.end95 [label %land.lhs.true75], !srcloc !316

land.lhs.true75:                                  ; preds = %do.body63
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ses_add_channel._rs.76, ptr noundef nonnull @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true75.if.end95_crit_edge, label %if.then78

land.lhs.true75.if.end95_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then78:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iface, align 4
  %rdma_capable80 = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 1
  %18 = ptrtoint ptr %rdma_capable80 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load81 = load i8, ptr %rdma_capable80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load81)
  %tobool84.not = icmp sgt i8 %bf.load81, -1
  %cond85 = select i1 %tobool84.not, ptr @.str.75, ptr @.str.74
  %sin6_addr = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ses_add_channel.descriptor.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str, ptr noundef %ses, i32 noundef %17, ptr noundef nonnull %cond85, ptr noundef %sin6_addr) #15
  br label %if.end95

if.end95:                                         ; preds = %if.then78, %land.lhs.true75.if.end95_crit_edge, %do.body63, %do.body59.if.end95_crit_edge, %if.then46, %land.lhs.true43.if.end95_crit_edge, %do.body31, %do.body27.if.end95_crit_edge
  %nosharesock = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %19 = ptrtoint ptr %nosharesock to i32
  call void @__asan_loadN_noabort(i32 %19, i32 5)
  %bf.load96 = load i40, ptr %nosharesock, align 1
  %domainAuto = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 25
  %20 = ptrtoint ptr %domainAuto to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load97 = load i8, ptr %domainAuto, align 1
  %bf.load97.lobit = and i8 %bf.load97, -128
  %bf.shl = zext i8 %bf.load97.lobit to i40
  %bf.set = and i40 %bf.load96, -2177
  %bf.clear101 = or i40 %bf.set, %bf.shl
  %bf.set102 = or i40 %bf.clear101, 2048
  store i40 %bf.set102, ptr %nosharesock, align 1
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %21 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domainName, align 4
  %domainname = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 13
  %23 = ptrtoint ptr %domainname to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %domainname, align 4
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %24 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server, align 8
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hostname, align 8
  %server_hostname = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 15
  %28 = ptrtoint ptr %server_hostname to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %server_hostname, align 4
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %29 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_name, align 8
  %username = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 11
  %31 = ptrtoint ptr %username to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %username, align 4
  %password = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 19
  %32 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %password, align 8
  %password104 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 12
  %34 = ptrtoint ptr %password104 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %password104, align 8
  %sectype = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 23
  %35 = ptrtoint ptr %sectype to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sectype, align 4
  %sectype105 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 29
  %37 = ptrtoint ptr %sectype105 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sectype105, align 8
  %sign = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 24
  %38 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sign, align 8, !range !317
  %sign107 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 30
  %40 = ptrtoint ptr %sign107 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sign107, align 4
  %ip_addr = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 16
  %call110 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %unc, ptr noundef nonnull @cifs_ses_add_channel.unc_fmt, ptr noundef %ip_addr)
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 16
  %41 = ptrtoint ptr %UNC to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %unc, ptr %UNC, align 8
  %prepath = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 48
  %42 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.79, ptr %prepath, align 8
  %43 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %server, align 8
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vals, align 8
  %vals113 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %47 = ptrtoint ptr %vals113 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %vals113, align 4
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 5
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %ops115 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %50 = ptrtoint ptr %ops115 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %ops115, align 8
  %noblocksnd = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 16
  %51 = ptrtoint ptr %noblocksnd to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %noblocksnd, align 4, !range !317
  %53 = zext i8 %52 to i40
  %54 = ptrtoint ptr %nosharesock to i32
  call void @__asan_loadN_noabort(i32 %54, i32 5)
  %bf.load119 = load i40, ptr %nosharesock, align 1
  %bf.shl120 = shl nuw nsw i40 %53, 19
  %bf.clear121 = and i40 %bf.load119, -786513
  %bf.set122 = or i40 %bf.clear121, %bf.shl120
  %noautotune = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 17
  %55 = ptrtoint ptr %noautotune to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %noautotune, align 1, !range !317
  %57 = zext i8 %56 to i40
  %bf.shl129 = shl nuw nsw i40 %57, 18
  %bf.set131 = or i40 %bf.shl129, %bf.set122
  %tcp_nodelay = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 19
  %58 = ptrtoint ptr %tcp_nodelay to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tcp_nodelay, align 1, !range !317
  %sockopt_tcp_nodelay = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 42
  %60 = ptrtoint ptr %sockopt_tcp_nodelay to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load136 = load i8, ptr %sockopt_tcp_nodelay, align 4
  %bf.shl137 = shl nuw i8 %59, 7
  %bf.clear138 = and i8 %bf.load136, 127
  %bf.set139 = or i8 %bf.clear138, %bf.shl137
  store i8 %bf.set139, ptr %sockopt_tcp_nodelay, align 4
  %echo_interval = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 83
  %61 = ptrtoint ptr %echo_interval to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %echo_interval, align 4
  %div = udiv i32 %62, 100
  %echo_interval142 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 52
  %63 = ptrtoint ptr %echo_interval142 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div, ptr %echo_interval142, align 8
  %max_credits = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 21
  %64 = ptrtoint ptr %max_credits to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_credits, align 4
  %max_credits144 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 56
  %66 = ptrtoint ptr %max_credits144 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %max_credits144, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %67 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %local_nls, align 4
  %local_nls145 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 51
  %69 = ptrtoint ptr %local_nls145 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %local_nls145, align 4
  %rdma_capable146 = getelementptr inbounds %struct.cifs_server_iface, ptr %iface, i32 0, i32 1
  %70 = ptrtoint ptr %rdma_capable146 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load147 = load i8, ptr %rdma_capable146, align 4
  %71 = lshr i8 %bf.load147, 1
  %72 = and i8 %71, 64
  %bf.shl152 = zext i8 %72 to i40
  %bf.set154 = or i40 %bf.set131, %bf.shl152
  %dstaddr = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 49
  %73 = call ptr @memcpy(ptr %dstaddr, ptr %sockaddr, i32 128)
  %client_guid = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 35
  %client_guid159 = getelementptr inbounds %struct.TCP_Server_Info, ptr %44, i32 0, i32 35
  %74 = call ptr @memcpy(ptr %client_guid, ptr %client_guid159, i32 16)
  %bf.set163 = or i40 %bf.set154, 16
  store i40 %bf.set163, ptr %nosharesock, align 1
  %call165 = call ptr @cifs_get_tcp_session(ptr noundef nonnull %ctx, ptr noundef %44) #15
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %75 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chan_count, align 8
  %arrayidx = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %76
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call165, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %call165 to i32
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx, align 4
  call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  br label %out

if.end174:                                        ; preds = %if.end95
  %80 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chan_count, align 8
  %inc = add i32 %81, 1
  store i32 %inc, ptr %chan_count, align 8
  %chan_seq = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 39
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %chan_seq, i32 noundef 4) #15
  %82 = ptrtoint ptr %chan_seq to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %chan_seq, align 4
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx, align 4
  call void @cifs_chan_set_need_reconnect(ptr noundef %ses, ptr noundef %84)
  call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  %session_mutex = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %session_mutex, i32 noundef 0) #15
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  %call179 = call i32 @smb311_crypto_shash_allocate(ptr noundef %86) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end198, label %do.body183

do.body183:                                       ; preds = %if.end174
  %call184 = call i32 @___ratelimit(ptr noundef nonnull @cifs_ses_add_channel._rs.80, ptr noundef nonnull @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %do.body183.out.thread_crit_edge, label %do.end189

do.body183.out.thread_crit_edge:                  ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

do.end189:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #17
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.69) #20
  br label %out.thread

out.thread:                                       ; preds = %do.end189, %do.body183.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef %session_mutex) #15
  br label %land.lhs.true209

if.end198:                                        ; preds = %if.end174
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx, align 4
  %call200 = call i32 @cifs_negotiate_protocol(i32 noundef %call, ptr noundef %ses, ptr noundef %88) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then202, label %if.end198.if.end206_crit_edge

if.end198.if.end206_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

if.then202:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx, align 4
  %91 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %local_nls, align 4
  %call205 = call i32 @cifs_setup_session(i32 noundef %call, ptr noundef %ses, ptr noundef %90, ptr noundef %92) #15
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.end198.if.end206_crit_edge
  %rc.0 = phi i32 [ %call200, %if.end198.if.end206_crit_edge ], [ %call205, %if.then202 ]
  call void @mutex_unlock(ptr noundef %session_mutex) #15
  br label %out

out:                                              ; preds = %if.end206, %if.then169
  %rc.1 = phi i32 [ %78, %if.then169 ], [ %rc.0, %if.end206 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool208.not = icmp eq i32 %rc.1, 0
  br i1 %tobool208.not, label %out.if.end256_crit_edge, label %out.land.lhs.true209_crit_edge

out.land.lhs.true209_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true209

out.if.end256_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end256

land.lhs.true209:                                 ; preds = %out.land.lhs.true209_crit_edge, %out.thread
  %rc.1333 = phi i32 [ %call179, %out.thread ], [ %rc.1, %out.land.lhs.true209_crit_edge ]
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %tobool211.not = icmp eq ptr %94, null
  br i1 %tobool211.not, label %land.lhs.true209.if.end256_crit_edge, label %if.then212

land.lhs.true209.if.end256_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end256

if.then212:                                       ; preds = %land.lhs.true209
  call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  call void @cifs_chan_clear_need_reconnect(ptr noundef %ses, ptr noundef %96)
  %97 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chan_count, align 8
  %dec = add i32 %98, -1
  store i32 %dec, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp217 = icmp eq i32 %dec, 0
  br i1 %cmp217, label %do.end234, label %if.then212.land.lhs.true251_crit_edge, !prof !318

if.then212.land.lhs.true251_crit_edge:            ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true251

do.end234:                                        ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #15
  br label %land.lhs.true251

land.lhs.true251:                                 ; preds = %do.end234, %if.then212.land.lhs.true251_crit_edge
  call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load ptr, ptr %arrayidx, align 4
  %tobool253.not = icmp eq ptr %.pr, null
  br i1 %tobool253.not, label %land.lhs.true251.if.end256_crit_edge, label %if.then254

land.lhs.true251.if.end256_crit_edge:             ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end256

if.then254:                                       ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #17
  call void @cifs_put_tcp_session(ptr noundef nonnull %.pr, i32 noundef 0) #15
  br label %if.end256

if.end256:                                        ; preds = %if.then254, %land.lhs.true251.if.end256_crit_edge, %land.lhs.true209.if.end256_crit_edge, %out.if.end256_crit_edge
  %rc.1334 = phi i32 [ 0, %out.if.end256_crit_edge ], [ %rc.1333, %if.then254 ], [ %rc.1333, %land.lhs.true251.if.end256_crit_edge ], [ %rc.1333, %land.lhs.true209.if.end256_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc) #15
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %ctx) #15
  ret i32 %rc.1334
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_ses_find_chan(ptr noundef %ses, ptr noundef readnone %server) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #15
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %0 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %server
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_ntlmssp_challenge(ptr noundef %bcc_ptr, i32 noundef %blob_len, ptr nocapture noundef %ses) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %blob_len)
  %cmp = icmp ult i32 %blob_len, 48
  br i1 %cmp, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %blob_len) #20
  br label %cleanup

if.end9:                                          ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bcc_ptr, ptr noundef nonnull dereferenceable(8) @.str.29, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end30, label %do.body14

do.body14:                                        ; preds = %if.end9
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.30, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %bcc_ptr) #20
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %MessageType = getelementptr inbounds %struct._CHALLENGE_MESSAGE, ptr %bcc_ptr, i32 0, i32 1
  %0 = ptrtoint ptr %MessageType to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %MessageType, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %1)
  %cmp31.not = icmp eq i32 %1, 33554432
  br i1 %cmp31.not, label %if.end49, label %do.body34

do.body34:                                        ; preds = %if.end30
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.34, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %do.end40

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %MessageType to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %MessageType, align 1
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %3) #20
  br label %cleanup

if.end49:                                         ; preds = %if.end30
  %NegotiateFlags = getelementptr inbounds %struct._CHALLENGE_MESSAGE, ptr %bcc_ptr, i32 0, i32 3
  %4 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %NegotiateFlags, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end49.do.end70_crit_edge, label %do.body54

if.end49.do.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end70

do.body54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_ntlmssp_challenge.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_ntlmssp_challenge, %land.lhs.true)) #15
          to label %do.end70 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body54
  %call60 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.38, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end70_crit_edge, label %if.then62

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end70

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %8 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ntlmssp, align 8
  %client_flags = getelementptr inbounds %struct.ntlmssp_auth, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %client_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %client_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_ntlmssp_challenge.descriptor, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.decode_ntlmssp_challenge, i32 noundef %11, i32 noundef %6) #15
  br label %do.end70

do.end70:                                         ; preds = %if.then62, %land.lhs.true.do.end70_crit_edge, %do.body54, %if.end49.do.end70_crit_edge
  %ntlmssp71 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %12 = ptrtoint ptr %ntlmssp71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ntlmssp71, align 8
  %client_flags72 = getelementptr inbounds %struct.ntlmssp_auth, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %client_flags72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %client_flags72, align 4
  %and73 = and i32 %15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp ne i32 %and73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool77.not = icmp sgt i32 %6, -1
  %or.cond = select i1 %tobool74.not, i1 %tobool77.not, i1 false
  %and79 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %or.cond264 = select i1 %or.cond, i1 %tobool80.not, i1 false
  br i1 %or.cond264, label %do.body83, label %if.end97

do.body83:                                        ; preds = %do.end70
  %call84 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.40, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body83.cleanup_crit_edge, label %do.end89

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #17
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #20
  br label %cleanup

if.end97:                                         ; preds = %do.end70
  %16 = and i32 %6, 524800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %do.body105, label %if.end119

do.body105:                                       ; preds = %if.end97
  %call106 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.44, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body105.cleanup_crit_edge, label %do.end111

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #20
  br label %cleanup

if.end119:                                        ; preds = %if.end97
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %18 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server, align 8
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sign, align 2, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool120.not = icmp ne i8 %21, 0
  %and122 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %or.cond266 = select i1 %tobool120.not, i1 %tobool123.not, i1 false
  br i1 %or.cond266, label %do.body126, label %if.end140

do.body126:                                       ; preds = %if.end119
  %call127 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.48, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %do.body126.cleanup_crit_edge, label %do.end132

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #17
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #20
  br label %cleanup

if.end140:                                        ; preds = %if.end119
  %and143 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp ne i32 %and143, 0
  %and146 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  %or.cond267 = select i1 %tobool144.not, i1 %tobool147.not, i1 false
  br i1 %or.cond267, label %land.end, label %if.end140.if.end173_crit_edge

if.end140.if.end173_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

land.end:                                         ; preds = %if.end140
  %.b263 = load i1, ptr @decode_ntlmssp_challenge.__already_done, align 1
  br i1 %.b263, label %land.end.if.end173_crit_edge, label %if.then159, !prof !319

land.end.if.end173_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

if.then159:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @decode_ntlmssp_challenge.__already_done, align 1
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #20
  br label %if.end173

if.end173:                                        ; preds = %if.then159, %land.end.if.end173_crit_edge, %if.end140.if.end173_crit_edge
  %22 = ptrtoint ptr %ntlmssp71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ntlmssp71, align 8
  %server_flags175 = getelementptr inbounds %struct.ntlmssp_auth, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %server_flags175 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %server_flags175, align 4
  %25 = load ptr, ptr %ntlmssp71, align 8
  %cryptkey = getelementptr inbounds %struct.ntlmssp_auth, ptr %25, i32 0, i32 4
  %Challenge = getelementptr inbounds %struct._CHALLENGE_MESSAGE, ptr %bcc_ptr, i32 0, i32 4
  %26 = ptrtoint ptr %Challenge to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %Challenge, align 1
  %28 = ptrtoint ptr %cryptkey to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %cryptkey, align 4
  %TargetInfoArray = getelementptr inbounds %struct._CHALLENGE_MESSAGE, ptr %bcc_ptr, i32 0, i32 6
  %BufferOffset = getelementptr inbounds %struct._CHALLENGE_MESSAGE, ptr %bcc_ptr, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %BufferOffset to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %BufferOffset, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %TargetInfoArray to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %TargetInfoArray, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %blob_len)
  %cmp180 = icmp ugt i32 %31, %blob_len
  %add = add i32 %31, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %blob_len)
  %cmp182 = icmp ugt i32 %add, %blob_len
  %or.cond268 = select i1 %cmp180, i1 true, i1 %cmp182
  br i1 %or.cond268, label %do.body186, label %if.end200

do.body186:                                       ; preds = %if.end173
  %call187 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.55, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %do.body186.cleanup_crit_edge, label %do.end192

do.body186.cleanup_crit_edge:                     ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #17
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %31, i32 noundef %conv) #20
  br label %cleanup

if.end200:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool201.not = icmp eq i16 %33, 0
  br i1 %tobool201.not, label %if.end200.cleanup_crit_edge, label %if.then202

if.end200.cleanup_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then202:                                       ; preds = %if.end200
  %add.ptr = getelementptr i8, ptr %bcc_ptr, i32 %31
  %call203 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %conv, i32 noundef 3264) #15
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %35 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call203, ptr %response, align 4
  %tobool206.not = icmp eq ptr %call203, null
  br i1 %tobool206.not, label %do.body209, label %if.end223

do.body209:                                       ; preds = %if.then202
  %call210 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ntlmssp_challenge._rs.59, ptr noundef nonnull @__func__.decode_ntlmssp_challenge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %do.body209.cleanup_crit_edge, label %do.end215

do.body209.cleanup_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end215:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #17
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #20
  br label %cleanup

if.end223:                                        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #17
  %auth_key = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %36 = ptrtoint ptr %auth_key to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %auth_key, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end223, %do.end215, %do.body209.cleanup_crit_edge, %if.end200.cleanup_crit_edge, %do.end192, %do.body186.cleanup_crit_edge, %do.end132, %do.body126.cleanup_crit_edge, %do.end111, %do.body105.cleanup_crit_edge, %do.end89, %do.body83.cleanup_crit_edge, %do.end40, %do.body34.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body1.cleanup_crit_edge ], [ -22, %do.end20 ], [ -22, %do.body14.cleanup_crit_edge ], [ -22, %do.end40 ], [ -22, %do.body34.cleanup_crit_edge ], [ -22, %do.end89 ], [ -22, %do.body83.cleanup_crit_edge ], [ -22, %do.end111 ], [ -22, %do.body105.cleanup_crit_edge ], [ -95, %do.end132 ], [ -95, %do.body126.cleanup_crit_edge ], [ -22, %do.end192 ], [ -22, %do.body186.cleanup_crit_edge ], [ -12, %do.end215 ], [ -12, %do.body209.cleanup_crit_edge ], [ 0, %if.end223 ], [ 0, %if.end200.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_ntlmssp_negotiate_blob(ptr nocapture noundef %pbuffer, ptr nocapture noundef writeonly %buflen, ptr nocapture noundef readonly %ses, ptr nocapture noundef readonly %server, ptr nocapture noundef readnone %nls_cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_key.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %0 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth_key.i, align 8
  %domainName.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %2 = ptrtoint ptr %domainName.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domainName.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i37

if.then.i37:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add2.i = add i32 %1, 34
  %call.i = tail call i32 @strnlen(ptr noundef nonnull %3, i32 noundef 256) #19
  %mul.i = shl i32 %call.i, 1
  %add4.i = add i32 %add2.i, %mul.i
  br label %if.end.i38

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add5.i = add i32 %1, 36
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.else.i, %if.then.i37
  %sz.0.i = phi i32 [ %add4.i, %if.then.i37 ], [ %add5.i, %if.else.i ]
  %user_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %4 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_name.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.end.i38.if.end14.i_crit_edge, label %if.then7.i

if.end.i38.if.end14.i_crit_edge:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i39 = tail call i32 @strnlen(ptr noundef nonnull %5, i32 noundef 256) #19
  %mul10.i = shl i32 %call9.i39, 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end.i38.if.end14.i_crit_edge
  %mul10.pn.i = phi i32 [ %mul10.i, %if.then7.i ], [ 2, %if.end.i38.if.end14.i_crit_edge ]
  %workstation_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 20
  %6 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workstation_name.i, align 4
  %tobool15.not.i = icmp eq ptr %7, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end8.i_crit_edge, label %if.then16.i

if.end14.i.if.end8.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i = tail call i32 @strnlen(ptr noundef nonnull %7, i32 noundef 65) #19
  %mul19.i = shl i32 %call18.i, 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16.i, %if.end14.i.if.end8.i_crit_edge
  %mul19.pn.i = phi i32 [ %mul19.i, %if.then16.i ], [ 2, %if.end14.i.if.end8.i_crit_edge ]
  %sz.1.i = add i32 %mul10.pn.i, %sz.0.i
  %sz.2.i = add i32 %sz.1.i, %mul19.pn.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sz.2.i, i32 noundef 3264) #21
  %8 = ptrtoint ptr %pbuffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %pbuffer, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %if.end8.i
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @build_ntlmssp_negotiate_blob._rs, ptr noundef nonnull @__func__.build_ntlmssp_negotiate_blob) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.setup_ntlm_neg_ret_crit_edge, label %do.end

if.then.setup_ntlm_neg_ret_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %setup_ntlm_neg_ret

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef -12) #20
  br label %setup_ntlm_neg_ret

if.end13:                                         ; preds = %if.end8.i
  %9 = getelementptr inbounds i8, ptr %call9.i, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 20)
  %11 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 5644220127996235776, ptr %call9.i, align 128
  %MessageType = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 1
  %12 = ptrtoint ptr %MessageType to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %MessageType, align 8
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %13 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %session_estab, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.end13.if.then16_crit_edge, label %lor.lhs.false

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end13
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %15 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ntlmssp, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false.if.end17_crit_edge
  %flags.0 = phi i32 [ -536313291, %if.then16 ], [ -1610055115, %lor.lhs.false.if.end17_crit_edge ]
  %19 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pbuffer, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 32
  %ntlmssp18 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %21 = ptrtoint ptr %ntlmssp18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ntlmssp18, align 8
  %client_flags = getelementptr inbounds %struct.ntlmssp_auth, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %client_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags.0, ptr %client_flags, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %flags.0)
  %NegotiateFlags = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 2
  %25 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %NegotiateFlags, align 4
  %DomainName = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 3
  %26 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i) #15
  %BufferOffset.i = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %BufferOffset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %BufferOffset.i, align 4
  %30 = ptrtoint ptr %DomainName to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %DomainName, align 16
  %MaximumLength12.i = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %MaximumLength12.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %MaximumLength12.i, align 2
  %add.ptr13.i = getelementptr i8, ptr %20, i32 34
  %WorkstationName = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 4
  %32 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast.i46 = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast.i47 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i48 = sub i32 %sub.ptr.lhs.cast.i46, %sub.ptr.rhs.cast.i47
  %34 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i48) #15
  %BufferOffset.i49 = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %BufferOffset.i49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %BufferOffset.i49, align 4
  %36 = ptrtoint ptr %WorkstationName to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %WorkstationName, align 8
  %MaximumLength12.i50 = getelementptr inbounds %struct._NEGOTIATE_MESSAGE, ptr %call9.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %MaximumLength12.i50 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %MaximumLength12.i50, align 2
  %add.ptr13.i51 = getelementptr i8, ptr %20, i32 36
  %38 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr13.i51 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  br label %setup_ntlm_neg_ret

setup_ntlm_neg_ret:                               ; preds = %if.end17, %do.end, %if.then.setup_ntlm_neg_ret_crit_edge
  %storemerge = phi i16 [ %conv, %if.end17 ], [ 0, %do.end ], [ 0, %if.then.setup_ntlm_neg_ret_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end17 ], [ -12, %do.end ], [ -12, %if.then.setup_ntlm_neg_ret_crit_edge ]
  %40 = ptrtoint ptr %buflen to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %storemerge, ptr %buflen, align 2
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_ntlmssp_smb3_negotiate_blob(ptr nocapture noundef %pbuffer, ptr nocapture noundef writeonly %buflen, ptr nocapture noundef readonly %ses, ptr nocapture noundef readonly %server, ptr nocapture noundef readnone %nls_cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_key.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %0 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth_key.i, align 8
  %domainName.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %2 = ptrtoint ptr %domainName.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domainName.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i44

if.then.i44:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add2.i = add i32 %1, 42
  %call.i = tail call i32 @strnlen(ptr noundef nonnull %3, i32 noundef 256) #19
  %mul.i = shl i32 %call.i, 1
  %add4.i = add i32 %add2.i, %mul.i
  br label %if.end.i45

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add5.i = add i32 %1, 44
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.else.i, %if.then.i44
  %sz.0.i = phi i32 [ %add4.i, %if.then.i44 ], [ %add5.i, %if.else.i ]
  %user_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %4 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_name.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.end.i45.if.end14.i_crit_edge, label %if.then7.i

if.end.i45.if.end14.i_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i46 = tail call i32 @strnlen(ptr noundef nonnull %5, i32 noundef 256) #19
  %mul10.i = shl i32 %call9.i46, 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end.i45.if.end14.i_crit_edge
  %mul10.pn.i = phi i32 [ %mul10.i, %if.then7.i ], [ 2, %if.end.i45.if.end14.i_crit_edge ]
  %workstation_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 20
  %6 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workstation_name.i, align 4
  %tobool15.not.i = icmp eq ptr %7, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end8.i_crit_edge, label %if.then16.i

if.end14.i.if.end8.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i = tail call i32 @strnlen(ptr noundef nonnull %7, i32 noundef 65) #19
  %mul19.i = shl i32 %call18.i, 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16.i, %if.end14.i.if.end8.i_crit_edge
  %mul19.pn.i = phi i32 [ %mul19.i, %if.then16.i ], [ 2, %if.end14.i.if.end8.i_crit_edge ]
  %sz.1.i = add i32 %mul10.pn.i, %sz.0.i
  %sz.2.i = add i32 %sz.1.i, %mul19.pn.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sz.2.i, i32 noundef 3264) #21
  %8 = ptrtoint ptr %pbuffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %pbuffer, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %if.end8.i
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @build_ntlmssp_smb3_negotiate_blob._rs, ptr noundef nonnull @__func__.build_ntlmssp_smb3_negotiate_blob) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.setup_ntlm_smb3_neg_ret_crit_edge, label %do.end

if.then.setup_ntlm_smb3_neg_ret_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %setup_ntlm_smb3_neg_ret

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef -12) #20
  br label %setup_ntlm_smb3_neg_ret

if.end13:                                         ; preds = %if.end8.i
  %9 = getelementptr inbounds i8, ptr %call9.i, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 28)
  %11 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 5644220127996235776, ptr %call9.i, align 128
  %MessageType = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 1
  %12 = ptrtoint ptr %MessageType to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %MessageType, align 8
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %13 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %session_estab, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.end13.if.then16_crit_edge, label %lor.lhs.false

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end13
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %15 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ntlmssp, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false.if.end17_crit_edge
  %flags.0 = phi i32 [ -502758859, %if.then16 ], [ -1576500683, %lor.lhs.false.if.end17_crit_edge ]
  %Version = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 5
  %19 = ptrtoint ptr %Version to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %Version, align 32
  %ProductMinorVersion = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %ProductMinorVersion to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %ProductMinorVersion, align 1
  %ProductBuild = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %ProductBuild to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8960, ptr %ProductBuild, align 2
  %NTLMRevisionCurrent = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %NTLMRevisionCurrent to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %NTLMRevisionCurrent, align 1
  %23 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pbuffer, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 40
  %ntlmssp21 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %25 = ptrtoint ptr %ntlmssp21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ntlmssp21, align 8
  %client_flags = getelementptr inbounds %struct.ntlmssp_auth, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %client_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %flags.0, ptr %client_flags, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %flags.0)
  %NegotiateFlags = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 2
  %29 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %NegotiateFlags, align 4
  %DomainName = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 3
  %30 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i) #15
  %BufferOffset.i = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %BufferOffset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %BufferOffset.i, align 4
  %34 = ptrtoint ptr %DomainName to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %DomainName, align 16
  %MaximumLength12.i = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %MaximumLength12.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %MaximumLength12.i, align 2
  %add.ptr13.i = getelementptr i8, ptr %24, i32 42
  %WorkstationName = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 4
  %36 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast.i53 = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast.i54 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i55 = sub i32 %sub.ptr.lhs.cast.i53, %sub.ptr.rhs.cast.i54
  %38 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i55) #15
  %BufferOffset.i56 = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %BufferOffset.i56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %BufferOffset.i56, align 4
  %40 = ptrtoint ptr %WorkstationName to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %WorkstationName, align 8
  %MaximumLength12.i57 = getelementptr inbounds %struct.negotiate_message, ptr %call9.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %MaximumLength12.i57 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %MaximumLength12.i57, align 2
  %add.ptr13.i58 = getelementptr i8, ptr %24, i32 44
  %42 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr13.i58 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %43 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  br label %setup_ntlm_smb3_neg_ret

setup_ntlm_smb3_neg_ret:                          ; preds = %if.end17, %do.end, %if.then.setup_ntlm_smb3_neg_ret_crit_edge
  %storemerge = phi i16 [ %conv, %if.end17 ], [ 0, %do.end ], [ 0, %if.then.setup_ntlm_smb3_neg_ret_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end17 ], [ -12, %do.end ], [ -12, %if.then.setup_ntlm_smb3_neg_ret_crit_edge ]
  %44 = ptrtoint ptr %buflen to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %storemerge, ptr %buflen, align 2
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_ntlmssp_auth_blob(ptr nocapture noundef %pbuffer, ptr nocapture noundef writeonly %buflen, ptr noundef %ses, ptr nocapture readnone %server, ptr noundef %nls_cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @setup_ntlmv2_rsp(ptr noundef %ses, ptr noundef %nls_cp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %do.body1

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @build_ntlmssp_auth_blob._rs, ptr noundef nonnull @__func__.build_ntlmssp_auth_blob) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body1.setup_ntlmv2_ret_crit_edge, label %do.end

do.body1.setup_ntlmv2_ret_crit_edge:              ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %setup_ntlmv2_ret

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call) #20
  br label %setup_ntlmv2_ret

if.end12:                                         ; preds = %entry
  %auth_key.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %0 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth_key.i, align 8
  %domainName.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %2 = ptrtoint ptr %domainName.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domainName.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i154

if.then.i154:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %add2.i = add i32 %1, 66
  %call.i = tail call i32 @strnlen(ptr noundef nonnull %3, i32 noundef 256) #19
  %mul.i = shl i32 %call.i, 1
  %add4.i = add i32 %add2.i, %mul.i
  br label %if.end.i155

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %add5.i = add i32 %1, 68
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.else.i, %if.then.i154
  %sz.0.i = phi i32 [ %add4.i, %if.then.i154 ], [ %add5.i, %if.else.i ]
  %user_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %4 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_name.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.end.i155.if.end14.i_crit_edge, label %if.then7.i

if.end.i155.if.end14.i_crit_edge:                 ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i156 = tail call i32 @strnlen(ptr noundef nonnull %5, i32 noundef 256) #19
  %mul10.i = shl i32 %call9.i156, 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end.i155.if.end14.i_crit_edge
  %mul10.pn.i = phi i32 [ %mul10.i, %if.then7.i ], [ 2, %if.end.i155.if.end14.i_crit_edge ]
  %workstation_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 20
  %6 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workstation_name.i, align 4
  %tobool15.not.i = icmp eq ptr %7, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end8.i_crit_edge, label %if.then16.i

if.end14.i.if.end8.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i = tail call i32 @strnlen(ptr noundef nonnull %7, i32 noundef 65) #19
  %mul19.i = shl i32 %call18.i, 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16.i, %if.end14.i.if.end8.i_crit_edge
  %mul19.pn.i = phi i32 [ %mul19.i, %if.then16.i ], [ 2, %if.end14.i.if.end8.i_crit_edge ]
  %sz.1.i = add i32 %mul10.pn.i, %sz.0.i
  %sz.2.i = add i32 %sz.1.i, %mul19.pn.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sz.2.i, i32 noundef 3264) #21
  %8 = ptrtoint ptr %pbuffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %pbuffer, align 4
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end32

if.then16:                                        ; preds = %if.end8.i
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @build_ntlmssp_auth_blob._rs.65, ptr noundef nonnull @__func__.build_ntlmssp_auth_blob) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.setup_ntlmv2_ret_crit_edge, label %do.end24

if.then16.setup_ntlmv2_ret_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %setup_ntlmv2_ret

do.end24:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef -12) #20
  br label %setup_ntlmv2_ret

if.end32:                                         ; preds = %if.end8.i
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 5644220127996235776, ptr %call9.i, align 128
  %MessageType = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %MessageType to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50331648, ptr %MessageType, align 8
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %11 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ntlmssp, align 8
  %server_flags = getelementptr inbounds %struct.ntlmssp_auth, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %server_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %server_flags, align 4
  %or34 = or i32 %14, 8396804
  %15 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pbuffer, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 64
  %17 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %NegotiateFlags = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 8
  %18 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %NegotiateFlags, align 4
  %LmChallengeResponse = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 2
  %BufferOffset = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %BufferOffset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1073741824, ptr %BufferOffset, align 16
  %20 = ptrtoint ptr %LmChallengeResponse to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %LmChallengeResponse, align 4
  %MaximumLength = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %MaximumLength to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %MaximumLength, align 2
  %22 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub)
  %NtChallengeResponse = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 3
  %BufferOffset37 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %BufferOffset37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %BufferOffset37, align 8
  %26 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_name.i, align 8
  %cmp.not = icmp eq ptr %27, null
  br i1 %cmp.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %28 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %response, align 4
  %add.ptr39 = getelementptr i8, ptr %29, i32 16
  %30 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auth_key.i, align 8
  %sub = add i32 %31, -16
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr39, i32 %sub)
  %33 = load i32, ptr %auth_key.i, align 8
  %sub44 = add i32 %33, -16
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %sub44
  %34 = trunc i32 %33 to i16
  %conv = add i16 %34, -16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %36 = ptrtoint ptr %NtChallengeResponse to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %NtChallengeResponse, align 4
  %37 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %auth_key.i, align 8
  %39 = trunc i32 %38 to i16
  %conv54 = add i16 %39, -16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv54)
  br label %if.end61

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %NtChallengeResponse to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %NtChallengeResponse, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then38
  %.sink = phi i16 [ 0, %if.else ], [ %40, %if.then38 ]
  %tmp.0 = phi ptr [ %add.ptr, %if.else ], [ %add.ptr45, %if.then38 ]
  %42 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %.sink, ptr %42, align 2
  %DomainName = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 4
  %44 = ptrtoint ptr %domainName.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domainName.i, align 4
  %46 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pbuffer, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i161

if.then5.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tmp.0 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i) #15
  br label %if.end14.i162

if.else.i161:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %call.i159 = tail call i32 @cifs_strtoUTF16(ptr noundef %tmp.0, ptr noundef nonnull %45, i32 noundef 256, ptr noundef %nls_cp) #15
  %mul.i160 = shl i32 %call.i159, 1
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %tmp.0 to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub8.i) #15
  %conv.i = trunc i32 %mul.i160 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  br label %if.end14.i162

if.end14.i162:                                    ; preds = %if.else.i161, %if.then5.i
  %.sink229 = phi i32 [ %48, %if.then5.i ], [ %49, %if.else.i161 ]
  %.sink33.i = phi i16 [ 0, %if.then5.i ], [ %50, %if.else.i161 ]
  %mul.sink.i = phi i32 [ 2, %if.then5.i ], [ %mul.i160, %if.else.i161 ]
  %51 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink229, ptr %51, align 32
  %53 = ptrtoint ptr %DomainName to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %.sink33.i, ptr %DomainName, align 4
  %MaximumLength12.i = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %MaximumLength12.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %.sink33.i, ptr %MaximumLength12.i, align 2
  %add.ptr13.i = getelementptr i8, ptr %tmp.0, i32 %mul.sink.i
  %UserName = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 5
  %55 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_name.i, align 8
  %57 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbuffer, align 4
  %tobool4.not.i165 = icmp eq ptr %56, null
  br i1 %tobool4.not.i165, label %if.then5.i171, label %if.else.i179

if.then5.i171:                                    ; preds = %if.end14.i162
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast.i167 = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast.i168 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i169 = sub i32 %sub.ptr.lhs.cast.i167, %sub.ptr.rhs.cast.i168
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i169) #15
  br label %if.end14.i184

if.else.i179:                                     ; preds = %if.end14.i162
  call void @__sanitizer_cov_trace_pc() #17
  %call.i172 = tail call i32 @cifs_strtoUTF16(ptr noundef %add.ptr13.i, ptr noundef nonnull %56, i32 noundef 256, ptr noundef %nls_cp) #15
  %mul.i173 = shl i32 %call.i172, 1
  %sub.ptr.lhs.cast6.i174 = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast7.i175 = ptrtoint ptr %58 to i32
  %sub.ptr.sub8.i176 = sub i32 %sub.ptr.lhs.cast6.i174, %sub.ptr.rhs.cast7.i175
  %60 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub8.i176) #15
  %conv.i178 = trunc i32 %mul.i173 to i16
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv.i178) #15
  br label %if.end14.i184

if.end14.i184:                                    ; preds = %if.else.i179, %if.then5.i171
  %.sink230 = phi i32 [ %59, %if.then5.i171 ], [ %60, %if.else.i179 ]
  %.sink33.i180 = phi i16 [ 0, %if.then5.i171 ], [ %61, %if.else.i179 ]
  %mul.sink.i181 = phi i32 [ 2, %if.then5.i171 ], [ %mul.i173, %if.else.i179 ]
  %62 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 5, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink230, ptr %62, align 8
  %64 = ptrtoint ptr %UserName to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %.sink33.i180, ptr %UserName, align 4
  %MaximumLength12.i182 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %MaximumLength12.i182 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %.sink33.i180, ptr %MaximumLength12.i182, align 2
  %add.ptr13.i183 = getelementptr i8, ptr %add.ptr13.i, i32 %mul.sink.i181
  %WorkstationName = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 6
  %66 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %workstation_name.i, align 4
  %68 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pbuffer, align 4
  %tobool4.not.i188 = icmp eq ptr %67, null
  br i1 %tobool4.not.i188, label %if.then5.i194, label %if.else.i202

if.then5.i194:                                    ; preds = %if.end14.i184
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast.i190 = ptrtoint ptr %add.ptr13.i183 to i32
  %sub.ptr.rhs.cast.i191 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i192 = sub i32 %sub.ptr.lhs.cast.i190, %sub.ptr.rhs.cast.i191
  %70 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i192) #15
  br label %if.end14.i207

if.else.i202:                                     ; preds = %if.end14.i184
  call void @__sanitizer_cov_trace_pc() #17
  %call.i195 = tail call i32 @cifs_strtoUTF16(ptr noundef %add.ptr13.i183, ptr noundef nonnull %67, i32 noundef 65, ptr noundef %nls_cp) #15
  %mul.i196 = shl i32 %call.i195, 1
  %sub.ptr.lhs.cast6.i197 = ptrtoint ptr %add.ptr13.i183 to i32
  %sub.ptr.rhs.cast7.i198 = ptrtoint ptr %69 to i32
  %sub.ptr.sub8.i199 = sub i32 %sub.ptr.lhs.cast6.i197, %sub.ptr.rhs.cast7.i198
  %71 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub8.i199) #15
  %conv.i201 = trunc i32 %mul.i196 to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv.i201) #15
  br label %if.end14.i207

if.end14.i207:                                    ; preds = %if.else.i202, %if.then5.i194
  %.sink231 = phi i32 [ %70, %if.then5.i194 ], [ %71, %if.else.i202 ]
  %.sink33.i203 = phi i16 [ 0, %if.then5.i194 ], [ %72, %if.else.i202 ]
  %mul.sink.i204 = phi i32 [ 2, %if.then5.i194 ], [ %mul.i196, %if.else.i202 ]
  %73 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 6, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink231, ptr %73, align 16
  %75 = ptrtoint ptr %WorkstationName to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %.sink33.i203, ptr %WorkstationName, align 4
  %MaximumLength12.i205 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %MaximumLength12.i205 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %.sink33.i203, ptr %MaximumLength12.i205, align 2
  %add.ptr13.i206 = getelementptr i8, ptr %add.ptr13.i183, i32 %mul.sink.i204
  %77 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ntlmssp, align 8
  %server_flags64 = getelementptr inbounds %struct.ntlmssp_auth, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %server_flags64 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %server_flags64, align 4
  %and = and i32 %80, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.end14.i207.if.else86_crit_edge, label %land.lhs.true

if.end14.i207.if.else86_crit_edge:                ; preds = %if.end14.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else86

land.lhs.true:                                    ; preds = %if.end14.i207
  %server66 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %81 = ptrtoint ptr %server66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %server66, align 8
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %82, i32 0, i32 31
  %83 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %session_estab, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool67.not = icmp eq i8 %84, 0
  br i1 %tobool67.not, label %land.lhs.true.land.lhs.true71_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true71_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true71

lor.lhs.false:                                    ; preds = %land.lhs.true
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %78, align 4, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool69.not = icmp eq i8 %86, 0
  br i1 %tobool69.not, label %lor.lhs.false.if.else86_crit_edge, label %lor.lhs.false.land.lhs.true71_crit_edge

lor.lhs.false.land.lhs.true71_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true71

lor.lhs.false.if.else86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else86

land.lhs.true71:                                  ; preds = %lor.lhs.false.land.lhs.true71_crit_edge, %land.lhs.true.land.lhs.true71_crit_edge
  %call72 = tail call i32 @calc_seckey(ptr noundef %ses) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true71.if.else86_crit_edge

land.lhs.true71.if.else86_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else86

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ntlmssp, align 8
  %ciphertext = getelementptr inbounds %struct.ntlmssp_auth, ptr %88, i32 0, i32 3
  %89 = call ptr @memcpy(ptr %add.ptr13.i206, ptr %ciphertext, i32 16)
  %90 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast77 = ptrtoint ptr %add.ptr13.i206 to i32
  %sub.ptr.rhs.cast78 = ptrtoint ptr %91 to i32
  %sub.ptr.sub79 = sub i32 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %92 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub79)
  %SessionKey = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7
  %BufferOffset80 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7, i32 2
  %93 = ptrtoint ptr %BufferOffset80 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %BufferOffset80, align 8
  %94 = ptrtoint ptr %SessionKey to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 4096, ptr %SessionKey, align 4
  %MaximumLength84 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %MaximumLength84 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 4096, ptr %MaximumLength84, align 2
  %add.ptr85 = getelementptr i8, ptr %add.ptr13.i206, i32 16
  %.pre = ptrtoint ptr %add.ptr85 to i32
  br label %if.end96

if.else86:                                        ; preds = %land.lhs.true71.if.else86_crit_edge, %lor.lhs.false.if.else86_crit_edge, %if.end14.i207.if.else86_crit_edge
  %96 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.lhs.cast87 = ptrtoint ptr %add.ptr13.i206 to i32
  %sub.ptr.rhs.cast88 = ptrtoint ptr %97 to i32
  %sub.ptr.sub89 = sub i32 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %98 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub89)
  %SessionKey90 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7
  %BufferOffset91 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7, i32 2
  %99 = ptrtoint ptr %BufferOffset91 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %BufferOffset91, align 8
  %100 = ptrtoint ptr %SessionKey90 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %SessionKey90, align 4
  %MaximumLength95 = getelementptr inbounds %struct._AUTHENTICATE_MESSAGE, ptr %call9.i, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %MaximumLength95 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %MaximumLength95, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.else86, %if.then74
  %sub.ptr.lhs.cast97.pre-phi = phi i32 [ %sub.ptr.lhs.cast87, %if.else86 ], [ %.pre, %if.then74 ]
  %102 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pbuffer, align 4
  %sub.ptr.rhs.cast98 = ptrtoint ptr %103 to i32
  %sub.ptr.sub99 = sub i32 %sub.ptr.lhs.cast97.pre-phi, %sub.ptr.rhs.cast98
  %conv100 = trunc i32 %sub.ptr.sub99 to i16
  br label %setup_ntlmv2_ret

setup_ntlmv2_ret:                                 ; preds = %if.end96, %do.end24, %if.then16.setup_ntlmv2_ret_crit_edge, %do.end, %do.body1.setup_ntlmv2_ret_crit_edge
  %conv100.sink = phi i16 [ %conv100, %if.end96 ], [ 0, %do.end ], [ 0, %do.body1.setup_ntlmv2_ret_crit_edge ], [ 0, %do.end24 ], [ 0, %if.then16.setup_ntlmv2_ret_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end96 ], [ %call, %do.end ], [ %call, %do.body1.setup_ntlmv2_ret_crit_edge ], [ -12, %do.end24 ], [ -12, %if.then16.setup_ntlmv2_ret_crit_edge ]
  %104 = ptrtoint ptr %buflen to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv100.sink, ptr %buflen, align 2
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_ntlmv2_rsp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calc_seckey(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cifs_select_sectype(ptr nocapture noundef readonly %server, i32 noundef %requested) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %negflavor = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 51
  %0 = ptrtoint ptr %negflavor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %negflavor, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %1, label %entry.sw.default22_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb14
  ]

entry.sw.default22_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %requested to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %requested, label %sw.bb.sw.default_crit_edge [
    i32 3, label %sw.bb.return_crit_edge
    i32 2, label %sw.bb.return_crit_edge29
    i32 0, label %sw.bb2
  ]

sw.bb.return_crit_edge29:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb2:                                           ; preds = %sw.bb
  %sec_ntlmssp = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 52
  %4 = ptrtoint ptr %sec_ntlmssp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sec_ntlmssp, align 1, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %sw.bb2.if.end_crit_edge, label %land.lhs.true

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %6 = load i32, ptr @global_secflags, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb2.if.end_crit_edge
  %sec_kerberos = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 54
  %7 = ptrtoint ptr %sec_kerberos to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sec_kerberos, align 1, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.land.lhs.true9_crit_edge

if.end.land.lhs.true9_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true9

lor.lhs.false:                                    ; preds = %if.end
  %sec_mskerberos = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 55
  %9 = ptrtoint ptr %sec_mskerberos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sec_mskerberos, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %lor.lhs.false.sw.default_crit_edge, label %lor.lhs.false.land.lhs.true9_crit_edge

lor.lhs.false.land.lhs.true9_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true9

lor.lhs.false.sw.default_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

land.lhs.true9:                                   ; preds = %lor.lhs.false.land.lhs.true9_crit_edge, %if.end.land.lhs.true9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %11 = load i32, ptr @global_secflags, align 4
  %and10 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true9.sw.default_crit_edge, label %land.lhs.true9.return_crit_edge

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true9.sw.default_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.default:                                       ; preds = %land.lhs.true9.sw.default_crit_edge, %lor.lhs.false.sw.default_crit_edge, %sw.bb.sw.default_crit_edge
  br label %return

sw.bb14:                                          ; preds = %entry
  %12 = zext i32 %requested to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %requested, label %sw.bb14.sw.default22_crit_edge [
    i32 1, label %sw.bb14.return_crit_edge
    i32 0, label %sw.bb16
  ]

sw.bb14.return_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb14.sw.default22_crit_edge:                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22

sw.bb16:                                          ; preds = %sw.bb14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %13 = load i32, ptr @global_secflags, align 4
  %and17 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb16.sw.default22_crit_edge, label %sw.bb16.return_crit_edge

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb16.sw.default22_crit_edge:                   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22

sw.default22:                                     ; preds = %sw.bb16.sw.default22_crit_edge, %sw.bb14.sw.default22_crit_edge, %entry.sw.default22_crit_edge
  br label %return

return:                                           ; preds = %sw.default22, %sw.bb16.return_crit_edge, %sw.bb14.return_crit_edge, %sw.default, %land.lhs.true9.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge29
  %retval.0 = phi i32 [ 0, %sw.default22 ], [ 0, %sw.default ], [ %requested, %sw.bb.return_crit_edge ], [ %requested, %sw.bb.return_crit_edge29 ], [ 2, %land.lhs.true.return_crit_edge ], [ 3, %land.lhs.true9.return_crit_edge ], [ %requested, %sw.bb14.return_crit_edge ], [ 1, %sw.bb16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @CIFS_SessSetup(i32 noundef %xid, ptr noundef %ses, ptr noundef %server, ptr noundef %nls_cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ses, null
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1691, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.CIFS_SessSetup) #15
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #22
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %xid, ptr %call7.i.i, align 8
  %ses21 = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ses21 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ses, ptr %ses21, align 4
  %server22 = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %server22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %server, ptr %server22, align 8
  %buf0_type = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %buf0_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf0_type, align 8
  %nls_cp23 = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %nls_cp23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nls_cp, ptr %nls_cp23, align 4
  %call24 = tail call fastcc i32 @select_sec(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %while.cond.preheader, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

while.cond.preheader:                             ; preds = %if.end19
  %func = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 8
  %tobool28.not45 = icmp eq ptr %7, null
  br i1 %tobool28.not45, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %8 = phi ptr [ %10, %while.body.while.body_crit_edge ], [ %7, %while.cond.preheader.while.body_crit_edge ]
  tail call void %8(ptr noundef nonnull %call7.i.i) #15
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 8
  %tobool28.not = icmp eq ptr %10, null
  br i1 %tobool28.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result = getelementptr inbounds %struct.sess_data, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result, align 4
  br label %out

out:                                              ; preds = %while.end, %if.end19.out_crit_edge
  %rc.0 = phi i32 [ %call24, %if.end19.out_crit_edge ], [ %12, %while.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %out ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @select_sec(ptr nocapture noundef %sess_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  %sectype = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %sectype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectype, align 4
  %negflavor.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 51
  %6 = ptrtoint ptr %negflavor.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %negflavor.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %7, label %entry.sw.default22.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb14.i
  ]

entry.sw.default22.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22.i

sw.bb.i:                                          ; preds = %entry
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %5, label %sw.bb.i.sw.default.i_crit_edge [
    i32 3, label %sw.bb.i.cifs_select_sectype.exit_crit_edge
    i32 2, label %sw.bb.i.cifs_select_sectype.exit_crit_edge64
    i32 0, label %sw.bb2.i
  ]

sw.bb.i.cifs_select_sectype.exit_crit_edge64:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

sw.bb.i.cifs_select_sectype.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

sw.bb.i.sw.default.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i

sw.bb2.i:                                         ; preds = %sw.bb.i
  %sec_ntlmssp.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 52
  %10 = ptrtoint ptr %sec_ntlmssp.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sec_ntlmssp.i, align 1, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %sw.bb2.i.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb2.i.if.end.i_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %12 = load i32, ptr @global_secflags, align 4
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cifs_select_sectype.exit_crit_edge

land.lhs.true.i.cifs_select_sectype.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb2.i.if.end.i_crit_edge
  %sec_kerberos.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 54
  %13 = ptrtoint ptr %sec_kerberos.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sec_kerberos.i, align 1, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end.i.land.lhs.true9.i_crit_edge

if.end.i.land.lhs.true9.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true9.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sec_mskerberos.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 55
  %15 = ptrtoint ptr %sec_mskerberos.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sec_mskerberos.i, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.sw.default.i_crit_edge, label %lor.lhs.false.i.land.lhs.true9.i_crit_edge

lor.lhs.false.i.land.lhs.true9.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true9.i

lor.lhs.false.i.sw.default.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i

land.lhs.true9.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true9.i_crit_edge, %if.end.i.land.lhs.true9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %17 = load i32, ptr @global_secflags, align 4
  %and10.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.sw.default.i_crit_edge, label %land.lhs.true9.i.cifs_select_sectype.exit_crit_edge

land.lhs.true9.i.cifs_select_sectype.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

land.lhs.true9.i.sw.default.i_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i

sw.default.i:                                     ; preds = %land.lhs.true9.i.sw.default.i_crit_edge, %lor.lhs.false.i.sw.default.i_crit_edge, %sw.bb.i.sw.default.i_crit_edge
  br label %cifs_select_sectype.exit

sw.bb14.i:                                        ; preds = %entry
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %5, label %sw.bb14.i.sw.default22.i_crit_edge [
    i32 1, label %sw.bb14.i.cifs_select_sectype.exit_crit_edge
    i32 0, label %sw.bb16.i
  ]

sw.bb14.i.cifs_select_sectype.exit_crit_edge:     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

sw.bb14.i.sw.default22.i_crit_edge:               ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22.i

sw.bb16.i:                                        ; preds = %sw.bb14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %19 = load i32, ptr @global_secflags, align 4
  %and17.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %sw.bb16.i.sw.default22.i_crit_edge, label %sw.bb16.i.cifs_select_sectype.exit_crit_edge

sw.bb16.i.cifs_select_sectype.exit_crit_edge:     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_select_sectype.exit

sw.bb16.i.sw.default22.i_crit_edge:               ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default22.i

sw.default22.i:                                   ; preds = %sw.bb16.i.sw.default22.i_crit_edge, %sw.bb14.i.sw.default22.i_crit_edge, %entry.sw.default22.i_crit_edge
  br label %cifs_select_sectype.exit

cifs_select_sectype.exit:                         ; preds = %sw.default22.i, %sw.bb16.i.cifs_select_sectype.exit_crit_edge, %sw.bb14.i.cifs_select_sectype.exit_crit_edge, %sw.default.i, %land.lhs.true9.i.cifs_select_sectype.exit_crit_edge, %land.lhs.true.i.cifs_select_sectype.exit_crit_edge, %sw.bb.i.cifs_select_sectype.exit_crit_edge, %sw.bb.i.cifs_select_sectype.exit_crit_edge64
  %retval.0.i62 = phi i32 [ 0, %sw.default22.i ], [ 0, %sw.default.i ], [ %5, %sw.bb.i.cifs_select_sectype.exit_crit_edge ], [ %5, %sw.bb.i.cifs_select_sectype.exit_crit_edge64 ], [ 2, %land.lhs.true.i.cifs_select_sectype.exit_crit_edge ], [ 3, %land.lhs.true9.i.cifs_select_sectype.exit_crit_edge ], [ %5, %sw.bb14.i.cifs_select_sectype.exit_crit_edge ], [ 1, %sw.bb16.i.cifs_select_sectype.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cifs_select_sectype.exit.do.end16_crit_edge, label %do.body4

cifs_select_sectype.exit.do.end16_crit_edge:      ; preds = %cifs_select_sectype.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.body4:                                         ; preds = %cifs_select_sectype.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @select_sec.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@select_sec, %land.lhs.true)) #15
          to label %do.end16 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body4
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @select_sec._rs, ptr noundef nonnull @.str.85) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %if.then11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @select_sec.descriptor, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str, i32 noundef %retval.0.i62) #15
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %land.lhs.true.do.end16_crit_edge, %do.body4, %cifs_select_sectype.exit.do.end16_crit_edge
  %21 = zext i32 %retval.0.i62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %retval.0.i62, label %do.body39 [
    i32 0, label %do.body19
    i32 1, label %sw.bb
    i32 3, label %sw.bb34
    i32 2, label %sw.bb36
  ]

do.body19:                                        ; preds = %do.end16
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @select_sec._rs.87, ptr noundef nonnull @.str.85) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %do.end25

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #20
  br label %cleanup

sw.bb:                                            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  %func = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sess_auth_ntlmv2, ptr %func, align 4
  br label %cleanup

sw.bb34:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  %func35 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %23 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sess_auth_kerberos, ptr %func35, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  %func37 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %24 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sess_auth_rawntlmssp_negotiate, ptr %func37, align 4
  br label %cleanup

do.body39:                                        ; preds = %do.end16
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @select_sec._rs.89, ptr noundef nonnull @.str.85) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body39.cleanup_crit_edge, label %do.end45

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %retval.0.i62) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.body39.cleanup_crit_edge, %sw.bb36, %sw.bb34, %sw.bb, %do.end25, %do.body19.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ -22, %do.body19.cleanup_crit_edge ], [ -38, %do.end45 ], [ -38, %do.body39.cleanup_crit_edge ], [ 0, %sw.bb36 ], [ 0, %sw.bb34 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !316

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !319

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !320
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.69) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !321
  %13 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !319

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !322
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 609, ptr noundef nonnull @.str.83) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !323
  %31 = tail call i32 @llvm.read_register.i32(metadata !306) #15
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_get_tcp_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_crypto_shash_allocate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_negotiate_protocol(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_setup_session(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tcp_session(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_enter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strtoUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sess_auth_ntlmv2(ptr noundef %sess_data) #2 align 64 {
entry:
  %rsp_iov.i = alloca %struct.kvec, align 8
  %smb_buf.i = alloca ptr, align 4
  %bcc_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcc_ptr) #15
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %4 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %smb_buf.i, align 4, !annotation !324
  %call.i = call i32 @small_smb_init_no_tc(i32 noundef 115, i32 noundef 13, ptr noundef %1, ptr noundef nonnull %smb_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sess_alloc_buffer.exit.thread_crit_edge

entry.sess_alloc_buffer.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sess_alloc_buffer.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smb_buf.i, align 4
  %iov.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iov.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %6, align 1
  %add.i = add i32 %9, 4
  %iov_len.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %iov_len.i, align 4
  %buf0_type.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %11 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %buf0_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 2000) #22
  %arrayidx6.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx6.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smb_buf.i, align 4
  call void @cifs_small_buf_release(ptr noundef %15) #15
  %16 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %iov.i, align 4
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iov_len.i, align 4
  %18 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buf0_type.i, align 4
  br label %sess_alloc_buffer.exit.thread

sess_alloc_buffer.exit.thread:                    ; preds = %if.then12.i, %entry.sess_alloc_buffer.exit.thread_crit_edge
  %retval.0.i228.ph = phi i32 [ %call.i, %entry.sess_alloc_buffer.exit.thread_crit_edge ], [ -12, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %19 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iov.i, align 4
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.i, align 4
  %23 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bcc_ptr, align 4
  %AndXCommand.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %AndXCommand.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %AndXCommand.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %25 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub.i = add i32 %25, 84
  %26 = call i32 @llvm.umin.i32(i32 %sub.i, i32 65535) #15
  %27 = trunc i32 %26 to i16
  %28 = call i16 @llvm.bswap.i16(i16 %27) #15
  %MaxBufferSize.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 4
  %29 = ptrtoint ptr %MaxBufferSize.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %MaxBufferSize.i, align 1
  %maxReq.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 38
  %30 = ptrtoint ptr %maxReq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxReq.i, align 4
  %conv1.i = trunc i32 %31 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv1.i) #15
  %MaxMpxCount.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 5
  %33 = ptrtoint ptr %MaxMpxCount.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %MaxMpxCount.i, align 1
  %VcNumber.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 6
  %34 = ptrtoint ptr %VcNumber.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 256, ptr %VcNumber.i, align 1
  %sign.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 29
  %35 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sign.i, align 2, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i229 = icmp eq i8 %36, 0
  br i1 %tobool.not.i229, label %if.end.if.end.i230_crit_edge, label %if.then.i

if.end.if.end.i230_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %Flags2.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %37 = ptrtoint ptr %Flags2.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %Flags2.i, align 1
  %39 = or i16 %38, 1024
  store i16 %39, ptr %Flags2.i, align 1
  br label %if.end.i230

if.end.i230:                                      ; preds = %if.then.i, %if.end.if.end.i230_crit_edge
  %capabilities4.i = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capabilities4.i, align 8
  %and.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i230.if.end13.i_crit_edge, label %if.then6.i

if.end.i230.if.end13.i_crit_edge:                 ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #17
  %Flags28.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %42 = ptrtoint ptr %Flags28.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %Flags28.i, align 1
  %44 = or i16 %43, 128
  store i16 %44, ptr %Flags28.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.end.i230.if.end13.i_crit_edge
  %capabilities.0.i = phi i32 [ 49308, %if.then6.i ], [ 49304, %if.end.i230.if.end13.i_crit_edge ]
  %45 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %capabilities4.i, align 8
  %and15.i = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then17.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags219.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %47 = ptrtoint ptr %Flags219.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %Flags219.i, align 1
  %49 = or i16 %48, 64
  store i16 %49, ptr %Flags219.i, align 1
  %or23.i = or i32 %capabilities.0.i, 64
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end24.i_crit_edge
  %capabilities.1.i = phi i32 [ %or23.i, %if.then17.i ], [ %capabilities.0.i, %if.end13.i.if.end24.i_crit_edge ]
  %50 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %capabilities4.i, align 8
  %and26.i = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.cifs_ssetup_hdr.exit_crit_edge, label %if.then28.i

if.end24.i.cifs_ssetup_hdr.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ssetup_hdr.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags230.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %52 = ptrtoint ptr %Flags230.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %Flags230.i, align 1
  %54 = or i16 %53, 16
  store i16 %54, ptr %Flags230.i, align 1
  %or34.i = or i32 %capabilities.1.i, 4096
  br label %cifs_ssetup_hdr.exit

cifs_ssetup_hdr.exit:                             ; preds = %if.then28.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge
  %capabilities.2.i = phi i32 [ %or34.i, %if.then28.i ], [ %capabilities.1.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge ]
  %55 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %capabilities4.i, align 8
  %and37.i = and i32 %56, 8388608
  %57 = or i32 %and37.i, %capabilities.2.i
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %Capabilities = getelementptr inbounds %struct.anon.162, ptr %20, i32 0, i32 11
  %59 = ptrtoint ptr %Capabilities to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %Capabilities, align 1
  %CaseInsensitivePasswordLength = getelementptr inbounds %struct.anon.162, ptr %20, i32 0, i32 8
  %60 = ptrtoint ptr %CaseInsensitivePasswordLength to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %CaseInsensitivePasswordLength, align 1
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 17
  %61 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_name, align 8
  %cmp.not = icmp eq ptr %62, null
  br i1 %cmp.not, label %cifs_ssetup_hdr.exit.if.end32_crit_edge, label %if.then7

cifs_ssetup_hdr.exit.if.end32_crit_edge:          ; preds = %cifs_ssetup_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then7:                                         ; preds = %cifs_ssetup_hdr.exit
  %nls_cp = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %63 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nls_cp, align 4
  %call8 = call i32 @setup_ntlmv2_rsp(ptr noundef %1, ptr noundef %64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end22, label %do.body11

do.body11:                                        ; preds = %if.then7
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_ntlmv2._rs, ptr noundef nonnull @__func__.sess_auth_ntlmv2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.out_crit_edge, label %do.end

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end:                                           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %call8) #20
  br label %out

if.end22:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %auth_key = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21
  %response = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %65 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %response, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 16
  %67 = ptrtoint ptr %auth_key to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %auth_key, align 8
  %sub = add i32 %68, -16
  %69 = call ptr @memcpy(ptr %22, ptr %add.ptr, i32 %sub)
  %70 = load i32, ptr %auth_key, align 8
  %sub26 = add i32 %70, -16
  %add.ptr27 = getelementptr i8, ptr %22, i32 %sub26
  %71 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr27, ptr %bcc_ptr, align 4
  %72 = trunc i32 %70 to i16
  %conv = add i16 %72, -16
  %73 = call i16 @llvm.bswap.i16(i16 %conv)
  br label %if.end32

if.end32:                                         ; preds = %if.end22, %cifs_ssetup_hdr.exit.if.end32_crit_edge
  %.sink = phi i16 [ %73, %if.end22 ], [ 0, %cifs_ssetup_hdr.exit.if.end32_crit_edge ]
  %CaseSensitivePasswordLength31 = getelementptr inbounds %struct.anon.162, ptr %20, i32 0, i32 9
  %74 = ptrtoint ptr %CaseSensitivePasswordLength31 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %.sink, ptr %CaseSensitivePasswordLength31, align 1
  %75 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %capabilities4.i, align 8
  %and = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.else42, label %if.then35

if.then35:                                        ; preds = %if.end32
  %77 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iov_len.i, align 4
  %rem = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool38.not = icmp eq i32 %rem, 0
  br i1 %tobool38.not, label %if.then35.if.end40_crit_edge, label %if.then39

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bcc_ptr, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %80, align 1
  %incdec.ptr = getelementptr i8, ptr %80, i32 1
  store ptr %incdec.ptr, ptr %bcc_ptr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then35.if.end40_crit_edge
  %nls_cp41 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %82 = ptrtoint ptr %nls_cp41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nls_cp41, align 4
  %84 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bcc_ptr, align 4
  %86 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %user_name, align 8
  %cmp.i = icmp eq ptr %87, null
  br i1 %cmp.i, label %if.then.i231, label %if.else.i

if.then.i231:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %85, align 1
  %add.ptr.i = getelementptr i8, ptr %85, i32 1
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %add.ptr.i, align 1
  br label %if.end.i233

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %call.i232 = call i32 @cifs_strtoUTF16(ptr noundef %85, ptr noundef nonnull %87, i32 noundef 256, ptr noundef %83) #15
  %phi.bo.i = shl i32 %call.i232, 1
  br label %if.end.i233

if.end.i233:                                      ; preds = %if.else.i, %if.then.i231
  %bytes_ret.0.i = phi i32 [ 0, %if.then.i231 ], [ %phi.bo.i, %if.else.i ]
  %add.ptr2.i = getelementptr i8, ptr %85, i32 %bytes_ret.0.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  %domainName.i.i = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 18
  %90 = ptrtoint ptr %domainName.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %domainName.i.i, align 4
  %cmp.i.i = icmp eq ptr %91, null
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %add.ptr3.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr3.i, i32 1
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %unicode_ssetup_strings.exit

if.else.i.i:                                      ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr3.i, ptr noundef nonnull %91, i32 noundef 256, ptr noundef %83) #15
  %phi.bo.i.i = shl i32 %call.i.i, 1
  br label %unicode_ssetup_strings.exit

unicode_ssetup_strings.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %bytes_ret.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %phi.bo.i.i, %if.else.i.i ]
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr3.i, i32 %bytes_ret.0.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  %call.i9.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr3.i.i, ptr noundef nonnull @.str.103, i32 noundef 32, ptr noundef %83) #15
  %mul.i.i = shl i32 %call.i9.i, 1
  %add.ptr.i10.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul.i.i
  %call2.i.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr.i10.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef 32, ptr noundef %83) #15
  %mul3.i.i = shl i32 %call2.i.i, 1
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i10.i, i32 %mul3.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 2
  %call6.i.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr5.i.i, ptr noundef nonnull @.str.104, i32 noundef 32, ptr noundef %83) #15
  %mul7.i.i = shl i32 %call6.i.i, 1
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %mul7.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr8.i.i, i32 2
  %94 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr9.i.i, ptr %bcc_ptr, align 4
  br label %if.end44

if.else42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ascii_ssetup_strings(ptr noundef nonnull %bcc_ptr, ptr noundef %1)
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %unicode_ssetup_strings.exit
  %95 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bcc_ptr, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx6.i, align 4
  %100 = ptrtoint ptr %99 to i32
  %sub48 = sub i32 %97, %100
  %iov_len51 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2, i32 1
  %101 = ptrtoint ptr %iov_len51 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub48, ptr %iov_len51, align 4
  %102 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  %104 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %rsp_iov.i, align 8
  %iov_len.i235 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1, i32 1
  %105 = ptrtoint ptr %iov_len.i235 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %iov_len.i235, align 4
  %add.i236 = add i32 %106, %sub48
  %conv.i = trunc i32 %add.i236 to i16
  %conv6.i = and i32 %add.i236, 65535
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %103, align 4
  %add.i.i = add i32 %conv6.i, %108
  store i32 %add.i.i, ptr %103, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 37
  %WordCount.i.i.i = getelementptr inbounds %struct.smb_hdr, ptr %103, i32 0, i32 13
  %109 = ptrtoint ptr %WordCount.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %WordCount.i.i.i, align 1
  %conv.i.i.i = zext i8 %110 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %111 = call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %112 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %add.ptr1.i.i.i, align 1
  %113 = ptrtoint ptr %sess_data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sess_data, align 4
  %115 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ses1, align 4
  %call.i238 = call i32 @SendReceive2(i32 noundef %114, ptr noundef %116, ptr noundef %iov.i, i32 noundef 3, ptr noundef %buf0_type.i, i32 noundef 16, ptr noundef nonnull %rsp_iov.i) #15
  %117 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iov.i, align 4
  call void @cifs_small_buf_release(ptr noundef %118) #15
  %119 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %rsp_iov.i, align 8
  %121 = ptrtoint ptr %iov.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %iov.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool53.not = icmp eq i32 %call.i238, 0
  br i1 %tobool53.not, label %if.end55, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end55:                                         ; preds = %if.end44
  %122 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %iov.i, align 4
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %123, i32 0, i32 13
  %124 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %125)
  %cmp63.not = icmp eq i8 %125, 3
  br i1 %cmp63.not, label %if.end83, label %if.then65

if.then65:                                        ; preds = %if.end55
  %call68 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_ntlmv2._rs.94, ptr noundef nonnull @__func__.sess_auth_ntlmv2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then65.out_crit_edge, label %do.end73

if.then65.out_crit_edge:                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end73:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %WordCount, align 1
  %conv76 = zext i8 %127 to i32
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv76) #20
  br label %out

if.end83:                                         ; preds = %if.end55
  %Action = getelementptr inbounds %struct.anon.163, ptr %123, i32 0, i32 4
  %128 = ptrtoint ptr %Action to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %Action, align 1
  %130 = and i16 %129, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool86.not = icmp eq i16 %130, 0
  br i1 %tobool86.not, label %if.end83.if.end111_crit_edge, label %do.body89

if.end83.if.end111_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

do.body89:                                        ; preds = %if.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %131 = load i32, ptr @cifsFYI, align 4
  %and90 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.if.end111_crit_edge, label %do.body93

do.body89.if.end111_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

do.body93:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_ntlmv2.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_ntlmv2, %land.lhs.true)) #15
          to label %if.end111 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body93
  %call99 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_ntlmv2._rs.98, ptr noundef nonnull @__func__.sess_auth_ntlmv2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true.if.end111_crit_edge, label %if.then101

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_ntlmv2.descriptor, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str) #15
  br label %if.end111

if.end111:                                        ; preds = %if.then101, %land.lhs.true.if.end111_crit_edge, %do.body93, %do.body89.if.end111_crit_edge, %if.end83.if.end111_crit_edge
  %Uid = getelementptr inbounds %struct.smb_hdr, ptr %123, i32 0, i32 11
  %132 = ptrtoint ptr %Uid to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %Uid, align 1
  %conv112 = zext i16 %133 to i64
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 12
  %134 = ptrtoint ptr %Suid to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv112, ptr %Suid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %135 = load i32, ptr @cifsFYI, align 4
  %and115 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end111.do.end143_crit_edge, label %do.body118

if.end111.do.end143_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end143

do.body118:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_ntlmv2.descriptor.101, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_ntlmv2, %land.lhs.true130)) #15
          to label %do.end143 [label %land.lhs.true130], !srcloc !316

land.lhs.true130:                                 ; preds = %do.body118
  %call131 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_ntlmv2._rs.100, ptr noundef nonnull @__func__.sess_auth_ntlmv2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true130.do.end143_crit_edge, label %if.then133

land.lhs.true130.do.end143_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end143

if.then133:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #17
  %136 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %Suid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_ntlmv2.descriptor.101, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str, i64 noundef %137) #15
  br label %do.end143

do.end143:                                        ; preds = %if.then133, %land.lhs.true130.do.end143_crit_edge, %do.body118, %if.end111.do.end143_crit_edge
  %add.ptr.i.i239 = getelementptr i8, ptr %123, i32 37
  %138 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %WordCount, align 1
  %conv.i.i = zext i8 %139 to i32
  %mul.i.i240 = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i239, i32 %mul.i.i240
  %140 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %add.ptr1.i.i, align 1
  %142 = call i16 @llvm.bswap.i16(i16 %141) #15
  %add.ptr146 = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %143 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %add.ptr146, ptr %bcc_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp148 = icmp eq i16 %141, 0
  br i1 %cmp148, label %do.end143.if.end167_crit_edge, label %if.else151

do.end143.if.end167_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167

if.else151:                                       ; preds = %do.end143
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %123, i32 0, i32 5
  %144 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %Flags2, align 1
  %146 = and i16 %145, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool154.not = icmp eq i16 %146, 0
  br i1 %tobool154.not, label %if.else164, label %if.then155

if.then155:                                       ; preds = %if.else151
  %147 = ptrtoint ptr %add.ptr146 to i32
  %148 = ptrtoint ptr %123 to i32
  %sub156 = sub i32 %147, %148
  %rem157 = and i32 %sub156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem157)
  %tobool158.not = icmp eq i32 %rem157, 0
  br i1 %tobool158.not, label %if.then155.if.end161_crit_edge, label %if.then159

if.then155.if.end161_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end161

if.then159:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr160 = getelementptr i8, ptr %add.ptr1.i.i, i32 3
  %149 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %incdec.ptr160, ptr %bcc_ptr, align 4
  %dec = add i16 %142, -1
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.then155.if.end161_crit_edge
  %bytes_remaining.0 = phi i16 [ %dec, %if.then159 ], [ %142, %if.then155.if.end161_crit_edge ]
  %conv162 = zext i16 %bytes_remaining.0 to i32
  %nls_cp163 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %150 = ptrtoint ptr %nls_cp163 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %nls_cp163, align 4
  call fastcc void @decode_unicode_ssetup(ptr noundef nonnull %bcc_ptr, i32 noundef %conv162, ptr noundef %1, ptr noundef %151)
  br label %if.end167

if.else164:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @decode_ascii_ssetup(ptr noundef nonnull %bcc_ptr, i16 noundef zeroext %142, ptr noundef %1)
  br label %if.end167

if.end167:                                        ; preds = %if.else164, %if.end161, %do.end143.if.end167_crit_edge
  %call168 = call fastcc i32 @sess_establish_session(ptr noundef %sess_data)
  br label %out

out:                                              ; preds = %if.end167, %do.end73, %if.then65.out_crit_edge, %if.end44.out_crit_edge, %do.end, %do.body11.out_crit_edge, %sess_alloc_buffer.exit.thread
  %rc.0 = phi i32 [ %call8, %do.end ], [ %call8, %do.body11.out_crit_edge ], [ %call.i238, %if.end44.out_crit_edge ], [ -5, %do.end73 ], [ -5, %if.then65.out_crit_edge ], [ %call168, %if.end167 ], [ %retval.0.i228.ph, %sess_alloc_buffer.exit.thread ]
  %result = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 5
  %152 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %rc.0, ptr %result, align 4
  %func = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %153 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %func, align 4
  %buf0_type.i243 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %154 = ptrtoint ptr %buf0_type.i243 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %buf0_type.i243, align 4
  %iov.i244 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %156 = ptrtoint ptr %iov.i244 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iov.i244, align 4
  call void @free_rsp_buf(i32 noundef %155, ptr noundef %157) #15
  %158 = ptrtoint ptr %buf0_type.i243 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %buf0_type.i243, align 4
  %arrayidx3.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %159 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx3.i, align 4
  call void @kfree(ptr noundef %160) #15
  %response170 = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %161 = ptrtoint ptr %response170 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %response170, align 4
  call void @kfree(ptr noundef %162) #15
  %163 = ptrtoint ptr %response170 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %response170, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcc_ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sess_auth_kerberos(ptr noundef %sess_data) #2 align 64 {
entry:
  %rsp_iov.i = alloca %struct.kvec, align 8
  %smb_buf.i = alloca ptr, align 4
  %bcc_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcc_ptr) #15
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %4 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %smb_buf.i, align 4, !annotation !324
  %call.i = call i32 @small_smb_init_no_tc(i32 noundef 115, i32 noundef 12, ptr noundef %1, ptr noundef nonnull %smb_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sess_alloc_buffer.exit.thread_crit_edge

entry.sess_alloc_buffer.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sess_alloc_buffer.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smb_buf.i, align 4
  %iov.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iov.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %6, align 1
  %add.i = add i32 %9, 4
  %iov_len.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %iov_len.i, align 4
  %buf0_type.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %11 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %buf0_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 2000) #22
  %arrayidx6.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx6.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smb_buf.i, align 4
  call void @cifs_small_buf_release(ptr noundef %15) #15
  %16 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %iov.i, align 4
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iov_len.i, align 4
  %18 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buf0_type.i, align 4
  br label %sess_alloc_buffer.exit.thread

sess_alloc_buffer.exit.thread:                    ; preds = %if.then12.i, %entry.sess_alloc_buffer.exit.thread_crit_edge
  %retval.0.i311.ph = phi i32 [ %call.i, %entry.sess_alloc_buffer.exit.thread_crit_edge ], [ -12, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %19 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iov.i, align 4
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.i, align 4
  %23 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bcc_ptr, align 4
  %AndXCommand.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %AndXCommand.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %AndXCommand.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %25 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub.i = add i32 %25, 84
  %26 = call i32 @llvm.umin.i32(i32 %sub.i, i32 65535) #15
  %27 = trunc i32 %26 to i16
  %28 = call i16 @llvm.bswap.i16(i16 %27) #15
  %MaxBufferSize.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 4
  %29 = ptrtoint ptr %MaxBufferSize.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %MaxBufferSize.i, align 1
  %maxReq.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 38
  %30 = ptrtoint ptr %maxReq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxReq.i, align 4
  %conv1.i = trunc i32 %31 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv1.i) #15
  %MaxMpxCount.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 5
  %33 = ptrtoint ptr %MaxMpxCount.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %MaxMpxCount.i, align 1
  %VcNumber.i = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 6
  %34 = ptrtoint ptr %VcNumber.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 256, ptr %VcNumber.i, align 1
  %sign.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 29
  %35 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sign.i, align 2, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i312 = icmp eq i8 %36, 0
  br i1 %tobool.not.i312, label %if.end.if.end.i313_crit_edge, label %if.then.i

if.end.if.end.i313_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i313

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %Flags2.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %37 = ptrtoint ptr %Flags2.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %Flags2.i, align 1
  %39 = or i16 %38, 1024
  store i16 %39, ptr %Flags2.i, align 1
  br label %if.end.i313

if.end.i313:                                      ; preds = %if.then.i, %if.end.if.end.i313_crit_edge
  %capabilities4.i = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capabilities4.i, align 8
  %and.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i313.if.end13.i_crit_edge, label %if.then6.i

if.end.i313.if.end13.i_crit_edge:                 ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #17
  %Flags28.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %42 = ptrtoint ptr %Flags28.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %Flags28.i, align 1
  %44 = or i16 %43, 128
  store i16 %44, ptr %Flags28.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.end.i313.if.end13.i_crit_edge
  %capabilities.0.i = phi i32 [ 49308, %if.then6.i ], [ 49304, %if.end.i313.if.end13.i_crit_edge ]
  %45 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %capabilities4.i, align 8
  %and15.i = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then17.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags219.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %47 = ptrtoint ptr %Flags219.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %Flags219.i, align 1
  %49 = or i16 %48, 64
  store i16 %49, ptr %Flags219.i, align 1
  %or23.i = or i32 %capabilities.0.i, 64
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end24.i_crit_edge
  %capabilities.1.i = phi i32 [ %or23.i, %if.then17.i ], [ %capabilities.0.i, %if.end13.i.if.end24.i_crit_edge ]
  %50 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %capabilities4.i, align 8
  %and26.i = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.cifs_ssetup_hdr.exit_crit_edge, label %if.then28.i

if.end24.i.cifs_ssetup_hdr.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ssetup_hdr.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags230.i = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %52 = ptrtoint ptr %Flags230.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %Flags230.i, align 1
  %54 = or i16 %53, 16
  store i16 %54, ptr %Flags230.i, align 1
  %or34.i = or i32 %capabilities.1.i, 4096
  br label %cifs_ssetup_hdr.exit

cifs_ssetup_hdr.exit:                             ; preds = %if.then28.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge
  %capabilities.2.i = phi i32 [ %or34.i, %if.then28.i ], [ %capabilities.1.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge ]
  %55 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %capabilities4.i, align 8
  %and37.i = and i32 %56, 8388608
  %call7 = call ptr @cifs_get_spnego_key(ptr noundef %1, ptr noundef %3) #15
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %cifs_ssetup_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %call7 to i32
  br label %out

if.end11:                                         ; preds = %cifs_ssetup_hdr.exit
  %58 = getelementptr inbounds %struct.key, ptr %call7, i32 0, i32 17
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.not = icmp eq i32 %62, 2
  br i1 %cmp.not, label %if.end26, label %do.body14

do.body14:                                        ; preds = %if.end11
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.out_put_spnego_key_crit_edge, label %do.end

do.body14.out_put_spnego_key_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_spnego_key

do.end:                                           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef 2, i32 noundef %64) #20
  br label %out_put_spnego_key

if.end26:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.cifs_spnego_msg, ptr %60, i32 0, i32 4
  %sesskey_len = getelementptr inbounds %struct.cifs_spnego_msg, ptr %60, i32 0, i32 2
  %65 = ptrtoint ptr %sesskey_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sesskey_len, align 4
  %call27 = call ptr @kmemdup(ptr noundef %data, i32 noundef %66, i32 noundef 3264) #15
  %response = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %67 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call27, ptr %response, align 4
  %tobool30.not = icmp eq ptr %call27, null
  br i1 %tobool30.not, label %do.body33, label %if.end48

do.body33:                                        ; preds = %if.end26
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs.129, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.out_put_spnego_key_crit_edge, label %do.end39

do.body33.out_put_spnego_key_crit_edge:           ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_spnego_key

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %sesskey_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sesskey_len, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %69) #20
  br label %out_put_spnego_key

if.end48:                                         ; preds = %if.end26
  %auth_key = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21
  %70 = ptrtoint ptr %sesskey_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sesskey_len, align 4
  %72 = ptrtoint ptr %auth_key to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %auth_key, align 8
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %20, i32 0, i32 5
  %73 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %Flags2, align 1
  %75 = or i16 %74, 8
  store i16 %75, ptr %Flags2, align 1
  %76 = or i32 %capabilities.2.i, %and37.i
  %or52 = or i32 %76, -2147483648
  %77 = call i32 @llvm.bswap.i32(i32 %or52)
  %Capabilities = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 10
  %78 = ptrtoint ptr %Capabilities to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %Capabilities, align 1
  %79 = ptrtoint ptr %sesskey_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sesskey_len, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %80
  %arrayidx57 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr, ptr %arrayidx57, align 4
  %secblob_len = getelementptr inbounds %struct.cifs_spnego_msg, ptr %60, i32 0, i32 3
  %82 = ptrtoint ptr %secblob_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %secblob_len, align 4
  %iov_len = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1, i32 1
  %84 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %iov_len, align 4
  %conv64 = trunc i32 %83 to i16
  %85 = call i16 @llvm.bswap.i16(i16 %conv64)
  %SecurityBlobLength = getelementptr inbounds %struct.anon.161, ptr %20, i32 0, i32 8
  %86 = ptrtoint ptr %SecurityBlobLength to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %SecurityBlobLength, align 1
  %87 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %capabilities4.i, align 8
  %and = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end48
  %89 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iov_len.i, align 4
  %91 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iov_len, align 4
  %add = add i32 %92, %90
  %rem = and i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool74.not = icmp eq i32 %rem, 0
  br i1 %tobool74.not, label %if.then67.if.end76_crit_edge, label %if.then75

if.then67.if.end76_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %22, align 1
  %incdec.ptr = getelementptr i8, ptr %22, i32 1
  %94 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %incdec.ptr, ptr %bcc_ptr, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then67.if.end76_crit_edge
  %nls_cp = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %95 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %nls_cp, align 4
  %97 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bcc_ptr, align 4
  %call.i314 = call i32 @cifs_strtoUTF16(ptr noundef %98, ptr noundef nonnull @.str.103, i32 noundef 32, ptr noundef %96) #15
  %mul.i = shl i32 %call.i314, 1
  %add.ptr.i = getelementptr i8, ptr %98, i32 %mul.i
  %call2.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef 32, ptr noundef %96) #15
  %mul3.i = shl i32 %call2.i, 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 2
  %call6.i = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr5.i, ptr noundef nonnull @.str.104, i32 noundef 32, ptr noundef %96) #15
  %mul7.i = shl i32 %call6.i, 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul7.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 2
  %domainName.i = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 18
  %99 = ptrtoint ptr %domainName.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %domainName.i, align 4
  %cmp.i315 = icmp eq ptr %100, null
  br i1 %cmp.i315, label %if.then.i317, label %if.else.i

if.then.i317:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %add.ptr9.i, align 1
  %add.ptr.i316 = getelementptr i8, ptr %add.ptr9.i, i32 1
  %102 = ptrtoint ptr %add.ptr.i316 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %add.ptr.i316, align 1
  br label %unicode_domain_string.exit

if.else.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nls_cp, align 4
  %call.i318 = call i32 @cifs_strtoUTF16(ptr noundef %add.ptr9.i, ptr noundef nonnull %100, i32 noundef 256, ptr noundef %104) #15
  %phi.bo.i = shl i32 %call.i318, 1
  br label %unicode_domain_string.exit

unicode_domain_string.exit:                       ; preds = %if.else.i, %if.then.i317
  %bytes_ret.0.i = phi i32 [ 0, %if.then.i317 ], [ %phi.bo.i, %if.else.i ]
  %add.ptr2.i = getelementptr i8, ptr %add.ptr9.i, i32 %bytes_ret.0.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  %105 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr3.i, ptr %bcc_ptr, align 4
  br label %if.end79

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ascii_ssetup_strings(ptr noundef nonnull %bcc_ptr, ptr noundef %1)
  br label %if.end79

if.end79:                                         ; preds = %if.else, %unicode_domain_string.exit
  %106 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bcc_ptr, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx6.i, align 4
  %111 = ptrtoint ptr %110 to i32
  %sub = sub i32 %108, %111
  %iov_len85 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2, i32 1
  %112 = ptrtoint ptr %iov_len85 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub, ptr %iov_len85, align 4
  %113 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  %115 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %rsp_iov.i, align 8
  %116 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iov_len, align 4
  %add.i322 = add i32 %117, %sub
  %conv.i = trunc i32 %add.i322 to i16
  %conv6.i = and i32 %add.i322, 65535
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %114, align 4
  %add.i.i = add i32 %conv6.i, %119
  store i32 %add.i.i, ptr %114, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %114, i32 37
  %WordCount.i.i.i = getelementptr inbounds %struct.smb_hdr, ptr %114, i32 0, i32 13
  %120 = ptrtoint ptr %WordCount.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %WordCount.i.i.i, align 1
  %conv.i.i.i = zext i8 %121 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %122 = call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %123 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %add.ptr1.i.i.i, align 1
  %124 = ptrtoint ptr %sess_data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sess_data, align 4
  %126 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ses1, align 4
  %call.i324 = call i32 @SendReceive2(i32 noundef %125, ptr noundef %127, ptr noundef %iov.i, i32 noundef 3, ptr noundef %buf0_type.i, i32 noundef 16, ptr noundef nonnull %rsp_iov.i) #15
  %128 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iov.i, align 4
  call void @cifs_small_buf_release(ptr noundef %129) #15
  %130 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rsp_iov.i, align 8
  %132 = ptrtoint ptr %iov.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 %131, ptr %iov.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool87.not = icmp eq i32 %call.i324, 0
  br i1 %tobool87.not, label %if.end89, label %if.end79.out_put_spnego_key_crit_edge

if.end79.out_put_spnego_key_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_spnego_key

if.end89:                                         ; preds = %if.end79
  %133 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iov.i, align 4
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %134, i32 0, i32 13
  %135 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %136)
  %cmp97.not = icmp eq i8 %136, 4
  br i1 %cmp97.not, label %if.end117, label %if.then99

if.then99:                                        ; preds = %if.end89
  %call102 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs.133, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then99.out_put_spnego_key_crit_edge, label %do.end107

if.then99.out_put_spnego_key_crit_edge:           ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_spnego_key

do.end107:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  %137 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %WordCount, align 1
  %conv110 = zext i8 %138 to i32
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv110) #20
  br label %out_put_spnego_key

if.end117:                                        ; preds = %if.end89
  %Action = getelementptr inbounds %struct.anon.163, ptr %134, i32 0, i32 4
  %139 = ptrtoint ptr %Action to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %Action, align 1
  %141 = and i16 %140, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %tobool120.not = icmp eq i16 %141, 0
  br i1 %tobool120.not, label %if.end117.if.end145_crit_edge, label %do.body123

if.end117.if.end145_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

do.body123:                                       ; preds = %if.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %142 = load i32, ptr @cifsFYI, align 4
  %and124 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.if.end145_crit_edge, label %do.body127

do.body123.if.end145_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

do.body127:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_kerberos.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_kerberos, %land.lhs.true)) #15
          to label %if.end145 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body127
  %call133 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs.136, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true.if.end145_crit_edge, label %if.then135

land.lhs.true.if.end145_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then135:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_kerberos.descriptor, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str) #15
  br label %if.end145

if.end145:                                        ; preds = %if.then135, %land.lhs.true.if.end145_crit_edge, %do.body127, %do.body123.if.end145_crit_edge, %if.end117.if.end145_crit_edge
  %Uid = getelementptr inbounds %struct.smb_hdr, ptr %134, i32 0, i32 11
  %143 = ptrtoint ptr %Uid to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %Uid, align 1
  %conv146 = zext i16 %144 to i64
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 12
  %145 = ptrtoint ptr %Suid to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %conv146, ptr %Suid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %146 = load i32, ptr @cifsFYI, align 4
  %and149 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end145.do.end177_crit_edge, label %do.body152

if.end145.do.end177_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end177

do.body152:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_kerberos.descriptor.138, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_kerberos, %land.lhs.true164)) #15
          to label %do.end177 [label %land.lhs.true164], !srcloc !316

land.lhs.true164:                                 ; preds = %do.body152
  %call165 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs.137, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %land.lhs.true164.do.end177_crit_edge, label %if.then167

land.lhs.true164.do.end177_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end177

if.then167:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #17
  %147 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %Suid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_kerberos.descriptor.138, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str, i64 noundef %148) #15
  br label %do.end177

do.end177:                                        ; preds = %if.then167, %land.lhs.true164.do.end177_crit_edge, %do.body152, %if.end145.do.end177_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %134, i32 37
  %149 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %WordCount, align 1
  %conv.i.i = zext i8 %150 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %151 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %add.ptr1.i.i, align 1
  %153 = call i16 @llvm.bswap.i16(i16 %152) #15
  %SecurityBlobLength181 = getelementptr inbounds %struct.anon.163, ptr %134, i32 0, i32 5
  %154 = ptrtoint ptr %SecurityBlobLength181 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %SecurityBlobLength181, align 1
  %156 = call i16 @llvm.bswap.i16(i16 %155)
  %conv182 = zext i16 %156 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %153, i16 %156)
  %cmp184 = icmp ult i16 %153, %156
  br i1 %cmp184, label %do.body188, label %if.end203

do.body188:                                       ; preds = %do.end177
  %call189 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_kerberos._rs.139, ptr noundef nonnull @__func__.sess_auth_kerberos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %do.body188.out_put_spnego_key_crit_edge, label %do.end194

do.body188.out_put_spnego_key_crit_edge:          ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_spnego_key

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #17
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv182) #20
  br label %out_put_spnego_key

if.end203:                                        ; preds = %do.end177
  %add.ptr180 = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %add.ptr205 = getelementptr i8, ptr %add.ptr180, i32 %conv182
  %157 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %add.ptr205, ptr %bcc_ptr, align 4
  %sub208 = sub i16 %153, %156
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub208)
  %cmp211 = icmp eq i16 %sub208, 0
  br i1 %cmp211, label %if.end203.if.end231_crit_edge, label %if.else214

if.end203.if.end231_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end231

if.else214:                                       ; preds = %if.end203
  %Flags2215 = getelementptr inbounds %struct.smb_hdr, ptr %134, i32 0, i32 5
  %158 = ptrtoint ptr %Flags2215 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %Flags2215, align 1
  %160 = and i16 %159, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool218.not = icmp eq i16 %160, 0
  br i1 %tobool218.not, label %if.else228, label %if.then219

if.then219:                                       ; preds = %if.else214
  %161 = ptrtoint ptr %add.ptr205 to i32
  %162 = ptrtoint ptr %134 to i32
  %sub220 = sub i32 %161, %162
  %rem221 = and i32 %sub220, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem221)
  %tobool222.not = icmp eq i32 %rem221, 0
  br i1 %tobool222.not, label %if.then219.if.end225_crit_edge, label %if.then223

if.then219.if.end225_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end225

if.then223:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr224 = getelementptr i8, ptr %add.ptr205, i32 1
  %163 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %incdec.ptr224, ptr %bcc_ptr, align 4
  %dec = add i16 %sub208, -1
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.then219.if.end225_crit_edge
  %bytes_remaining.0 = phi i16 [ %dec, %if.then223 ], [ %sub208, %if.then219.if.end225_crit_edge ]
  %conv226 = zext i16 %bytes_remaining.0 to i32
  %nls_cp227 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %164 = ptrtoint ptr %nls_cp227 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %nls_cp227, align 4
  call fastcc void @decode_unicode_ssetup(ptr noundef nonnull %bcc_ptr, i32 noundef %conv226, ptr noundef %1, ptr noundef %165)
  br label %if.end231

if.else228:                                       ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @decode_ascii_ssetup(ptr noundef nonnull %bcc_ptr, i16 noundef zeroext %sub208, ptr noundef %1)
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.end225, %if.end203.if.end231_crit_edge
  %call232 = call fastcc i32 @sess_establish_session(ptr noundef %sess_data)
  br label %out_put_spnego_key

out_put_spnego_key:                               ; preds = %if.end231, %do.end194, %do.body188.out_put_spnego_key_crit_edge, %do.end107, %if.then99.out_put_spnego_key_crit_edge, %if.end79.out_put_spnego_key_crit_edge, %do.end39, %do.body33.out_put_spnego_key_crit_edge, %do.end, %do.body14.out_put_spnego_key_crit_edge
  %rc.0 = phi i32 [ %call.i324, %if.end79.out_put_spnego_key_crit_edge ], [ -5, %do.end107 ], [ -5, %if.then99.out_put_spnego_key_crit_edge ], [ %call232, %if.end231 ], [ -129, %do.end ], [ -129, %do.body14.out_put_spnego_key_crit_edge ], [ -12, %do.end39 ], [ -12, %do.body33.out_put_spnego_key_crit_edge ], [ -22, %do.end194 ], [ -22, %do.body188.out_put_spnego_key_crit_edge ]
  call void @key_invalidate(ptr noundef %call7) #15
  call void @key_put(ptr noundef %call7) #15
  br label %out

out:                                              ; preds = %out_put_spnego_key, %if.then9, %sess_alloc_buffer.exit.thread
  %rc.1 = phi i32 [ %57, %if.then9 ], [ %rc.0, %out_put_spnego_key ], [ %retval.0.i311.ph, %sess_alloc_buffer.exit.thread ]
  %result = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 5
  %166 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %rc.1, ptr %result, align 4
  %func = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %167 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %func, align 4
  %buf0_type.i328 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %168 = ptrtoint ptr %buf0_type.i328 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %buf0_type.i328, align 4
  %iov.i329 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %170 = ptrtoint ptr %iov.i329 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %iov.i329, align 4
  call void @free_rsp_buf(i32 noundef %169, ptr noundef %171) #15
  %172 = ptrtoint ptr %buf0_type.i328 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %buf0_type.i328, align 4
  %arrayidx3.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %173 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx3.i, align 4
  call void @kfree(ptr noundef %174) #15
  %response234 = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %175 = ptrtoint ptr %response234 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %response234, align 4
  call void @kfree(ptr noundef %176) #15
  %177 = ptrtoint ptr %response234 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %response234, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcc_ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sess_auth_rawntlmssp_negotiate(ptr noundef %sess_data) #2 align 64 {
entry:
  %rsp_iov.i = alloca %struct.kvec, align 8
  %smb_buf.i = alloca ptr, align 4
  %ntlmsspblob = alloca ptr, align 4
  %blob_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ntlmsspblob) #15
  %4 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ntlmsspblob, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %blob_len) #15
  %5 = ptrtoint ptr %blob_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %blob_len, align 2, !annotation !324
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_negotiate.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_negotiate, %land.lhs.true)) #15
          to label %do.end15 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate._rs, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %if.then10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate.descriptor, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %land.lhs.true.do.end15_crit_edge, %do.body4, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 36) #22
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %ntlmssp, align 8
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %do.end15.out_crit_edge, label %if.end20

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end20:                                         ; preds = %do.end15
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call7.i, align 8
  %10 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ses1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %12 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %smb_buf.i, align 4, !annotation !324
  %call.i = call i32 @small_smb_init_no_tc(i32 noundef 115, i32 noundef 12, ptr noundef %11, ptr noundef nonnull %smb_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.sess_alloc_buffer.exit.thread_crit_edge

if.end20.sess_alloc_buffer.exit.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sess_alloc_buffer.exit.thread

if.end.i:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smb_buf.i, align 4
  %iov.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %15 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %iov.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %14, align 1
  %add.i = add i32 %17, 4
  %iov_len.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %iov_len.i, align 4
  %buf0_type.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %19 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %buf0_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 2000) #22
  %arrayidx6.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %arrayidx6.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end25

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smb_buf.i, align 4
  call void @cifs_small_buf_release(ptr noundef %23) #15
  %24 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %iov.i, align 4
  %25 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %iov_len.i, align 4
  %26 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %buf0_type.i, align 4
  br label %sess_alloc_buffer.exit.thread

sess_alloc_buffer.exit.thread:                    ; preds = %if.then12.i, %if.end20.sess_alloc_buffer.exit.thread_crit_edge
  %retval.0.i224.ph = phi i32 [ %call.i, %if.end20.sess_alloc_buffer.exit.thread_crit_edge ], [ -12, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  br label %out

if.end25:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %27 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iov.i, align 4
  %nls_cp = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %29 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nls_cp, align 4
  %call26 = call i32 @build_ntlmssp_negotiate_blob(ptr noundef nonnull %ntlmsspblob, ptr noundef nonnull %blob_len, ptr noundef %1, ptr noundef %3, ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_free_ntlmsspblob_crit_edge

if.end25.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end29:                                         ; preds = %if.end25
  %31 = ptrtoint ptr %blob_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %blob_len, align 2
  %conv = zext i16 %32 to i32
  %arrayidx31 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1
  %iov_len = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1, i32 1
  %33 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %iov_len, align 4
  %34 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ntlmsspblob, align 4
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx31, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %32)
  %SecurityBlobLength = getelementptr inbounds %struct.anon.161, ptr %28, i32 0, i32 8
  %38 = ptrtoint ptr %SecurityBlobLength to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %SecurityBlobLength, align 1
  %call35 = call fastcc i32 @_sess_auth_rawntlmssp_assemble_req(ptr noundef %sess_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end29.out_free_ntlmsspblob_crit_edge

if.end29.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end38:                                         ; preds = %if.end29
  %39 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  %41 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %rsp_iov.i, align 8
  %42 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iov_len, align 4
  %iov_len5.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2, i32 1
  %44 = ptrtoint ptr %iov_len5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iov_len5.i, align 4
  %add.i227 = add i32 %45, %43
  %conv.i = trunc i32 %add.i227 to i16
  %conv6.i = and i32 %add.i227, 65535
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %40, align 4
  %add.i.i = add i32 %conv6.i, %47
  store i32 %add.i.i, ptr %40, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 37
  %WordCount.i.i.i = getelementptr inbounds %struct.smb_hdr, ptr %40, i32 0, i32 13
  %48 = ptrtoint ptr %WordCount.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %WordCount.i.i.i, align 1
  %conv.i.i.i = zext i8 %49 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %50 = call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %51 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %add.ptr1.i.i.i, align 1
  %52 = ptrtoint ptr %sess_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sess_data, align 4
  %54 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ses1, align 4
  %call.i229 = call i32 @SendReceive2(i32 noundef %53, ptr noundef %55, ptr noundef %iov.i, i32 noundef 3, ptr noundef %buf0_type.i, i32 noundef 16, ptr noundef nonnull %rsp_iov.i) #15
  %56 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iov.i, align 4
  call void @cifs_small_buf_release(ptr noundef %57) #15
  %58 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rsp_iov.i, align 8
  %60 = ptrtoint ptr %iov.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %iov.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  %61 = lshr i64 %59, 32
  %62 = trunc i64 %61 to i32
  %63 = inttoptr i32 %62 to ptr
  %64 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf0_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not = icmp eq i32 %65, 0
  br i1 %cmp.not, label %if.end51, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end38
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 369098944, i32 %67)
  %cmp48 = icmp eq i32 %67, 369098944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool52.not = icmp eq i32 %call.i229, 0
  %or.cond = select i1 %cmp48, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %land.lhs.true47.do.body56_crit_edge, label %land.lhs.true47.out_free_ntlmsspblob_crit_edge

land.lhs.true47.out_free_ntlmsspblob_crit_edge:   ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

land.lhs.true47.do.body56_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body56

if.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool52.not.old = icmp eq i32 %call.i229, 0
  br i1 %tobool52.not.old, label %if.end51.do.body56_crit_edge, label %if.end51.out_free_ntlmsspblob_crit_edge

if.end51.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end51.do.body56_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body56

do.body56:                                        ; preds = %if.end51.do.body56_crit_edge, %land.lhs.true47.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %68 = load i32, ptr @cifsFYI, align 4
  %and57 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.end84_crit_edge, label %do.body60

do.body56.do.end84_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end84

do.body60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_negotiate.descriptor.146, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_negotiate, %land.lhs.true72)) #15
          to label %do.end84 [label %land.lhs.true72], !srcloc !316

land.lhs.true72:                                  ; preds = %do.body60
  %call73 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate._rs.145, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end84_crit_edge, label %if.then75

land.lhs.true72.do.end84_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end84

if.then75:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate.descriptor.146, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str) #15
  br label %do.end84

do.end84:                                         ; preds = %if.then75, %land.lhs.true72.do.end84_crit_edge, %do.body60, %do.body56.do.end84_crit_edge
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %63, i32 0, i32 13
  %69 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp86.not = icmp eq i8 %70, 4
  br i1 %cmp86.not, label %if.end106, label %if.then88

if.then88:                                        ; preds = %do.end84
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate._rs.148, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then88.out_free_ntlmsspblob_crit_edge, label %do.end96

if.then88.out_free_ntlmsspblob_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

do.end96:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %WordCount, align 1
  %conv99 = zext i8 %72 to i32
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv99) #20
  br label %out_free_ntlmsspblob

if.end106:                                        ; preds = %do.end84
  %Uid = getelementptr inbounds %struct.smb_hdr, ptr %63, i32 0, i32 11
  %73 = ptrtoint ptr %Uid to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %Uid, align 1
  %conv107 = zext i16 %74 to i64
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 12
  %75 = ptrtoint ptr %Suid to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv107, ptr %Suid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %76 = load i32, ptr @cifsFYI, align 4
  %and110 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end106.do.end138_crit_edge, label %do.body113

if.end106.do.end138_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end138

do.body113:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_negotiate.descriptor.150, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_negotiate, %land.lhs.true125)) #15
          to label %do.end138 [label %land.lhs.true125], !srcloc !316

land.lhs.true125:                                 ; preds = %do.body113
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate._rs.149, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %land.lhs.true125.do.end138_crit_edge, label %if.then128

land.lhs.true125.do.end138_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end138

if.then128:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %Suid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate.descriptor.150, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str, i64 noundef %78) #15
  br label %do.end138

do.end138:                                        ; preds = %if.then128, %land.lhs.true125.do.end138_crit_edge, %do.body113, %if.end106.do.end138_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 37
  %79 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %WordCount, align 1
  %conv.i.i = zext i8 %80 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %81 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %add.ptr1.i.i, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #15
  %SecurityBlobLength141 = getelementptr inbounds %struct.anon.163, ptr %63, i32 0, i32 5
  %84 = ptrtoint ptr %SecurityBlobLength141 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %SecurityBlobLength141, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85)
  %87 = ptrtoint ptr %blob_len to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %blob_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %83)
  %cmp144 = icmp ugt i16 %86, %83
  br i1 %cmp144, label %do.body148, label %if.end163

do.body148:                                       ; preds = %do.end138
  %call149 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_negotiate._rs.151, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %do.body148.out_free_ntlmsspblob_crit_edge, label %do.end154

do.body148.out_free_ntlmsspblob_crit_edge:        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #17
  %conv156 = zext i16 %86 to i32
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv156) #20
  br label %out_free_ntlmsspblob

if.end163:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #17
  %conv142 = zext i16 %86 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %call165 = call i32 @decode_ntlmssp_challenge(ptr noundef %add.ptr, i32 noundef %conv142, ptr noundef %1)
  br label %out_free_ntlmsspblob

out_free_ntlmsspblob:                             ; preds = %if.end163, %do.end154, %do.body148.out_free_ntlmsspblob_crit_edge, %do.end96, %if.then88.out_free_ntlmsspblob_crit_edge, %if.end51.out_free_ntlmsspblob_crit_edge, %land.lhs.true47.out_free_ntlmsspblob_crit_edge, %if.end29.out_free_ntlmsspblob_crit_edge, %if.end25.out_free_ntlmsspblob_crit_edge
  %rc.1 = phi i32 [ %call26, %if.end25.out_free_ntlmsspblob_crit_edge ], [ %call35, %if.end29.out_free_ntlmsspblob_crit_edge ], [ %call.i229, %if.end51.out_free_ntlmsspblob_crit_edge ], [ -5, %do.end96 ], [ -5, %if.then88.out_free_ntlmsspblob_crit_edge ], [ %call165, %if.end163 ], [ -22, %do.end154 ], [ -22, %do.body148.out_free_ntlmsspblob_crit_edge ], [ %call.i229, %land.lhs.true47.out_free_ntlmsspblob_crit_edge ]
  %88 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ntlmsspblob, align 4
  call void @kfree(ptr noundef %89) #15
  br label %out

out:                                              ; preds = %out_free_ntlmsspblob, %sess_alloc_buffer.exit.thread, %do.end15.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_free_ntlmsspblob ], [ -12, %do.end15.out_crit_edge ], [ %retval.0.i224.ph, %sess_alloc_buffer.exit.thread ]
  %buf0_type.i231 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %90 = ptrtoint ptr %buf0_type.i231 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf0_type.i231, align 4
  %iov.i232 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %92 = ptrtoint ptr %iov.i232 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iov.i232, align 4
  call void @free_rsp_buf(i32 noundef %91, ptr noundef %93) #15
  %94 = ptrtoint ptr %buf0_type.i231 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %buf0_type.i231, align 4
  %arrayidx3.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %95 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx3.i, align 4
  call void @kfree(ptr noundef %96) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %tobool166.not = icmp eq i32 %rc.2, 0
  br i1 %tobool166.not, label %out.cleanup_crit_edge, label %if.end168

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end168:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %response = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %97 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %response, align 4
  call void @kfree(ptr noundef %98) #15
  %99 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %response, align 4
  %100 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ntlmssp, align 8
  call void @kfree(ptr noundef %101) #15
  %102 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %ntlmssp, align 8
  %result = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 5
  %103 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %rc.2, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end168, %out.cleanup_crit_edge
  %.sink = phi ptr [ null, %if.end168 ], [ @sess_auth_rawntlmssp_authenticate, %out.cleanup_crit_edge ]
  %104 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %.sink, ptr %104, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %blob_len) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ntlmsspblob) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ascii_ssetup_strings(ptr nocapture noundef %pbcc_area, ptr nocapture noundef readonly %ses) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbcc_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbcc_area, align 4
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %2 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_name, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then:                                          ; preds = %entry
  %call = tail call i32 @strscpy(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %land.rhs, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.rhs:                                         ; preds = %if.then
  %.b2 = load i1, ptr @ascii_ssetup_strings.__already_done, align 1
  br i1 %.b2, label %land.rhs.if.end30_crit_edge, label %if.then9, !prof !319

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ascii_ssetup_strings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 9, ptr noundef null) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %land.rhs.if.end30_crit_edge, %if.then.if.end30_crit_edge
  %spec.select = phi i32 [ %call, %if.then.if.end30_crit_edge ], [ 255, %if.then9 ], [ 255, %land.rhs.if.end30_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %spec.select
  br label %if.end41

if.end41:                                         ; preds = %if.end30, %entry.if.end41_crit_edge
  %bcc_ptr.0 = phi ptr [ %add.ptr, %if.end30 ], [ %1, %entry.if.end41_crit_edge ]
  %4 = ptrtoint ptr %bcc_ptr.0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bcc_ptr.0, align 1
  %incdec.ptr = getelementptr i8, ptr %bcc_ptr.0, i32 1
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %5 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domainName, align 4
  %cmp42.not = icmp eq ptr %6, null
  br i1 %cmp42.not, label %if.end41.if.end104_crit_edge, label %if.then43

if.end41.if.end104_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then43:                                        ; preds = %if.end41
  %call45 = tail call i32 @strscpy(ptr noundef %incdec.ptr, ptr noundef nonnull %6, i32 noundef 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp slt i32 %call45, 0
  br i1 %cmp47, label %land.rhs54, label %if.then43.if.end92_crit_edge

if.then43.if.end92_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

land.rhs54:                                       ; preds = %if.then43
  %.b1431 = load i1, ptr @ascii_ssetup_strings.__already_done.105, align 1
  br i1 %.b1431, label %land.rhs54.if.end92_crit_edge, label %if.then65, !prof !319

land.rhs54.if.end92_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ascii_ssetup_strings.__already_done.105, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 519, i32 noundef 9, ptr noundef null) #15
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %land.rhs54.if.end92_crit_edge, %if.then43.if.end92_crit_edge
  %spec.select3 = phi i32 [ %call45, %if.then43.if.end92_crit_edge ], [ 255, %if.then65 ], [ 255, %land.rhs54.if.end92_crit_edge ]
  %add.ptr103 = getelementptr i8, ptr %incdec.ptr, i32 %spec.select3
  br label %if.end104

if.end104:                                        ; preds = %if.end92, %if.end41.if.end104_crit_edge
  %bcc_ptr.1 = phi ptr [ %add.ptr103, %if.end92 ], [ %incdec.ptr, %if.end41.if.end104_crit_edge ]
  %7 = ptrtoint ptr %bcc_ptr.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bcc_ptr.1, align 1
  %incdec.ptr105 = getelementptr i8, ptr %bcc_ptr.1, i32 1
  %8 = call ptr @memcpy(ptr %incdec.ptr105, ptr @.str.103, i32 15)
  %add.ptr107 = getelementptr i8, ptr %bcc_ptr.1, i32 15
  %call109 = tail call ptr @strcpy(ptr noundef %add.ptr107, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #18
  %call113 = tail call i32 @strlen(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #18
  %add = add i32 %call113, 1
  %add.ptr114 = getelementptr i8, ptr %add.ptr107, i32 %add
  %9 = call ptr @memcpy(ptr %add.ptr114, ptr @.str.104, i32 26)
  %add.ptr116 = getelementptr i8, ptr %add.ptr114, i32 26
  %10 = ptrtoint ptr %pbcc_area to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr116, ptr %pbcc_area, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_unicode_ssetup(ptr nocapture noundef readonly %pbcc_area, i32 noundef %bleft, ptr nocapture noundef %ses, ptr noundef %nls_cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbcc_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbcc_area, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_unicode_ssetup.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_unicode_ssetup, %land.lhs.true)) #15
          to label %do.end13 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_unicode_ssetup._rs, ptr noundef nonnull @.str.106) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_unicode_ssetup.descriptor, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str, i32 noundef %bleft) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %serverOS = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 9
  %3 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serverOS, align 8
  tail call void @kfree(ptr noundef %4) #15
  %call14 = tail call ptr @cifs_strndup_from_utf16(ptr noundef %1, i32 noundef %bleft, i1 noundef zeroext true, ptr noundef %nls_cp) #15
  %5 = ptrtoint ptr %serverOS to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %serverOS, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and18 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end13.do.end46_crit_edge, label %do.body21

do.end13.do.end46_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end46

do.body21:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_unicode_ssetup.descriptor.109, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_unicode_ssetup, %land.lhs.true33)) #15
          to label %do.end46 [label %land.lhs.true33], !srcloc !316

land.lhs.true33:                                  ; preds = %do.body21
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_unicode_ssetup._rs.108, ptr noundef nonnull @.str.106) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end46_crit_edge, label %if.then36

land.lhs.true33.do.end46_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end46

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serverOS, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_unicode_ssetup.descriptor.109, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str, ptr noundef %8) #15
  br label %do.end46

do.end46:                                         ; preds = %if.then36, %land.lhs.true33.do.end46_crit_edge, %do.body21, %do.end13.do.end46_crit_edge
  %div = sdiv i32 %bleft, 2
  %smax.i = tail call i32 @llvm.smax.i32(i32 %div, i32 1) #15
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end46
  %ucs1.addr.0.i = phi ptr [ %1, %do.end46 ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %do.end46 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %9 = ptrtoint ptr %ucs1.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ucs1.addr.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %while.cond.i.UniStrnlen.exit_crit_edge, label %while.body.i

while.cond.i.UniStrnlen.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %UniStrnlen.exit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i16, ptr %ucs1.addr.0.i, i32 1
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %while.body.i.UniStrnlen.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.body.i.UniStrnlen.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %UniStrnlen.exit

UniStrnlen.exit:                                  ; preds = %while.body.i.UniStrnlen.exit_crit_edge, %while.cond.i.UniStrnlen.exit_crit_edge
  %i.1.i = phi i32 [ %smax.i, %while.body.i.UniStrnlen.exit_crit_edge ], [ %i.0.i, %while.cond.i.UniStrnlen.exit_crit_edge ]
  %mul = shl nuw i32 %i.1.i, 1
  %add = add i32 %mul, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %sub = sub i32 %bleft, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %UniStrnlen.exit.cleanup_crit_edge, label %if.end49

UniStrnlen.exit.cleanup_crit_edge:                ; preds = %UniStrnlen.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end49:                                         ; preds = %UniStrnlen.exit
  %serverNOS = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 10
  %11 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serverNOS, align 4
  tail call void @kfree(ptr noundef %12) #15
  %call50 = tail call ptr @cifs_strndup_from_utf16(ptr noundef %add.ptr, i32 noundef %sub, i1 noundef zeroext true, ptr noundef %nls_cp) #15
  %13 = ptrtoint ptr %serverNOS to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call50, ptr %serverNOS, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and54 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end49.do.end82_crit_edge, label %do.body57

if.end49.do.end82_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

do.body57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_unicode_ssetup.descriptor.112, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_unicode_ssetup, %land.lhs.true69)) #15
          to label %do.end82 [label %land.lhs.true69], !srcloc !316

land.lhs.true69:                                  ; preds = %do.body57
  %call70 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_unicode_ssetup._rs.111, ptr noundef nonnull @.str.106) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end82_crit_edge, label %if.then72

land.lhs.true69.do.end82_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serverNOS, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_unicode_ssetup.descriptor.112, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str, ptr noundef %16) #15
  br label %do.end82

do.end82:                                         ; preds = %if.then72, %land.lhs.true69.do.end82_crit_edge, %do.body57, %if.end49.do.end82_crit_edge
  %div83178179 = lshr i32 %sub, 1
  %smax.i163 = tail call i32 @llvm.smax.i32(i32 %div83178179, i32 1) #15
  br label %while.cond.i167

while.cond.i167:                                  ; preds = %while.body.i171.while.cond.i167_crit_edge, %do.end82
  %ucs1.addr.0.i164 = phi ptr [ %add.ptr, %do.end82 ], [ %incdec.ptr.i168, %while.body.i171.while.cond.i167_crit_edge ]
  %i.0.i165 = phi i32 [ 0, %do.end82 ], [ %inc.i169, %while.body.i171.while.cond.i167_crit_edge ]
  %17 = ptrtoint ptr %ucs1.addr.0.i164 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ucs1.addr.0.i164, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i166 = icmp eq i16 %18, 0
  br i1 %tobool.not.i166, label %while.cond.i167.UniStrnlen.exit173_crit_edge, label %while.body.i171

while.cond.i167.UniStrnlen.exit173_crit_edge:     ; preds = %while.cond.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %UniStrnlen.exit173

while.body.i171:                                  ; preds = %while.cond.i167
  %incdec.ptr.i168 = getelementptr i16, ptr %ucs1.addr.0.i164, i32 1
  %inc.i169 = add nuw nsw i32 %i.0.i165, 1
  %exitcond.not.i170 = icmp eq i32 %inc.i169, %smax.i163
  br i1 %exitcond.not.i170, label %while.body.i171.UniStrnlen.exit173_crit_edge, label %while.body.i171.while.cond.i167_crit_edge

while.body.i171.while.cond.i167_crit_edge:        ; preds = %while.body.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i167

while.body.i171.UniStrnlen.exit173_crit_edge:     ; preds = %while.body.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %UniStrnlen.exit173

UniStrnlen.exit173:                               ; preds = %while.body.i171.UniStrnlen.exit173_crit_edge, %while.cond.i167.UniStrnlen.exit173_crit_edge
  %i.1.i172 = phi i32 [ %smax.i163, %while.body.i171.UniStrnlen.exit173_crit_edge ], [ %i.0.i165, %while.cond.i167.UniStrnlen.exit173_crit_edge ]
  %mul85 = shl nuw i32 %i.1.i172, 1
  %add86 = add i32 %mul85, 2
  %sub88 = sub i32 %sub, %add86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub88)
  %cmp89 = icmp slt i32 %sub88, 1
  br i1 %cmp89, label %UniStrnlen.exit173.cleanup_crit_edge, label %if.end91

UniStrnlen.exit173.cleanup_crit_edge:             ; preds = %UniStrnlen.exit173
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end91:                                         ; preds = %UniStrnlen.exit173
  %add.ptr87 = getelementptr i8, ptr %add.ptr, i32 %add86
  %serverDomain = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 11
  %19 = ptrtoint ptr %serverDomain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serverDomain, align 8
  tail call void @kfree(ptr noundef %20) #15
  %call92 = tail call ptr @cifs_strndup_from_utf16(ptr noundef %add.ptr87, i32 noundef %sub88, i1 noundef zeroext true, ptr noundef %nls_cp) #15
  %21 = ptrtoint ptr %serverDomain to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call92, ptr %serverDomain, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and96 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end91.cleanup_crit_edge, label %do.body99

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_unicode_ssetup.descriptor.115, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_unicode_ssetup, %land.lhs.true111)) #15
          to label %cleanup [label %land.lhs.true111], !srcloc !316

land.lhs.true111:                                 ; preds = %do.body99
  %call112 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_unicode_ssetup._rs.114, ptr noundef nonnull @.str.106) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true111.cleanup_crit_edge, label %if.then114

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then114:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %serverDomain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serverDomain, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_unicode_ssetup.descriptor.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str, ptr noundef %24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %land.lhs.true111.cleanup_crit_edge, %do.body99, %if.end91.cleanup_crit_edge, %UniStrnlen.exit173.cleanup_crit_edge, %UniStrnlen.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_ascii_ssetup(ptr nocapture noundef readonly %pbcc_area, i16 noundef zeroext %bleft, ptr nocapture noundef %ses) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbcc_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbcc_area, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_ascii_ssetup.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_ascii_ssetup, %land.lhs.true)) #15
          to label %do.end13 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ascii_ssetup._rs, ptr noundef nonnull @.str.117) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %bleft to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_ascii_ssetup.descriptor, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str, i32 noundef %conv) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %conv14 = zext i16 %bleft to i32
  %call15 = tail call i32 @strnlen(ptr noundef %1, i32 noundef %conv14) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %conv14)
  %cmp.not = icmp slt i32 %call15, %conv14
  br i1 %cmp.not, label %if.end19, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %do.end13
  %serverOS = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 9
  %3 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serverOS, align 8
  tail call void @kfree(ptr noundef %4) #15
  %add = add nsw i32 %call15, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #21
  %5 = ptrtoint ptr %serverOS to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %serverOS, align 8
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end19.if.end63_crit_edge, label %if.then24

if.end19.if.end63_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then24:                                        ; preds = %if.end19
  %6 = call ptr @memcpy(ptr %call9.i, ptr %1, i32 %call15)
  %7 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serverOS, align 8
  %arrayidx = getelementptr i8, ptr %8, i32 %call15
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %10 = load ptr, ptr %serverOS, align 8
  %call28 = tail call i32 @strncmp(ptr noundef %10, ptr noundef nonnull dereferenceable(5) @.str.119, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %do.body33, label %if.then24.if.end63_crit_edge

if.then24.if.end63_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

do.body33:                                        ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and34 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.if.end63_crit_edge, label %do.body37

do.body33.if.end63_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

do.body37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_ascii_ssetup.descriptor.121, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_ascii_ssetup, %land.lhs.true49)) #15
          to label %if.end63 [label %land.lhs.true49], !srcloc !316

land.lhs.true49:                                  ; preds = %do.body37
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ascii_ssetup._rs.120, ptr noundef nonnull @.str.117) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.if.end63_crit_edge, label %if.then52

land.lhs.true49.if.end63_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_ascii_ssetup.descriptor.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then52, %land.lhs.true49.if.end63_crit_edge, %do.body37, %do.body33.if.end63_crit_edge, %if.then24.if.end63_crit_edge, %if.end19.if.end63_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %12 = trunc i32 %add to i16
  %conv67 = sub i16 %bleft, %12
  %conv68 = zext i16 %conv67 to i32
  %call69 = tail call i32 @strnlen(ptr noundef %add.ptr, i32 noundef %conv68) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call69, i32 %conv68)
  %cmp71.not = icmp slt i32 %call69, %conv68
  br i1 %cmp71.not, label %if.end74, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end74:                                         ; preds = %if.end63
  %serverNOS = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 10
  %13 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serverNOS, align 4
  tail call void @kfree(ptr noundef %14) #15
  %add75 = add nsw i32 %call69, 1
  %call9.i28 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add75, i32 noundef 3264) #21
  %15 = ptrtoint ptr %serverNOS to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i28, ptr %serverNOS, align 4
  %tobool79.not = icmp eq ptr %call9.i28, null
  br i1 %tobool79.not, label %if.end74.if.end84_crit_edge, label %if.then80

if.end74.if.end84_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %16 = call ptr @memcpy(ptr %call9.i28, ptr %add.ptr, i32 %call69)
  %17 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serverNOS, align 4
  %arrayidx83 = getelementptr i8, ptr %18, i32 %call69
  %19 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx83, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end74.if.end84_crit_edge
  %add.ptr86 = getelementptr i8, ptr %add.ptr, i32 %add75
  %20 = trunc i32 %add75 to i16
  %conv90 = sub i16 %conv67, %20
  %conv91 = zext i16 %conv90 to i32
  %call92 = tail call i32 @strnlen(ptr noundef %add.ptr86, i32 noundef %conv91) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call92, i32 %conv91)
  %cmp94 = icmp sgt i32 %call92, %conv91
  br i1 %cmp94, label %if.end84.cleanup_crit_edge, label %do.body99

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body99:                                        ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %21 = load i32, ptr @cifsFYI, align 4
  %and100 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.cleanup_crit_edge, label %do.body103

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body103:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_ascii_ssetup.descriptor.124, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_ascii_ssetup, %land.lhs.true115)) #15
          to label %cleanup [label %land.lhs.true115], !srcloc !316

land.lhs.true115:                                 ; preds = %do.body103
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_ascii_ssetup._rs.123, ptr noundef nonnull @.str.117) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.cleanup_crit_edge, label %if.then118

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then118:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_ascii_ssetup.descriptor.124, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str, i32 noundef %conv91) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %land.lhs.true115.cleanup_crit_edge, %do.body103, %do.body99.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sess_establish_session(ptr nocapture noundef readonly %sess_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #15
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %session_estab, align 8, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then:                                          ; preds = %entry
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sign, align 2, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then.if.end16_crit_edge, label %if.then4

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then4:                                         ; preds = %if.then
  %auth_key = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21
  %response = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response, align 4
  %10 = ptrtoint ptr %auth_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %auth_key, align 8
  %call = tail call ptr @kmemdup(ptr noundef %9, i32 noundef %11, i32 noundef 3264) #15
  %response6 = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 48, i32 1
  %12 = ptrtoint ptr %response6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %response6, align 4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #15
  br label %cleanup

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %session_key = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 48
  %13 = ptrtoint ptr %auth_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auth_key, align 8
  %15 = ptrtoint ptr %session_key to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %session_key, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then.if.end16_crit_edge
  %sequence_number = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 46
  %16 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %sequence_number, align 8
  %17 = ptrtoint ptr %session_estab to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %session_estab, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %entry.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %18 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %do.body23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_establish_session.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_establish_session, %land.lhs.true)) #15
          to label %cleanup [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body23
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @sess_establish_session._rs, ptr noundef nonnull @.str.126) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %if.then30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_establish_session.descriptor, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true.cleanup_crit_edge, %do.body23, %if.end18.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ -12, %if.then10 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @small_smb_init_no_tc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_small_buf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SendReceive2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_strndup_from_utf16(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rsp_buf(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_get_spnego_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_sess_auth_rawntlmssp_assemble_req(ptr nocapture noundef %sess_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  %server2 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 2
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 4
  %iov = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iov, align 4
  %AndXCommand.i = getelementptr inbounds %struct.anon.161, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %AndXCommand.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %AndXCommand.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %7 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub.i = add i32 %7, 84
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 65535) #15
  %9 = trunc i32 %8 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #15
  %MaxBufferSize.i = getelementptr inbounds %struct.anon.161, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %MaxBufferSize.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %MaxBufferSize.i, align 1
  %maxReq.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 38
  %12 = ptrtoint ptr %maxReq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxReq.i, align 4
  %conv1.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #15
  %MaxMpxCount.i = getelementptr inbounds %struct.anon.161, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %MaxMpxCount.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %MaxMpxCount.i, align 1
  %VcNumber.i = getelementptr inbounds %struct.anon.161, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %VcNumber.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %VcNumber.i, align 1
  %sign.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 29
  %17 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sign.i, align 2, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %Flags2.i = getelementptr inbounds %struct.smb_hdr, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %Flags2.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %Flags2.i, align 1
  %21 = or i16 %20, 1024
  store i16 %21, ptr %Flags2.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %capabilities4.i = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capabilities4.i, align 8
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then6.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags28.i = getelementptr inbounds %struct.smb_hdr, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %Flags28.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %Flags28.i, align 1
  %26 = or i16 %25, 128
  store i16 %26, ptr %Flags28.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.end.i.if.end13.i_crit_edge
  %capabilities.0.i = phi i32 [ 49308, %if.then6.i ], [ 49304, %if.end.i.if.end13.i_crit_edge ]
  %27 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %capabilities4.i, align 8
  %and15.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then17.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags219.i = getelementptr inbounds %struct.smb_hdr, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %Flags219.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %Flags219.i, align 1
  %31 = or i16 %30, 64
  store i16 %31, ptr %Flags219.i, align 1
  %or23.i = or i32 %capabilities.0.i, 64
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end24.i_crit_edge
  %capabilities.1.i = phi i32 [ %or23.i, %if.then17.i ], [ %capabilities.0.i, %if.end13.i.if.end24.i_crit_edge ]
  %32 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %capabilities4.i, align 8
  %and26.i = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.cifs_ssetup_hdr.exit_crit_edge, label %if.then28.i

if.end24.i.cifs_ssetup_hdr.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_ssetup_hdr.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags230.i = getelementptr inbounds %struct.smb_hdr, ptr %5, i32 0, i32 5
  %34 = ptrtoint ptr %Flags230.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %Flags230.i, align 1
  %36 = or i16 %35, 16
  store i16 %36, ptr %Flags230.i, align 1
  %or34.i = or i32 %capabilities.1.i, 4096
  br label %cifs_ssetup_hdr.exit

cifs_ssetup_hdr.exit:                             ; preds = %if.then28.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge
  %capabilities.2.i = phi i32 [ %or34.i, %if.then28.i ], [ %capabilities.1.i, %if.end24.i.cifs_ssetup_hdr.exit_crit_edge ]
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %5, i32 0, i32 5
  %37 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %Flags2, align 1
  %39 = and i16 %38, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp = icmp eq i16 %39, 0
  br i1 %cmp, label %do.body4, label %if.end13

do.body4:                                         ; preds = %cifs_ssetup_hdr.exit
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @_sess_auth_rawntlmssp_assemble_req._rs, ptr noundef nonnull @__func__._sess_auth_rawntlmssp_assemble_req) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body4.cleanup_crit_edge, label %do.end

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #20
  br label %cleanup

if.end13:                                         ; preds = %cifs_ssetup_hdr.exit
  %40 = ptrtoint ptr %capabilities4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capabilities4.i, align 8
  %and37.i = and i32 %41, 8388608
  %or = or i16 %38, 8
  %42 = ptrtoint ptr %Flags2 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %or, ptr %Flags2, align 1
  %43 = or i32 %capabilities.2.i, %and37.i
  %or18 = or i32 %43, -2147483648
  %44 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %Capabilities = getelementptr inbounds %struct.anon.161, ptr %5, i32 0, i32 10
  %45 = ptrtoint ptr %Capabilities to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %Capabilities, align 1
  %or19 = or i32 %44, %46
  store i32 %or19, ptr %Capabilities, align 1
  %arrayidx21 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx21, align 4
  %iov_len = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 0, i32 1
  %49 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iov_len, align 4
  %iov_len27 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1, i32 1
  %51 = ptrtoint ptr %iov_len27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iov_len27, align 4
  %add = add i32 %52, %50
  %rem = and i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool28.not = icmp eq i32 %rem, 0
  br i1 %tobool28.not, label %if.end13.if.end30_crit_edge, label %if.then29

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %48, align 1
  %incdec.ptr = getelementptr i8, ptr %48, i32 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end13.if.end30_crit_edge
  %bcc_ptr.0 = phi ptr [ %48, %if.end13.if.end30_crit_edge ], [ %incdec.ptr, %if.then29 ]
  %nls_cp = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %54 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nls_cp, align 4
  %call.i = tail call i32 @cifs_strtoUTF16(ptr noundef %bcc_ptr.0, ptr noundef nonnull @.str.103, i32 noundef 32, ptr noundef %55) #15
  %mul.i = shl i32 %call.i, 1
  %add.ptr.i = getelementptr i8, ptr %bcc_ptr.0, i32 %mul.i
  %call2.i = tail call i32 @cifs_strtoUTF16(ptr noundef %add.ptr.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef 32, ptr noundef %55) #15
  %mul3.i = shl i32 %call2.i, 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 2
  %call6.i = tail call i32 @cifs_strtoUTF16(ptr noundef %add.ptr5.i, ptr noundef nonnull @.str.104, i32 noundef 32, ptr noundef %55) #15
  %mul7.i = shl i32 %call6.i, 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul7.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 2
  %56 = ptrtoint ptr %add.ptr9.i to i32
  %57 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx21, align 4
  %59 = ptrtoint ptr %58 to i32
  %sub = sub i32 %56, %59
  %iov_len36 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2, i32 1
  %60 = ptrtoint ptr %iov_len36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %iov_len36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %do.body4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -38, %do.end ], [ -38, %do.body4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sess_auth_rawntlmssp_authenticate(ptr noundef %sess_data) #2 align 64 {
entry:
  %rsp_iov.i = alloca %struct.kvec, align 8
  %smb_buf.i = alloca ptr, align 4
  %bcc_ptr = alloca ptr, align 4
  %ntlmsspblob = alloca ptr, align 4
  %blob_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ses1 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 1
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcc_ptr) #15
  %2 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bcc_ptr, align 4, !annotation !324
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ntlmsspblob) #15
  %3 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ntlmsspblob, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %blob_len) #15
  %4 = ptrtoint ptr %blob_len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %blob_len, align 2, !annotation !324
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_authenticate.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_authenticate, %land.lhs.true)) #15
          to label %do.end15 [label %land.lhs.true], !srcloc !316

land.lhs.true:                                    ; preds = %do.body4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate._rs, ptr noundef nonnull @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %if.then10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate.descriptor, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %land.lhs.true.do.end15_crit_edge, %do.body4, %entry.do.end15_crit_edge
  %6 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ses1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %8 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %smb_buf.i, align 4, !annotation !324
  %call.i = call i32 @small_smb_init_no_tc(i32 noundef 115, i32 noundef 12, ptr noundef %7, ptr noundef nonnull %smb_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end15.sess_alloc_buffer.exit.thread_crit_edge

do.end15.sess_alloc_buffer.exit.thread_crit_edge: ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sess_alloc_buffer.exit.thread

if.end.i:                                         ; preds = %do.end15
  %9 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smb_buf.i, align 4
  %iov.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %11 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %iov.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %10, align 1
  %add.i = add i32 %13, 4
  %iov_len.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %iov_len.i, align 4
  %buf0_type.i = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %15 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %buf0_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2000) #22
  %arrayidx6.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %arrayidx6.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end19

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %smb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smb_buf.i, align 4
  call void @cifs_small_buf_release(ptr noundef %19) #15
  %20 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %iov.i, align 4
  %21 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %iov_len.i, align 4
  %22 = ptrtoint ptr %buf0_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf0_type.i, align 4
  br label %sess_alloc_buffer.exit.thread

sess_alloc_buffer.exit.thread:                    ; preds = %if.then12.i, %do.end15.sess_alloc_buffer.exit.thread_crit_edge
  %retval.0.i250.ph = phi i32 [ %call.i, %do.end15.sess_alloc_buffer.exit.thread_crit_edge ], [ -12, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  br label %out

if.end19:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smb_buf.i) #15
  %23 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iov.i, align 4
  %nls_cp = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 3
  %25 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nls_cp, align 4
  %call20 = call i32 @build_ntlmssp_auth_blob(ptr noundef nonnull %ntlmsspblob, ptr noundef nonnull %blob_len, ptr noundef %1, ptr undef, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_free_ntlmsspblob_crit_edge

if.end19.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end23:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %blob_len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %blob_len, align 2
  %conv = zext i16 %28 to i32
  %arrayidx25 = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1
  %iov_len = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 1, i32 1
  %29 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %iov_len, align 4
  %30 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ntlmsspblob, align 4
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx25, align 4
  %33 = call i16 @llvm.bswap.i16(i16 %28)
  %SecurityBlobLength = getelementptr inbounds %struct.anon.161, ptr %24, i32 0, i32 8
  %34 = ptrtoint ptr %SecurityBlobLength to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %SecurityBlobLength, align 1
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %Suid, align 8
  %conv29 = trunc i64 %36 to i16
  %Uid = getelementptr inbounds %struct.smb_hdr, ptr %24, i32 0, i32 11
  %37 = ptrtoint ptr %Uid to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv29, ptr %Uid, align 1
  %call30 = call fastcc i32 @_sess_auth_rawntlmssp_assemble_req(ptr noundef %sess_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end23.out_free_ntlmsspblob_crit_edge

if.end23.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end33:                                         ; preds = %if.end23
  %38 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  %40 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %rsp_iov.i, align 8
  %41 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iov_len, align 4
  %iov_len5.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2, i32 1
  %43 = ptrtoint ptr %iov_len5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iov_len5.i, align 4
  %add.i253 = add i32 %44, %42
  %conv.i = trunc i32 %add.i253 to i16
  %conv6.i = and i32 %add.i253, 65535
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %39, align 4
  %add.i.i = add i32 %conv6.i, %46
  store i32 %add.i.i, ptr %39, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 37
  %WordCount.i.i.i = getelementptr inbounds %struct.smb_hdr, ptr %39, i32 0, i32 13
  %47 = ptrtoint ptr %WordCount.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %WordCount.i.i.i, align 1
  %conv.i.i.i = zext i8 %48 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %49 = call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %50 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %add.ptr1.i.i.i, align 1
  %51 = ptrtoint ptr %sess_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sess_data, align 4
  %53 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ses1, align 4
  %call.i255 = call i32 @SendReceive2(i32 noundef %52, ptr noundef %54, ptr noundef %iov.i, i32 noundef 3, ptr noundef %buf0_type.i, i32 noundef 16, ptr noundef nonnull %rsp_iov.i) #15
  %55 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iov.i, align 4
  call void @cifs_small_buf_release(ptr noundef %56) #15
  %57 = ptrtoint ptr %rsp_iov.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rsp_iov.i, align 8
  %59 = ptrtoint ptr %iov.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %iov.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_iov.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool35.not = icmp eq i32 %call.i255, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.out_free_ntlmsspblob_crit_edge

if.end33.out_free_ntlmsspblob_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.end37:                                         ; preds = %if.end33
  %60 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iov.i, align 4
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %63)
  %cmp.not = icmp eq i8 %63, 4
  br i1 %cmp.not, label %if.end64, label %if.then46

if.then46:                                        ; preds = %if.end37
  %call49 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate._rs.157, ptr noundef nonnull @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then46.out_free_ntlmsspblob_crit_edge, label %do.end54

if.then46.out_free_ntlmsspblob_crit_edge:         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %WordCount, align 1
  %conv57 = zext i8 %65 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv57) #20
  br label %out_free_ntlmsspblob

if.end64:                                         ; preds = %if.end37
  %Action = getelementptr inbounds %struct.anon.163, ptr %61, i32 0, i32 4
  %66 = ptrtoint ptr %Action to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %Action, align 1
  %68 = and i16 %67, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool67.not = icmp eq i16 %68, 0
  br i1 %tobool67.not, label %if.end64.if.end99_crit_edge, label %do.body70

if.end64.if.end99_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

do.body70:                                        ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %69 = load i32, ptr @cifsFYI, align 4
  %and71 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.if.end99_crit_edge, label %do.body74

do.body70.if.end99_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

do.body74:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_authenticate.descriptor.159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_authenticate, %land.lhs.true86)) #15
          to label %if.end99 [label %land.lhs.true86], !srcloc !316

land.lhs.true86:                                  ; preds = %do.body74
  %call87 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate._rs.158, ptr noundef nonnull @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.end99_crit_edge, label %if.then89

land.lhs.true86.if.end99_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

if.then89:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate.descriptor.159, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str) #15
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %land.lhs.true86.if.end99_crit_edge, %do.body74, %do.body70.if.end99_crit_edge, %if.end64.if.end99_crit_edge
  %70 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %Suid, align 8
  %Uid101 = getelementptr inbounds %struct.smb_hdr, ptr %61, i32 0, i32 11
  %72 = ptrtoint ptr %Uid101 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %Uid101, align 1
  %conv102 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %conv102)
  %cmp103.not = icmp eq i64 %71, %conv102
  br i1 %cmp103.not, label %if.end99.if.end140_crit_edge, label %if.then105

if.end99.if.end140_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then105:                                       ; preds = %if.end99
  %74 = ptrtoint ptr %Suid to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv102, ptr %Suid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %75 = load i32, ptr @cifsFYI, align 4
  %and111 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then105.if.end140_crit_edge, label %do.body114

if.then105.if.end140_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

do.body114:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sess_auth_rawntlmssp_authenticate.descriptor.161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sess_auth_rawntlmssp_authenticate, %land.lhs.true126)) #15
          to label %if.end140 [label %land.lhs.true126], !srcloc !316

land.lhs.true126:                                 ; preds = %do.body114
  %call127 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate._rs.160, ptr noundef nonnull @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %land.lhs.true126.if.end140_crit_edge, label %if.then129

land.lhs.true126.if.end140_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then129:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %Suid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate.descriptor.161, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str, i64 noundef %77) #15
  br label %if.end140

if.end140:                                        ; preds = %if.then129, %land.lhs.true126.if.end140_crit_edge, %do.body114, %if.then105.if.end140_crit_edge, %if.end99.if.end140_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 37
  %78 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %WordCount, align 1
  %conv.i.i = zext i8 %79 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %80 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %add.ptr1.i.i, align 1
  %82 = call i16 @llvm.bswap.i16(i16 %81) #15
  %SecurityBlobLength143 = getelementptr inbounds %struct.anon.163, ptr %61, i32 0, i32 5
  %83 = ptrtoint ptr %SecurityBlobLength143 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %SecurityBlobLength143, align 1
  %85 = call i16 @llvm.bswap.i16(i16 %84)
  %86 = ptrtoint ptr %blob_len to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %blob_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %85)
  %cmp146 = icmp ult i16 %82, %85
  br i1 %cmp146, label %do.body150, label %if.end165

do.body150:                                       ; preds = %if.end140
  %call151 = call i32 @___ratelimit(ptr noundef nonnull @sess_auth_rawntlmssp_authenticate._rs.163, ptr noundef nonnull @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.body150.out_free_ntlmsspblob_crit_edge, label %do.end156

do.body150.out_free_ntlmsspblob_crit_edge:        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #17
  %conv158 = zext i16 %85 to i32
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv158) #20
  br label %out_free_ntlmsspblob

if.end165:                                        ; preds = %if.end140
  %add.ptr = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %conv144 = zext i16 %85 to i32
  %add.ptr167 = getelementptr i8, ptr %add.ptr, i32 %conv144
  %87 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr167, ptr %bcc_ptr, align 4
  %sub = sub i16 %82, %85
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %cmp172 = icmp eq i16 %sub, 0
  br i1 %cmp172, label %if.end165.out_free_ntlmsspblob_crit_edge, label %if.else175

if.end165.out_free_ntlmsspblob_crit_edge:         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ntlmsspblob

if.else175:                                       ; preds = %if.end165
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %61, i32 0, i32 5
  %88 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %Flags2, align 1
  %90 = and i16 %89, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool178.not = icmp eq i16 %90, 0
  br i1 %tobool178.not, label %if.else186, label %if.then179

if.then179:                                       ; preds = %if.else175
  %91 = ptrtoint ptr %add.ptr167 to i32
  %92 = ptrtoint ptr %61 to i32
  %sub180 = sub i32 %91, %92
  %rem = and i32 %sub180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool181.not = icmp eq i32 %rem, 0
  br i1 %tobool181.not, label %if.then179.if.end183_crit_edge, label %if.then182

if.then179.if.end183_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then182:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %add.ptr167, i32 1
  %93 = ptrtoint ptr %bcc_ptr to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %incdec.ptr, ptr %bcc_ptr, align 4
  %dec = add i16 %sub, -1
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.then179.if.end183_crit_edge
  %bytes_remaining.0 = phi i16 [ %dec, %if.then182 ], [ %sub, %if.then179.if.end183_crit_edge ]
  %conv184 = zext i16 %bytes_remaining.0 to i32
  %94 = ptrtoint ptr %nls_cp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nls_cp, align 4
  call fastcc void @decode_unicode_ssetup(ptr noundef nonnull %bcc_ptr, i32 noundef %conv184, ptr noundef %1, ptr noundef %95)
  br label %out_free_ntlmsspblob

if.else186:                                       ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @decode_ascii_ssetup(ptr noundef nonnull %bcc_ptr, i16 noundef zeroext %sub, ptr noundef %1)
  br label %out_free_ntlmsspblob

out_free_ntlmsspblob:                             ; preds = %if.else186, %if.end183, %if.end165.out_free_ntlmsspblob_crit_edge, %do.end156, %do.body150.out_free_ntlmsspblob_crit_edge, %do.end54, %if.then46.out_free_ntlmsspblob_crit_edge, %if.end33.out_free_ntlmsspblob_crit_edge, %if.end23.out_free_ntlmsspblob_crit_edge, %if.end19.out_free_ntlmsspblob_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end19.out_free_ntlmsspblob_crit_edge ], [ %call30, %if.end23.out_free_ntlmsspblob_crit_edge ], [ %call.i255, %if.end33.out_free_ntlmsspblob_crit_edge ], [ -5, %do.end54 ], [ -5, %if.then46.out_free_ntlmsspblob_crit_edge ], [ 0, %if.end165.out_free_ntlmsspblob_crit_edge ], [ 0, %if.end183 ], [ 0, %if.else186 ], [ -22, %do.end156 ], [ -22, %do.body150.out_free_ntlmsspblob_crit_edge ]
  %96 = ptrtoint ptr %ntlmsspblob to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ntlmsspblob, align 4
  call void @kfree(ptr noundef %97) #15
  br label %out

out:                                              ; preds = %out_free_ntlmsspblob, %sess_alloc_buffer.exit.thread
  %rc.1 = phi i32 [ %rc.0, %out_free_ntlmsspblob ], [ %retval.0.i250.ph, %sess_alloc_buffer.exit.thread ]
  %buf0_type.i257 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 6
  %98 = ptrtoint ptr %buf0_type.i257 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %buf0_type.i257, align 4
  %iov.i258 = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 7
  %100 = ptrtoint ptr %iov.i258 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iov.i258, align 4
  call void @free_rsp_buf(i32 noundef %99, ptr noundef %101) #15
  %102 = ptrtoint ptr %buf0_type.i257 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %buf0_type.i257, align 4
  %arrayidx3.i = getelementptr %struct.sess_data, ptr %sess_data, i32 0, i32 7, i32 2
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx3.i, align 4
  call void @kfree(ptr noundef %104) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool190.not = icmp eq i32 %rc.1, 0
  br i1 %tobool190.not, label %if.then191, label %out.if.end193_crit_edge

out.if.end193_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end193

if.then191:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call192 = call fastcc i32 @sess_establish_session(ptr noundef %sess_data)
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %out.if.end193_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out.if.end193_crit_edge ], [ %call192, %if.then191 ]
  %response = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 21, i32 1
  %105 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %response, align 4
  call void @kfree(ptr noundef %106) #15
  %107 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %response, align 4
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 22
  %108 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ntlmssp, align 8
  call void @kfree(ptr noundef %109) #15
  %110 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %ntlmssp, align 8
  %func = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 4
  %111 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %func, align 4
  %result = getelementptr inbounds %struct.sess_data, ptr %sess_data, i32 0, i32 5
  %112 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %rc.2, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %blob_len) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ntlmsspblob) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcc_ptr) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !282, !283, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !300, !301, !302, !304, !305}
!llvm.named.register.sp = !{!306}
!llvm.module.flags = !{!307, !308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/sess.c", i32 84, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/cifs/sess.c", i32 95, i32 2}
!4 = !{ptr @cifs_chan_set_need_reconnect._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cifs_chan_set_need_reconnect.descriptor, !3, !"descriptor", i1 false, i1 false}
!9 = !{ptr @cifs_chan_clear_need_reconnect._rs, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../fs/cifs/sess.c", i32 106, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cifs_chan_clear_need_reconnect.descriptor, !10, !"descriptor", i1 false, i1 false}
!14 = !{ptr @cifs_try_adding_channels._rs, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../fs/cifs/sess.c", i32 137, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cifs_try_adding_channels.descriptor, !15, !"descriptor", i1 false, i1 false}
!19 = !{ptr @cifs_try_adding_channels._rs.9, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../fs/cifs/sess.c", i32 145, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cifs_try_adding_channels._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cifs_try_adding_channels._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cifs_try_adding_channels._rs.11, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../fs/cifs/sess.c", i32 152, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cifs_try_adding_channels._entry.12, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cifs_try_adding_channels._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cifs_try_adding_channels._rs.15, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/sess.c", i32 166, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cifs_try_adding_channels._entry.16, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cifs_try_adding_channels._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @cifs_try_adding_channels._rs.19, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/sess.c", i32 187, i32 4}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_try_adding_channels.descriptor.20, !35, !"descriptor", i1 false, i1 false}
!38 = !{ptr @cifs_try_adding_channels._rs.22, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/sess.c", i32 200, i32 4}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_try_adding_channels.descriptor.23, !39, !"descriptor", i1 false, i1 false}
!42 = !{ptr @cifs_try_adding_channels._rs.25, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/sess.c", i32 206, i32 3}
!44 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cifs_try_adding_channels.descriptor.26, !43, !"descriptor", i1 false, i1 false}
!46 = !{ptr @decode_ntlmssp_challenge._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/sess.c", i32 636, i32 3}
!48 = !{ptr @__func__.decode_ntlmssp_challenge, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @decode_ntlmssp_challenge._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @decode_ntlmssp_challenge._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cifs/sess.c", i32 640, i32 31}
!54 = !{ptr @decode_ntlmssp_challenge._rs.30, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../fs/cifs/sess.c", i32 641, i32 3}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @decode_ntlmssp_challenge._entry.31, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @decode_ntlmssp_challenge._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @decode_ntlmssp_challenge._rs.34, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../fs/cifs/sess.c", i32 646, i32 3}
!61 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @decode_ntlmssp_challenge._entry.35, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @decode_ntlmssp_challenge._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @decode_ntlmssp_challenge._rs.38, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../fs/cifs/sess.c", i32 652, i32 2}
!66 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @decode_ntlmssp_challenge.descriptor, !65, !"descriptor", i1 false, i1 false}
!68 = !{ptr @decode_ntlmssp_challenge._rs.40, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/cifs/sess.c", i32 657, i32 3}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @decode_ntlmssp_challenge._entry.41, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @decode_ntlmssp_challenge._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @decode_ntlmssp_challenge._rs.44, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/cifs/sess.c", i32 662, i32 3}
!75 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @decode_ntlmssp_challenge._entry.45, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @decode_ntlmssp_challenge._entry_ptr.47, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @decode_ntlmssp_challenge._rs.48, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../fs/cifs/sess.c", i32 666, i32 3}
!80 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @decode_ntlmssp_challenge._entry.49, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @decode_ntlmssp_challenge._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/cifs/sess.c", i32 672, i32 3}
!85 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @decode_ntlmssp_challenge._entry.52, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @decode_ntlmssp_challenge._entry_ptr.54, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @decode_ntlmssp_challenge._rs.55, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../fs/cifs/sess.c", i32 685, i32 3}
!90 = !{ptr @.str.57, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @decode_ntlmssp_challenge._entry.56, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @decode_ntlmssp_challenge._entry_ptr.58, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @decode_ntlmssp_challenge._rs.59, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../fs/cifs/sess.c", i32 693, i32 4}
!95 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @decode_ntlmssp_challenge._entry.60, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @decode_ntlmssp_challenge._entry_ptr.62, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @build_ntlmssp_negotiate_blob._rs, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../fs/cifs/sess.c", i32 778, i32 3}
!100 = !{ptr @__func__.build_ntlmssp_negotiate_blob, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @build_ntlmssp_negotiate_blob._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @build_ntlmssp_negotiate_blob._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @build_ntlmssp_smb3_negotiate_blob._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../fs/cifs/sess.c", i32 840, i32 3}
!106 = !{ptr @__func__.build_ntlmssp_smb3_negotiate_blob, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @build_ntlmssp_smb3_negotiate_blob._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @build_ntlmssp_smb3_negotiate_blob._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @build_ntlmssp_auth_blob._rs, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../fs/cifs/sess.c", i32 901, i32 3}
!111 = !{ptr @__func__.build_ntlmssp_auth_blob, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @build_ntlmssp_auth_blob._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @build_ntlmssp_auth_blob._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @build_ntlmssp_auth_blob._rs.65, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../fs/cifs/sess.c", i32 910, i32 3}
!117 = !{ptr @build_ntlmssp_auth_blob._entry.66, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @build_ntlmssp_auth_blob._entry_ptr.67, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/cifs/sess.c", i32 1691, i32 3}
!121 = !{ptr @__func__.CIFS_SessSetup, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cifs_ses_add_channel.unc_fmt, !123, !"unc_fmt", i1 false, i1 false}
!123 = !{!"../fs/cifs/sess.c", i32 243, i32 20}
!124 = !{ptr @cifs_ses_add_channel._rs, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/sess.c", i32 248, i32 21}
!126 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cifs_ses_add_channel.descriptor, !125, !"descriptor", i1 false, i1 false}
!129 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!130 = !{ptr @cifs_ses_add_channel._rs.71, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../fs/cifs/sess.c", i32 251, i32 3}
!132 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cifs_ses_add_channel.descriptor.72, !131, !"descriptor", i1 false, i1 false}
!134 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cifs_ses_add_channel._rs.76, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../fs/cifs/sess.c", i32 255, i32 3}
!138 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cifs_ses_add_channel.descriptor.77, !137, !"descriptor", i1 false, i1 false}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/cifs/sess.c", i32 287, i32 16}
!142 = !{ptr @cifs_ses_add_channel._rs.80, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../fs/cifs/sess.c", i32 341, i32 3}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cifs_ses_add_channel._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @cifs_ses_add_channel._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!149 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @select_sec._rs, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/sess.c", i32 1654, i32 2}
!157 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @select_sec.descriptor, !156, !"descriptor", i1 false, i1 false}
!160 = !{ptr @select_sec._rs.87, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../fs/cifs/sess.c", i32 1656, i32 3}
!162 = !{ptr @.str.88, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @select_sec._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @select_sec._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @select_sec._rs.89, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/sess.c", i32 1676, i32 3}
!167 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @select_sec._entry.90, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @select_sec._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @sess_auth_ntlmv2._rs, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../fs/cifs/sess.c", i32 1171, i32 4}
!172 = !{ptr @__func__.sess_auth_ntlmv2, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sess_auth_ntlmv2._entry, !171, !"_entry", i1 false, i1 false}
!175 = !{ptr @sess_auth_ntlmv2._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @sess_auth_ntlmv2._rs.94, !177, !"_rs", i1 false, i1 false}
!177 = !{!"../fs/cifs/sess.c", i32 1211, i32 3}
!178 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @sess_auth_ntlmv2._entry.95, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @sess_auth_ntlmv2._entry_ptr.97, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @sess_auth_ntlmv2._rs.98, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../fs/cifs/sess.c", i32 1216, i32 3}
!183 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @sess_auth_ntlmv2.descriptor, !182, !"descriptor", i1 false, i1 false}
!185 = !{ptr @sess_auth_ntlmv2._rs.100, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../fs/cifs/sess.c", i32 1219, i32 2}
!187 = !{ptr @.str.102, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @sess_auth_ntlmv2.descriptor.101, !186, !"descriptor", i1 false, i1 false}
!189 = !{ptr @.str.103, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/cifs/sess.c", i32 426, i32 49}
!191 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/cifs/sess.c", i32 434, i32 50}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../fs/cifs/sess.c", i32 508, i32 7}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../fs/cifs/sess.c", i32 519, i32 7}
!197 = !{ptr @decode_unicode_ssetup._rs, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../fs/cifs/sess.c", i32 547, i32 2}
!199 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.107, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @decode_unicode_ssetup.descriptor, !198, !"descriptor", i1 false, i1 false}
!202 = !{ptr @decode_unicode_ssetup._rs.108, !203, !"_rs", i1 false, i1 false}
!203 = !{!"../fs/cifs/sess.c", i32 551, i32 2}
!204 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @decode_unicode_ssetup.descriptor.109, !203, !"descriptor", i1 false, i1 false}
!206 = !{ptr @decode_unicode_ssetup._rs.111, !207, !"_rs", i1 false, i1 false}
!207 = !{!"../fs/cifs/sess.c", i32 560, i32 2}
!208 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @decode_unicode_ssetup.descriptor.112, !207, !"descriptor", i1 false, i1 false}
!210 = !{ptr @decode_unicode_ssetup._rs.114, !211, !"_rs", i1 false, i1 false}
!211 = !{!"../fs/cifs/sess.c", i32 569, i32 2}
!212 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @decode_unicode_ssetup.descriptor.115, !211, !"descriptor", i1 false, i1 false}
!214 = !{ptr @decode_ascii_ssetup._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../fs/cifs/sess.c", i32 581, i32 2}
!216 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.118, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @decode_ascii_ssetup.descriptor, !215, !"descriptor", i1 false, i1 false}
!219 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/cifs/sess.c", i32 593, i32 30}
!221 = !{ptr @decode_ascii_ssetup._rs.120, !222, !"_rs", i1 false, i1 false}
!222 = !{!"../fs/cifs/sess.c", i32 594, i32 4}
!223 = !{ptr @.str.122, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @decode_ascii_ssetup.descriptor.121, !222, !"descriptor", i1 false, i1 false}
!225 = !{ptr @decode_ascii_ssetup._rs.123, !226, !"_rs", i1 false, i1 false}
!226 = !{!"../fs/cifs/sess.c", i32 624, i32 2}
!227 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @decode_ascii_ssetup.descriptor.124, !226, !"descriptor", i1 false, i1 false}
!229 = !{ptr @sess_establish_session._rs, !230, !"_rs", i1 false, i1 false}
!230 = !{!"../fs/cifs/sess.c", i32 1114, i32 2}
!231 = !{ptr @.str.126, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @sess_establish_session.descriptor, !230, !"descriptor", i1 false, i1 false}
!234 = !{ptr @sess_auth_kerberos._rs, !235, !"_rs", i1 false, i1 false}
!235 = !{!"../fs/cifs/sess.c", i32 1288, i32 3}
!236 = !{ptr @__func__.sess_auth_kerberos, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.128, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @sess_auth_kerberos._entry, !235, !"_entry", i1 false, i1 false}
!239 = !{ptr @sess_auth_kerberos._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @sess_auth_kerberos._rs.129, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../fs/cifs/sess.c", i32 1297, i32 3}
!242 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @sess_auth_kerberos._entry.130, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @sess_auth_kerberos._entry_ptr.132, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @sess_auth_kerberos._rs.133, !246, !"_rs", i1 false, i1 false}
!246 = !{!"../fs/cifs/sess.c", i32 1337, i32 3}
!247 = !{ptr @sess_auth_kerberos._entry.134, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @sess_auth_kerberos._entry_ptr.135, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @sess_auth_kerberos._rs.136, !250, !"_rs", i1 false, i1 false}
!250 = !{!"../fs/cifs/sess.c", i32 1342, i32 3}
!251 = !{ptr @sess_auth_kerberos.descriptor, !250, !"descriptor", i1 false, i1 false}
!252 = !{ptr @sess_auth_kerberos._rs.137, !253, !"_rs", i1 false, i1 false}
!253 = !{!"../fs/cifs/sess.c", i32 1345, i32 2}
!254 = !{ptr @sess_auth_kerberos.descriptor.138, !253, !"descriptor", i1 false, i1 false}
!255 = !{ptr @sess_auth_kerberos._rs.139, !256, !"_rs", i1 false, i1 false}
!256 = !{!"../fs/cifs/sess.c", i32 1352, i32 3}
!257 = !{ptr @.str.141, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @sess_auth_kerberos._entry.140, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @sess_auth_kerberos._entry_ptr.142, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @sess_auth_rawntlmssp_negotiate._rs, !261, !"_rs", i1 false, i1 false}
!261 = !{!"../fs/cifs/sess.c", i32 1445, i32 2}
!262 = !{ptr @.str.143, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.144, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @sess_auth_rawntlmssp_negotiate.descriptor, !261, !"descriptor", i1 false, i1 false}
!265 = !{ptr @sess_auth_rawntlmssp_negotiate._rs.145, !266, !"_rs", i1 false, i1 false}
!266 = !{!"../fs/cifs/sess.c", i32 1494, i32 2}
!267 = !{ptr @.str.147, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @sess_auth_rawntlmssp_negotiate.descriptor.146, !266, !"descriptor", i1 false, i1 false}
!269 = !{ptr @sess_auth_rawntlmssp_negotiate._rs.148, !270, !"_rs", i1 false, i1 false}
!270 = !{!"../fs/cifs/sess.c", i32 1498, i32 3}
!271 = !{ptr @sess_auth_rawntlmssp_negotiate._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @sess_auth_rawntlmssp_negotiate._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @sess_auth_rawntlmssp_negotiate._rs.149, !274, !"_rs", i1 false, i1 false}
!274 = !{!"../fs/cifs/sess.c", i32 1503, i32 2}
!275 = !{ptr @sess_auth_rawntlmssp_negotiate.descriptor.150, !274, !"descriptor", i1 false, i1 false}
!276 = !{ptr @sess_auth_rawntlmssp_negotiate._rs.151, !277, !"_rs", i1 false, i1 false}
!277 = !{!"../fs/cifs/sess.c", i32 1510, i32 3}
!278 = !{ptr @sess_auth_rawntlmssp_negotiate._entry.152, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @sess_auth_rawntlmssp_negotiate._entry_ptr.153, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @_sess_auth_rawntlmssp_assemble_req._rs, !281, !"_rs", i1 false, i1 false}
!281 = !{!"../fs/cifs/sess.c", i32 1407, i32 3}
!282 = !{ptr @__func__._sess_auth_rawntlmssp_assemble_req, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.154, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @_sess_auth_rawntlmssp_assemble_req._entry, !281, !"_entry", i1 false, i1 false}
!285 = !{ptr @_sess_auth_rawntlmssp_assemble_req._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @sess_auth_rawntlmssp_authenticate._rs, !287, !"_rs", i1 false, i1 false}
!287 = !{!"../fs/cifs/sess.c", i32 1551, i32 2}
!288 = !{ptr @.str.155, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.156, !287, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @sess_auth_rawntlmssp_authenticate.descriptor, !287, !"descriptor", i1 false, i1 false}
!291 = !{ptr @sess_auth_rawntlmssp_authenticate._rs.157, !292, !"_rs", i1 false, i1 false}
!292 = !{!"../fs/cifs/sess.c", i32 1588, i32 3}
!293 = !{ptr @sess_auth_rawntlmssp_authenticate._entry, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @sess_auth_rawntlmssp_authenticate._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @sess_auth_rawntlmssp_authenticate._rs.158, !296, !"_rs", i1 false, i1 false}
!296 = !{!"../fs/cifs/sess.c", i32 1593, i32 3}
!297 = !{ptr @sess_auth_rawntlmssp_authenticate.descriptor.159, !296, !"descriptor", i1 false, i1 false}
!298 = !{ptr @sess_auth_rawntlmssp_authenticate._rs.160, !299, !"_rs", i1 false, i1 false}
!299 = !{!"../fs/cifs/sess.c", i32 1597, i32 3}
!300 = !{ptr @.str.162, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @sess_auth_rawntlmssp_authenticate.descriptor.161, !299, !"descriptor", i1 false, i1 false}
!302 = !{ptr @sess_auth_rawntlmssp_authenticate._rs.163, !303, !"_rs", i1 false, i1 false}
!303 = !{!"../fs/cifs/sess.c", i32 1604, i32 3}
!304 = !{ptr @sess_auth_rawntlmssp_authenticate._entry.164, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @sess_auth_rawntlmssp_authenticate._entry_ptr.165, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{!"sp"}
!307 = !{i32 1, !"wchar_size", i32 2}
!308 = !{i32 1, !"min_enum_size", i32 4}
!309 = !{i32 8, !"branch-target-enforcement", i32 0}
!310 = !{i32 8, !"sign-return-address", i32 0}
!311 = !{i32 8, !"sign-return-address-all", i32 0}
!312 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!316 = !{i64 2148372229, i64 2148372234, i64 2148372247, i64 2148372291, i64 2148372325, i64 2148372346}
!317 = !{i8 0, i8 2}
!318 = !{!"branch_weights", i32 1, i32 2000}
!319 = !{!"branch_weights", i32 2000, i32 1}
!320 = !{i64 2158601068}
!321 = !{i64 2158601279}
!322 = !{i64 2149483730}
!323 = !{i64 2149484766}
!324 = !{!"auto-init"}
