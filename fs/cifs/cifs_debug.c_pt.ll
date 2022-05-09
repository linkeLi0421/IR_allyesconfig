; ModuleID = '/llk/IR_all_yes/fs/cifs/cifs_debug.c_pt.bc'
source_filename = "../fs/cifs/cifs_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.12 }
%union.anon.12 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.22, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.187, i8, i16, i16, %union.anon.189, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.187 = type { i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, i32 }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.146 }
%union.anon.146 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.smbd_connection = type { i32, ptr, %struct.ib_qp_init_attr, ptr, ptr, ptr, %struct.ib_device_attr, i32, %struct.completion, %struct.wait_queue_head, %struct.wait_queue_head, %struct.completion, i8, %struct.work_struct, %struct.work_struct, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i32, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i8, %struct.wait_queue_head, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.168 }
%struct.anon.168 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.cifs_server_iface = type { i32, i8, %struct.__kernel_sockaddr_storage }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.148, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.148 = type { %struct.anon.150 }
%struct.anon.150 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cifs_dump_mem.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_dump_mem\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/cifs/cifs_debug.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: dump of %d bytes of data at 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: dump of %d bytes of data at 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cifs_dump_detail._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cifs_dump_detail = private unnamed_addr constant [17 x i8] c"cifs_dump_detail\00", align 1
@cifs_dump_detail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.cifs_dump_detail, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013CIFS: VFS: Cmd: %d Err: 0x%x Flags: 0x%x Flgs2: 0x%x Mid: %d Pid: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cifs_dump_detail._entry_ptr = internal global ptr @cifs_dump_detail._entry, section ".printk_index", align 4
@cifs_dump_detail._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dump_detail._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.cifs_dump_detail, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CIFS: VFS: smb buf %p len %u\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_dump_detail._entry_ptr.12 = internal global ptr @cifs_dump_detail._entry.10, section ".printk_index", align 4
@cifs_dump_mids._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_dump_mids = private unnamed_addr constant [15 x i8] c"cifs_dump_mids\00", align 1
@cifs_dump_mids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.cifs_dump_mids, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CIFS: VFS: Dump pending requests:\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry_ptr = internal global ptr @cifs_dump_mids._entry, section ".printk_index", align 4
@GlobalMid_Lock = external dso_local global %struct.spinlock, align 4
@cifs_dump_mids._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.cifs_dump_mids, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: State: %d Cmd: %d Pid: %d Cbdata: %p Mid %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry_ptr.17 = internal global ptr @cifs_dump_mids._entry.15, section ".printk_index", align 4
@cifs_dump_mids._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.cifs_dump_mids, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013CIFS: VFS: IsLarge: %d buf: %p time rcv: %ld now: %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry_ptr.21 = internal global ptr @cifs_dump_mids._entry.19, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cifs_dump_mids._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.cifs_dump_mids, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CIFS: VFS: IsMult: %d IsEnd: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_dump_mids._entry_ptr.25 = internal global ptr @cifs_dump_mids._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"existing buf: \00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs/cifs\00", [24 x i8] zeroinitializer }, align 32
@proc_fs_cifs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DebugData\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open_files\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Stats\00", [26 x i8] zeroinitializer }, align 32
@cifs_stats_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifs_stats_proc_open, ptr @seq_read, ptr null, ptr @cifs_stats_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cifsFYI\00", [24 x i8] zeroinitializer }, align 32
@cifsFYI_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifsFYI_proc_open, ptr @seq_read, ptr null, ptr @cifsFYI_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"traceSMB\00", [23 x i8] zeroinitializer }, align 32
@traceSMB_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @traceSMB_proc_open, ptr @seq_read, ptr null, ptr @traceSMB_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LinuxExtensionsEnabled\00", [41 x i8] zeroinitializer }, align 32
@cifs_linux_ext_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifs_linux_ext_proc_open, ptr @seq_read, ptr null, ptr @cifs_linux_ext_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SecurityFlags\00", [18 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifs_security_flags_proc_open, ptr @seq_read, ptr null, ptr @cifs_security_flags_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LookupCacheEnabled\00", [45 x i8] zeroinitializer }, align 32
@cifs_lookup_cache_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifs_lookup_cache_proc_open, ptr @seq_read, ptr null, ptr @cifs_lookup_cache_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_params\00", [19 x i8] zeroinitializer }, align 32
@cifs_mount_params_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @cifs_mount_params_proc_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dfscache\00", [23 x i8] zeroinitializer }, align 32
@dfscache_proc_ops = external dso_local constant %struct.proc_ops, align 4
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rdma_readwrite_threshold\00", [39 x i8] zeroinitializer }, align 32
@cifs_rdma_readwrite_threshold_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @rdma_readwrite_threshold_open, ptr @seq_read, ptr null, ptr @rdma_readwrite_threshold_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smbd_max_frmr_depth\00", [44 x i8] zeroinitializer }, align 32
@cifs_smbd_max_frmr_depth_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_max_frmr_depth_open, ptr @seq_read, ptr null, ptr @smbd_max_frmr_depth_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smbd_keep_alive_interval\00", [39 x i8] zeroinitializer }, align 32
@cifs_smbd_keep_alive_interval_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_keep_alive_interval_open, ptr @seq_read, ptr null, ptr @smbd_keep_alive_interval_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smbd_max_receive_size\00", [42 x i8] zeroinitializer }, align 32
@cifs_smbd_max_receive_size_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_max_receive_size_open, ptr @seq_read, ptr null, ptr @smbd_max_receive_size_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smbd_max_fragmented_recv_size\00", [34 x i8] zeroinitializer }, align 32
@cifs_smbd_max_fragmented_recv_size_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_max_fragmented_recv_size_open, ptr @seq_read, ptr null, ptr @smbd_max_fragmented_recv_size_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smbd_max_send_size\00", [45 x i8] zeroinitializer }, align 32
@cifs_smbd_max_send_size_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_max_send_size_open, ptr @seq_read, ptr null, ptr @smbd_max_send_size_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smbd_send_credit_target\00", [40 x i8] zeroinitializer }, align 32
@cifs_smbd_send_credit_target_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_send_credit_target_open, ptr @seq_read, ptr null, ptr @smbd_send_credit_target_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smbd_receive_credit_max\00", [40 x i8] zeroinitializer }, align 32
@cifs_smbd_receive_credit_max_proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @smbd_receive_credit_max_open, ptr @seq_read, ptr null, ptr @smbd_receive_credit_max_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Display Internal CIFS Data Structures for Debugging\0A---------------------------------------------------\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIFS Version %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.35\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Features:\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DFS\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",FSCACHE\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",SMB_DIRECT\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",STATS2\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",DEBUG2\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",ALLOW_INSECURE_LEGACY\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",CIFS_POSIX\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",UPCALL(SPNEGO)\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",XATTR\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",ACL\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",WITNESS\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CIFSMaxBufSize: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Active VFS Requests: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@GlobalTotalActiveXid = external dso_local local_unnamed_addr global i32, align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0AServers: \00", [21 x i8] zeroinitializer }, align 32
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@cifs_tcp_ses_list = external dso_local global %struct.list_head, align 4
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A%d) ConnectionId: 0x%llx \00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hostname: %s \00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0ASMBDirect transport not available\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\0ASMBDirect (in hex) protocol version: %x transport status: %x\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0AConn receive_credit_max: %x send_credit_target: %x max_send_size: %x\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\0AConn max_fragmented_recv_size: %x max_fragmented_send_size: %x max_receive_size:%x\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\0AConn keep_alive_interval: %x max_readwrite_size: %x rdma_readwrite_threshold: %x\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\0ADebug count_get_receive_buffer: %x count_put_receive_buffer: %x count_send_empty: %x\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [198 x i8], [58 x i8] } { [198 x i8] c"\0ARead Queue count_reassembly_queue: %x count_enqueue_reassembly_queue: %x count_dequeue_reassembly_queue: %x fragment_reassembly_remaining: %x reassembly_data_length: %x reassembly_queue_length: %x\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\0ACurrent Credits send_credits: %x receive_credits: %x receive_credit_target: %x\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0APending send_pending: %x \00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0AReceive buffers count_receive_queue: %x count_empty_packet_queue: %x\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\0AMR responder_resources: %x max_frmr_depth: %x mr_type: %x\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0AMR mr_ready_count: %x mr_used_count: %x\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0ANumber of credits: %d Dialect 0x%x\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" COMPRESS_LZNT1\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" COMPRESS_LZ77\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" COMPRESS_LZ77_HUFF\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" signed\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" posix\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" nosharesock\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0ARDMA \00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\0ATCP status: %d Instance: %d\0ALocal Users To Server: %d SecMode: 0x%x Req On Wire: %d\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AIn Send: %d In MaxReq Wait: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\0A\09Sessions: \00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0A\09%d) Address: %s Uses: %d Capability: 0x%x\09Session Status: %d \00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Guest \00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Anonymous \00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\0A\09%d) Name: %s  Domain: %s Uses: %d OS: %s \0A\09NOS: %s\09Capability: 0x%x\0A\09SMB session status: %d \00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A\09Security type: %s \00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" SessionId: 0x%llx\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" encrypted\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0A\09User: %d Cred User: %d\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\09Primary channel: DISCONNECTED \00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0A\0A\09Extra Channels: %zu \00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09DISCONNECTED \00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A\0A\09Shares: \00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A\09%d) IPC: \00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A\09%d) \00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A\0A\09Server interfaces: %zu\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A\09%d)\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09\09[CONNECTED]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0A\09\09[NONE]\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0A\0A\09MIDs: \00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\0A\09State: %d com: %d pid: %d cbdata: %p mid %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A--\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A\09[NONE]\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RawNTLMSSP\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Kerberos\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTLMv2\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"\0A\0A\09\09Channel: %d ConnectionId: 0x%llx\0A\09\09Number of credits: %d Dialect 0x%x\0A\09\09TCP status: %d Instance: %d\0A\09\09Local Users To Server: %d SecMode: 0x%x Req On Wire: %d\0A\09\09In Send: %d In MaxReq Wait: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s Mounts: %d \00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Type: %s \00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"DevInfo: 0x%x Attributes: 0x%x\0A\09PathComponentMax: %d Status: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" type: DISK \00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" type: CDROM \00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" type: %d \00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Serial Number: 0x%x\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Encrypted\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" nocase\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" POSIX Extensions\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Witness\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09Speed: %zu bps\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09\09Capabilities: \00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdma \00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rss \00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09\09IPv4: %pI4\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09\09IPv6: %pI6\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"# Version:1\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"# Format:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"# <tree id> <persistent fid> <flags> <count> <pid> <uid>\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" <filename> <mid>\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%x 0x%llx 0x%x %d %d %d %pd\00", [34 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %llu\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Resources in use\0ACIFS Session: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sesInfoAllocCount = external dso_local local_unnamed_addr global %struct.atomic_t, align 4
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Share (unique mount targets): %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tconInfoAllocCount = external dso_local local_unnamed_addr global %struct.atomic_t, align 4
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SMB Request/Response Buffer: %d Pool size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bufAllocCount = external dso_local local_unnamed_addr global %struct.atomic_t, align 4
@cifs_min_rcv = external dso_local local_unnamed_addr global i32, align 4
@tcpSesAllocCount = external dso_local local_unnamed_addr global %struct.atomic_t, align 4
@.str.143 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SMB Small Req/Resp Buffer: %d Pool size: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@smBufAllocCount = external dso_local local_unnamed_addr global %struct.atomic_t, align 4
@cifs_min_small = external dso_local local_unnamed_addr global i32, align 4
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Total Large %d Small %d Allocations\0A\00", [59 x i8] zeroinitializer }, align 32
@totBufAllocCount = external dso_local global %struct.atomic_t, align 4
@totSmBufAllocCount = external dso_local global %struct.atomic_t, align 4
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Operations (MIDs): %d\0A\00", [41 x i8] zeroinitializer }, align 32
@midCount = external dso_local global %struct.atomic_t, align 4
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A%d session %d share reconnects\0A\00", [63 x i8] zeroinitializer }, align 32
@tcpSesReconnectCount = external dso_local global %struct.atomic_t, align 4
@tconInfoReconnectCount = external dso_local global %struct.atomic_t, align 4
@.str.147 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Total vfs operations: %d maximum at one time: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@GlobalCurrentXid = external dso_local local_unnamed_addr global i32, align 4
@GlobalMaxActiveXid = external dso_local local_unnamed_addr global i32, align 4
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AMax requests in flight: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0ATotal time spent processing by command. Time \00", [49 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"units are jiffies (%d per second)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  SMB3 CMD\09Number\09Total Time\09Fastest\09Slowest\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  --------\09------\09----------\09-------\09-------\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  %d\09\09%d\09%llu\09\09%u\09%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  %d slow responses from %s for command %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A%d) %s\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ASMBs: %d\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@rdma_readwrite_threshold = external dso_local global i32, align 4
@smbd_max_frmr_depth = external dso_local global i32, align 4
@smbd_keep_alive_interval = external dso_local global i32, align 4
@smbd_max_receive_size = external dso_local global i32, align 4
@smbd_max_fragmented_recv_size = external dso_local global i32, align 4
@smbd_max_send_size = external dso_local global i32, align 4
@smbd_send_credit_target = external dso_local global i32, align 4
@smbd_receive_credit_max = external dso_local global i32, align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@linuxExtEnabled = external dso_local global i8, align 1
@lookupCacheEnabled = external dso_local global i8, align 1
@traceSMB = external dso_local global i8, align 1
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@global_secflags = external dso_local local_unnamed_addr global i32, align 4
@cifs_security_flags_proc_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_security_flags_proc_write = private unnamed_addr constant [31 x i8] c"cifs_security_flags_proc_write\00", align 1
@cifs_security_flags_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: Invalid SecurityFlags: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry_ptr = internal global ptr @cifs_security_flags_proc_write._entry, section ".printk_index", align 4
@cifs_security_flags_proc_write._rs.160 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry_ptr.162 = internal global ptr @cifs_security_flags_proc_write._entry.161, section ".printk_index", align 4
@cifs_security_flags_proc_write._rs.163 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, ptr @.str.164, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIFS: %s: sec flags 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._rs.165 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry_ptr.167 = internal global ptr @cifs_security_flags_proc_write._entry.166, section ".printk_index", align 4
@cifs_security_flags_proc_write._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Unsupported security flags: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._entry_ptr.171 = internal global ptr @cifs_security_flags_proc_write._entry.169, section ".printk_index", align 4
@cifs_security_flags_proc_write._rs.172 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write.descriptor.173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, ptr @.str.174, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: packet signing now required\0A\00", [57 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write._rs.175 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_security_flags_proc_write.descriptor.176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cifs_security_flags_proc_write, ptr @.str.2, ptr @.str.177, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: packet signing disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@smb3_fs_parameters = external dso_local local_unnamed_addr constant [0 x %struct.fs_parameter_spec], align 4
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"noflag\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flag\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"string\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:%s\0A\00", [25 x i8] zeroinitializer }, align 32
@switch.table.cifs_debug_data_proc_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.114, ptr @.str.112, ptr @.str.113], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 117440512]
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 31, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 32, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 32, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 41, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 44, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 57, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 60, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 67, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 73, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 77, i32 18 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 702, i32 28 }
@___asan_gen_.275 = private unnamed_addr constant [13 x i8] c"proc_fs_cifs\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 691, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 706, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 709, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 712, i32 14 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c"cifs_stats_proc_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 644, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 713, i32 14 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"cifsFYI_proc_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 811, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 714, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"traceSMB_proc_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 904, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 715, i32 14 }
@___asan_gen_.305 = private unnamed_addr constant [24 x i8] c"cifs_linux_ext_proc_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 842, i32 30 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 717, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant [29 x i8] c"cifs_security_flags_proc_ops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1007, i32 30 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 719, i32 14 }
@___asan_gen_.317 = private unnamed_addr constant [27 x i8] c"cifs_lookup_cache_proc_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 873, i32 30 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 722, i32 14 }
@___asan_gen_.323 = private unnamed_addr constant [27 x i8] c"cifs_mount_params_proc_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1050, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 725, i32 14 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 729, i32 14 }
@___asan_gen_.332 = private unnamed_addr constant [40 x i8] c"cifs_rdma_readwrite_threshold_proc_fops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 731, i32 14 }
@___asan_gen_.338 = private unnamed_addr constant [35 x i8] c"cifs_smbd_max_frmr_depth_proc_fops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 682, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 733, i32 14 }
@___asan_gen_.344 = private unnamed_addr constant [40 x i8] c"cifs_smbd_keep_alive_interval_proc_fops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 683, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 735, i32 14 }
@___asan_gen_.350 = private unnamed_addr constant [37 x i8] c"cifs_smbd_max_receive_size_proc_fops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 684, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 737, i32 14 }
@___asan_gen_.356 = private unnamed_addr constant [45 x i8] c"cifs_smbd_max_fragmented_recv_size_proc_fops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 685, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 739, i32 14 }
@___asan_gen_.362 = private unnamed_addr constant [34 x i8] c"cifs_smbd_max_send_size_proc_fops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 686, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 741, i32 14 }
@___asan_gen_.368 = private unnamed_addr constant [39 x i8] c"cifs_smbd_send_credit_target_proc_fops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 687, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 743, i32 14 }
@___asan_gen_.374 = private unnamed_addr constant [39 x i8] c"cifs_smbd_receive_credit_max_proc_fops\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 688, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 226, i32 7 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 228, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 228, i32 37 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 229, i32 16 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 231, i32 16 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 234, i32 16 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 237, i32 16 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 240, i32 16 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 245, i32 16 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 250, i32 16 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 253, i32 16 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 256, i32 16 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 259, i32 16 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 261, i32 16 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 263, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 266, i32 16 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 267, i32 16 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 269, i32 16 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 279, i32 17 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 283, i32 18 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 289, i32 18 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 293, i32 17 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 297, i32 17 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 302, i32 17 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 307, i32 17 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 312, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 317, i32 17 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 329, i32 17 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 334, i32 17 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 336, i32 17 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 340, i32 17 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 345, i32 17 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 350, i32 17 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 353, i32 18 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 355, i32 18 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 357, i32 18 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 359, i32 18 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 361, i32 18 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 363, i32 18 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 366, i32 18 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 367, i32 17 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 374, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 378, i32 17 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 387, i32 19 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 391, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 393, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 396, i32 9 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 404, i32 18 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 408, i32 18 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 410, i32 17 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 414, i32 18 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 420, i32 17 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 423, i32 19 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 428, i32 19 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 433, i32 16 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 436, i32 18 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 440, i32 17 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 446, i32 19 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 452, i32 19 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 458, i32 19 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 461, i32 18 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 466, i32 18 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 468, i32 15 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 473, i32 18 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 482, i32 17 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 485, i32 17 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1938, i32 10 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1940, i32 10 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1942, i32 10 }
@___asan_gen_.585 = private unnamed_addr constant [22 x i8] c"../fs/cifs/cifsglob.h\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1944, i32 10 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 130, i32 16 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 90, i32 16 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 92, i32 17 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 93, i32 16 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 99, i32 15 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 101, i32 15 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 103, i32 17 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 105, i32 16 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 110, i32 17 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 112, i32 17 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 114, i32 17 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 118, i32 15 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 153, i32 16 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 154, i32 14 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 156, i32 15 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 158, i32 15 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 161, i32 17 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 163, i32 17 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 174, i32 14 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 175, i32 14 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 176, i32 14 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 178, i32 16 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 193, i32 7 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 202, i32 20 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 570, i32 16 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 572, i32 16 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 574, i32 16 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 577, i32 16 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 580, i32 16 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 585, i32 16 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 587, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 591, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 597, i32 17 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 599, i32 15 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 600, i32 17 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 601, i32 15 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 602, i32 15 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 604, i32 18 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 611, i32 19 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 623, i32 19 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 626, i32 19 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 681, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 914, i32 16 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 965, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 974, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 979, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 982, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 987, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 999, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1001, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.765, i32 156, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1025, i32 12 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1027, i32 12 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1029, i32 11 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1031, i32 11 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1033, i32 11 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1035, i32 11 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1037, i32 11 }
@___asan_gen_.788 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.789 = private constant [24 x i8] c"../fs/cifs/cifs_debug.c\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1039, i32 17 }
@___asan_gen_.791 = private unnamed_addr constant [39 x i8] c"switch.table.cifs_debug_data_proc_show\00", align 1
@llvm.compiler.used = appending global [211 x ptr] [ptr @cifs_dump_detail._entry, ptr @cifs_dump_detail._entry.10, ptr @cifs_dump_detail._entry_ptr, ptr @cifs_dump_detail._entry_ptr.12, ptr @cifs_dump_mids._entry, ptr @cifs_dump_mids._entry.15, ptr @cifs_dump_mids._entry.19, ptr @cifs_dump_mids._entry.23, ptr @cifs_dump_mids._entry_ptr, ptr @cifs_dump_mids._entry_ptr.17, ptr @cifs_dump_mids._entry_ptr.21, ptr @cifs_dump_mids._entry_ptr.25, ptr @cifs_security_flags_proc_write._entry, ptr @cifs_security_flags_proc_write._entry.161, ptr @cifs_security_flags_proc_write._entry.166, ptr @cifs_security_flags_proc_write._entry.169, ptr @cifs_security_flags_proc_write._entry_ptr, ptr @cifs_security_flags_proc_write._entry_ptr.162, ptr @cifs_security_flags_proc_write._entry_ptr.167, ptr @cifs_security_flags_proc_write._entry_ptr.171, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cifs_dump_detail._rs, ptr @.str.7, ptr @.str.8, ptr @cifs_dump_detail._rs.9, ptr @.str.11, ptr @cifs_dump_mids._rs, ptr @.str.13, ptr @cifs_dump_mids._rs.14, ptr @.str.16, ptr @cifs_dump_mids._rs.18, ptr @.str.20, ptr @cifs_dump_mids._rs.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @proc_fs_cifs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @cifs_stats_proc_ops, ptr @.str.31, ptr @cifsFYI_proc_ops, ptr @.str.32, ptr @traceSMB_proc_ops, ptr @.str.33, ptr @cifs_linux_ext_proc_ops, ptr @.str.34, ptr @cifs_security_flags_proc_ops, ptr @.str.35, ptr @cifs_lookup_cache_proc_ops, ptr @.str.36, ptr @cifs_mount_params_proc_ops, ptr @.str.37, ptr @.str.38, ptr @cifs_rdma_readwrite_threshold_proc_fops, ptr @.str.39, ptr @cifs_smbd_max_frmr_depth_proc_fops, ptr @.str.40, ptr @cifs_smbd_keep_alive_interval_proc_fops, ptr @.str.41, ptr @cifs_smbd_max_receive_size_proc_fops, ptr @.str.42, ptr @cifs_smbd_max_fragmented_recv_size_proc_fops, ptr @.str.43, ptr @cifs_smbd_max_send_size_proc_fops, ptr @.str.44, ptr @cifs_smbd_send_credit_target_proc_fops, ptr @.str.45, ptr @cifs_smbd_receive_credit_max_proc_fops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @cifs_security_flags_proc_write._rs, ptr @.str.159, ptr @cifs_security_flags_proc_write._rs.160, ptr @cifs_security_flags_proc_write._rs.163, ptr @.str.164, ptr @cifs_security_flags_proc_write._rs.165, ptr @cifs_security_flags_proc_write._rs.168, ptr @.str.170, ptr @cifs_security_flags_proc_write._rs.172, ptr @.str.174, ptr @cifs_security_flags_proc_write._rs.175, ptr @.str.177, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @switch.table.cifs_debug_data_proc_show], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_detail._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_detail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_detail._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_detail._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dump_mids._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fs_cifs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_stats_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifsFYI_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceSMB_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_linux_ext_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup_cache_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mount_params_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rdma_readwrite_threshold_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_max_frmr_depth_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_keep_alive_interval_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_max_receive_size_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_max_fragmented_recv_size_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_max_send_size_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_send_credit_target_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smbd_receive_credit_max_proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.160 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.163 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.172 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_security_flags_proc_write._rs.175 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cifs_debug_data_proc_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_dump_mem(ptr noundef %label, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dump_mem.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dump_mem, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !405

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dump_mem.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.4, ptr noundef %label, i32 noundef %length, ptr noundef %data) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %data, i32 noundef %length, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_dump_detail(ptr noundef %buf, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_detail._rs, ptr noundef nonnull @__func__.cifs_dump_detail) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.end

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Command, align 1
  %conv = zext i8 %1 to i32
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %Status, align 1
  %Flags = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 4
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %Flags, align 1
  %conv3 = zext i8 %5 to i32
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 5
  %6 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %Flags2, align 1
  %conv4 = zext i16 %7 to i32
  %Mid = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 12
  %8 = ptrtoint ptr %Mid to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %Mid, align 1
  %conv5 = zext i16 %9 to i32
  %Pid = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 10
  %10 = ptrtoint ptr %Pid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %Pid, align 1
  %conv6 = zext i16 %11 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %3, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #9
  br label %do.body13

do.body13:                                        ; preds = %do.end, %entry.do.body13_crit_edge
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_detail._rs.9, ptr noundef nonnull @__func__.cifs_dump_detail) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.do.end27_crit_edge, label %do.end19

do.body13.do.end27_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %calc_smb_size = getelementptr inbounds %struct.smb_version_operations, ptr %13, i32 0, i32 66
  %14 = ptrtoint ptr %calc_smb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %calc_smb_size, align 4
  %call21 = tail call i32 %15(ptr noundef %buf, ptr noundef %server) #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %buf, i32 noundef %call21) #9
  br label %do.end27

do.end27:                                         ; preds = %do.end19, %do.body13.do.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_dump_mids(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %server, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_mids._rs, ptr noundef nonnull @__func__.cifs_dump_mids) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.do.end9_crit_edge, label %do.end

do.body1.do.end9_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body1.do.end9_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #6
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15
  %0 = ptrtoint ptr %pending_mid_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %mid_entry.097 = load ptr, ptr %pending_mid_q, align 4
  %cmp12.not98 = icmp eq ptr %mid_entry.097, %pending_mid_q
  br i1 %cmp12.not98, label %do.end9.for.end_crit_edge, label %do.end9.do.body14_crit_edge

do.end9.do.body14_crit_edge:                      ; preds = %do.end9
  br label %do.body14

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body14:                                        ; preds = %for.inc.do.body14_crit_edge, %do.end9.do.body14_crit_edge
  %mid_entry.099 = phi ptr [ %mid_entry.0, %for.inc.do.body14_crit_edge ], [ %mid_entry.097, %do.end9.do.body14_crit_edge ]
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_mids._rs.14, ptr noundef nonnull @__func__.cifs_dump_mids) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.do.body29_crit_edge, label %do.end20

do.body14.do.body29_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 18
  %1 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mid_state, align 4
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 20
  %3 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %command, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %pid = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 6
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 14
  %8 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback_data, align 4
  %mid = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 3
  %10 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mid, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %2, i32 noundef %conv, i32 noundef %7, ptr noundef %9, i64 noundef %11) #9
  br label %do.body29

do.body29:                                        ; preds = %do.end20, %do.body14.do.body29_crit_edge
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_mids._rs.18, ptr noundef nonnull @__func__.cifs_dump_mids) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.do.body45_crit_edge, label %do.end35

do.body29.do.body45_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %large_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 22
  %12 = ptrtoint ptr %large_buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %large_buf, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %13 = zext i8 %bf.load.lobit to i32
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 16
  %14 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resp_buf, align 4
  %when_received = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 10
  %16 = ptrtoint ptr %when_received to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %when_received, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %18) #9
  br label %do.body45

do.body45:                                        ; preds = %do.end35, %do.body29.do.body45_crit_edge
  %call46 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dump_mids._rs.22, ptr noundef nonnull @__func__.cifs_dump_mids) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body45.do.end67_crit_edge, label %do.end51

do.body45.do.end67_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %multiRsp = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 22
  %19 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load53 = load i8, ptr %multiRsp, align 4
  %20 = lshr i8 %bf.load53, 6
  %.lobit = and i8 %20, 1
  %21 = zext i8 %.lobit to i32
  %22 = lshr i8 %bf.load53, 5
  %.lobit96 = and i8 %22, 1
  %23 = zext i8 %.lobit96 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %21, i32 noundef %23) #9
  br label %do.end67

do.end67:                                         ; preds = %do.end51, %do.body45.do.end67_crit_edge
  %resp_buf68 = getelementptr inbounds %struct.mid_q_entry, ptr %mid_entry.099, i32 0, i32 16
  %24 = ptrtoint ptr %resp_buf68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_buf68, align 4
  %tobool69.not = icmp eq ptr %25, null
  br i1 %tobool69.not, label %do.end67.for.inc_crit_edge, label %if.then70

do.end67.for.inc_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then70:                                        ; preds = %do.end67
  tail call void @cifs_dump_detail(ptr noundef nonnull %25, ptr noundef nonnull %server)
  %26 = ptrtoint ptr %resp_buf68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_buf68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dump_mem.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dump_mids, %if.then.i)) #6
          to label %cifs_dump_mem.exit [label %if.then.i], !srcloc !405

if.then.i:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dump_mem.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, i32 noundef 62, ptr noundef %27) #6
  br label %cifs_dump_mem.exit

cifs_dump_mem.exit:                               ; preds = %if.then.i, %if.then70
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %27, i32 noundef 62, i1 noundef zeroext true) #6
  br label %for.inc

for.inc:                                          ; preds = %cifs_dump_mem.exit, %do.end67.for.inc_crit_edge
  %28 = ptrtoint ptr %mid_entry.099 to i32
  call void @__asan_load4_noabort(i32 %28)
  %mid_entry.0 = load ptr, ptr %mid_entry.099, align 4
  %cmp12.not = icmp eq ptr %mid_entry.0, %pending_mid_q
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body14_crit_edge

for.inc.do.body14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_proc_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.27, ptr noundef null) #6
  store ptr %call, ptr @proc_fs_cifs, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.28, i16 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef nonnull @cifs_debug_data_proc_show, ptr noundef null) #6
  %0 = load ptr, ptr @proc_fs_cifs, align 4
  %call2 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %0, ptr noundef nonnull @cifs_debug_files_proc_show, ptr noundef null) #6
  %1 = load ptr, ptr @proc_fs_cifs, align 4
  %call3 = tail call ptr @proc_create(ptr noundef nonnull @.str.30, i16 noundef zeroext 420, ptr noundef %1, ptr noundef nonnull @cifs_stats_proc_ops) #6
  %2 = load ptr, ptr @proc_fs_cifs, align 4
  %call4 = tail call ptr @proc_create(ptr noundef nonnull @.str.31, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @cifsFYI_proc_ops) #6
  %3 = load ptr, ptr @proc_fs_cifs, align 4
  %call5 = tail call ptr @proc_create(ptr noundef nonnull @.str.32, i16 noundef zeroext 420, ptr noundef %3, ptr noundef nonnull @traceSMB_proc_ops) #6
  %4 = load ptr, ptr @proc_fs_cifs, align 4
  %call6 = tail call ptr @proc_create(ptr noundef nonnull @.str.33, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull @cifs_linux_ext_proc_ops) #6
  %5 = load ptr, ptr @proc_fs_cifs, align 4
  %call7 = tail call ptr @proc_create(ptr noundef nonnull @.str.34, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @cifs_security_flags_proc_ops) #6
  %6 = load ptr, ptr @proc_fs_cifs, align 4
  %call8 = tail call ptr @proc_create(ptr noundef nonnull @.str.35, i16 noundef zeroext 420, ptr noundef %6, ptr noundef nonnull @cifs_lookup_cache_proc_ops) #6
  %7 = load ptr, ptr @proc_fs_cifs, align 4
  %call9 = tail call ptr @proc_create(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @cifs_mount_params_proc_ops) #6
  %8 = load ptr, ptr @proc_fs_cifs, align 4
  %call10 = tail call ptr @proc_create(ptr noundef nonnull @.str.37, i16 noundef zeroext 420, ptr noundef %8, ptr noundef nonnull @dfscache_proc_ops) #6
  %9 = load ptr, ptr @proc_fs_cifs, align 4
  %call11 = tail call ptr @proc_create(ptr noundef nonnull @.str.38, i16 noundef zeroext 420, ptr noundef %9, ptr noundef nonnull @cifs_rdma_readwrite_threshold_proc_fops) #6
  %10 = load ptr, ptr @proc_fs_cifs, align 4
  %call12 = tail call ptr @proc_create(ptr noundef nonnull @.str.39, i16 noundef zeroext 420, ptr noundef %10, ptr noundef nonnull @cifs_smbd_max_frmr_depth_proc_fops) #6
  %11 = load ptr, ptr @proc_fs_cifs, align 4
  %call13 = tail call ptr @proc_create(ptr noundef nonnull @.str.40, i16 noundef zeroext 420, ptr noundef %11, ptr noundef nonnull @cifs_smbd_keep_alive_interval_proc_fops) #6
  %12 = load ptr, ptr @proc_fs_cifs, align 4
  %call14 = tail call ptr @proc_create(ptr noundef nonnull @.str.41, i16 noundef zeroext 420, ptr noundef %12, ptr noundef nonnull @cifs_smbd_max_receive_size_proc_fops) #6
  %13 = load ptr, ptr @proc_fs_cifs, align 4
  %call15 = tail call ptr @proc_create(ptr noundef nonnull @.str.42, i16 noundef zeroext 420, ptr noundef %13, ptr noundef nonnull @cifs_smbd_max_fragmented_recv_size_proc_fops) #6
  %14 = load ptr, ptr @proc_fs_cifs, align 4
  %call16 = tail call ptr @proc_create(ptr noundef nonnull @.str.43, i16 noundef zeroext 420, ptr noundef %14, ptr noundef nonnull @cifs_smbd_max_send_size_proc_fops) #6
  %15 = load ptr, ptr @proc_fs_cifs, align 4
  %call17 = tail call ptr @proc_create(ptr noundef nonnull @.str.44, i16 noundef zeroext 420, ptr noundef %15, ptr noundef nonnull @cifs_smbd_send_credit_target_proc_fops) #6
  %16 = load ptr, ptr @proc_fs_cifs, align 4
  %call18 = tail call ptr @proc_create(ptr noundef nonnull @.str.45, i16 noundef zeroext 420, ptr noundef %16, ptr noundef nonnull @cifs_smbd_receive_credit_max_proc_fops) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_debug_data_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.46) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %0 = load i32, ptr @CIFSMaxBufSize, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalTotalActiveXid to i32))
  %1 = load i32, ptr @GlobalTotalActiveXid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %1) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server.0459 = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not460 = icmp eq ptr %server.0459, @cifs_tcp_ses_list
  br i1 %cmp.not460, label %entry.if.then222_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then222_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then222

for.body:                                         ; preds = %for.inc213.for.body_crit_edge, %entry.for.body_crit_edge
  %server.0462 = phi ptr [ %server.0, %for.inc213.for.body_crit_edge ], [ %server.0459, %entry.for.body_crit_edge ]
  %c.0461 = phi i32 [ %c.1, %for.inc213.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %primary_server = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 86
  %2 = ptrtoint ptr %primary_server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_server, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %for.body.for.inc213_crit_edge

for.body.for.inc213_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc213

if.end:                                           ; preds = %for.body
  %inc = add i32 %c.0461, 1
  %conn_id = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 2
  %4 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %conn_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, i32 noundef %inc, i64 noundef %5) #6
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 8
  %6 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostname, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull %7) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %rdma = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 57
  %8 = ptrtoint ptr %rdma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rdma, align 2, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.end4.skip_rdma_crit_edge, label %if.end7

if.end4.skip_rdma_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_rdma

if.end7:                                          ; preds = %if.end4
  %smbd_conn = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 58
  %10 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smbd_conn, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66) #6
  br label %skip_rdma

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %protocol = getelementptr inbounds %struct.smbd_connection, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %protocol, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, i32 noundef %13, i32 noundef %15) #6
  %16 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smbd_conn, align 4
  %receive_credit_max = getelementptr inbounds %struct.smbd_connection, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %receive_credit_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %receive_credit_max, align 8
  %send_credit_target = getelementptr inbounds %struct.smbd_connection, ptr %17, i32 0, i32 18
  %20 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %send_credit_target, align 4
  %max_send_size = getelementptr inbounds %struct.smbd_connection, ptr %17, i32 0, i32 19
  %22 = ptrtoint ptr %max_send_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_send_size, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, i32 noundef %19, i32 noundef %21, i32 noundef %23) #6
  %24 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smbd_conn, align 4
  %max_fragmented_recv_size = getelementptr inbounds %struct.smbd_connection, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %max_fragmented_recv_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_fragmented_recv_size, align 4
  %max_fragmented_send_size = getelementptr inbounds %struct.smbd_connection, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %max_fragmented_send_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_fragmented_send_size, align 8
  %max_receive_size = getelementptr inbounds %struct.smbd_connection, ptr %25, i32 0, i32 22
  %30 = ptrtoint ptr %max_receive_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_receive_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, i32 noundef %27, i32 noundef %29, i32 noundef %31) #6
  %32 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smbd_conn, align 4
  %keep_alive_interval = getelementptr inbounds %struct.smbd_connection, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %keep_alive_interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keep_alive_interval, align 8
  %max_readwrite_size = getelementptr inbounds %struct.smbd_connection, ptr %33, i32 0, i32 24
  %36 = ptrtoint ptr %max_readwrite_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_readwrite_size, align 4
  %rdma_readwrite_threshold = getelementptr inbounds %struct.smbd_connection, ptr %33, i32 0, i32 33
  %38 = ptrtoint ptr %rdma_readwrite_threshold to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rdma_readwrite_threshold, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i32 noundef %35, i32 noundef %37, i32 noundef %39) #6
  %40 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smbd_conn, align 4
  %count_get_receive_buffer = getelementptr inbounds %struct.smbd_connection, ptr %41, i32 0, i32 67
  %42 = ptrtoint ptr %count_get_receive_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count_get_receive_buffer, align 8
  %count_put_receive_buffer = getelementptr inbounds %struct.smbd_connection, ptr %41, i32 0, i32 68
  %44 = ptrtoint ptr %count_put_receive_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count_put_receive_buffer, align 4
  %count_send_empty = getelementptr inbounds %struct.smbd_connection, ptr %41, i32 0, i32 72
  %46 = ptrtoint ptr %count_send_empty to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count_send_empty, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, i32 noundef %43, i32 noundef %45, i32 noundef %47) #6
  %48 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smbd_conn, align 4
  %count_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 69
  %50 = ptrtoint ptr %count_reassembly_queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count_reassembly_queue, align 8
  %count_enqueue_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 70
  %52 = ptrtoint ptr %count_enqueue_reassembly_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_enqueue_reassembly_queue, align 4
  %count_dequeue_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 71
  %54 = ptrtoint ptr %count_dequeue_reassembly_queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dequeue_reassembly_queue, align 8
  %fragment_reassembly_remaining = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 30
  %56 = ptrtoint ptr %fragment_reassembly_remaining to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fragment_reassembly_remaining, align 4
  %reassembly_data_length = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 55
  %58 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reassembly_data_length, align 8
  %reassembly_queue_length = getelementptr inbounds %struct.smbd_connection, ptr %49, i32 0, i32 56
  %60 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reassembly_queue_length, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #6
  %62 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %smbd_conn, align 4
  %send_credits = getelementptr inbounds %struct.smbd_connection, ptr %63, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_credits, i32 noundef 4) #6
  %64 = ptrtoint ptr %send_credits to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %send_credits, align 4
  %66 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %smbd_conn, align 4
  %receive_credits = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 28
  %call.i.i432 = tail call zeroext i1 @__kasan_check_read(ptr noundef %receive_credits, i32 noundef 4) #6
  %68 = ptrtoint ptr %receive_credits to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %receive_credits, align 4
  %70 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %smbd_conn, align 4
  %receive_credit_target = getelementptr inbounds %struct.smbd_connection, ptr %71, i32 0, i32 29
  %72 = ptrtoint ptr %receive_credit_target to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %receive_credit_target, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %65, i32 noundef %69, i32 noundef %73) #6
  %74 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %smbd_conn, align 4
  %send_pending = getelementptr inbounds %struct.smbd_connection, ptr %75, i32 0, i32 42
  %call.i.i433 = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #6
  %76 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %send_pending, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, i32 noundef %77) #6
  %78 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %smbd_conn, align 4
  %count_receive_queue = getelementptr inbounds %struct.smbd_connection, ptr %79, i32 0, i32 46
  %80 = ptrtoint ptr %count_receive_queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_receive_queue, align 4
  %count_empty_packet_queue = getelementptr inbounds %struct.smbd_connection, ptr %79, i32 0, i32 49
  %82 = ptrtoint ptr %count_empty_packet_queue to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count_empty_packet_queue, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef %81, i32 noundef %83) #6
  %84 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %smbd_conn, align 4
  %responder_resources = getelementptr inbounds %struct.smbd_connection, ptr %85, i32 0, i32 31
  %86 = ptrtoint ptr %responder_resources to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %responder_resources, align 8
  %max_frmr_depth = getelementptr inbounds %struct.smbd_connection, ptr %85, i32 0, i32 32
  %88 = ptrtoint ptr %max_frmr_depth to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_frmr_depth, align 4
  %mr_type = getelementptr inbounds %struct.smbd_connection, ptr %85, i32 0, i32 34
  %90 = ptrtoint ptr %mr_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mr_type, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76, i32 noundef %87, i32 noundef %89, i32 noundef %91) #6
  %92 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %smbd_conn, align 4
  %mr_ready_count = getelementptr inbounds %struct.smbd_connection, ptr %93, i32 0, i32 37
  %call.i.i434 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mr_ready_count, i32 noundef 4) #6
  %94 = ptrtoint ptr %mr_ready_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %mr_ready_count, align 4
  %96 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smbd_conn, align 4
  %mr_used_count = getelementptr inbounds %struct.smbd_connection, ptr %97, i32 0, i32 38
  %call.i.i435 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mr_used_count, i32 noundef 4) #6
  %98 = ptrtoint ptr %mr_used_count to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %mr_used_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.77, i32 noundef %95, i32 noundef %99) #6
  br label %skip_rdma

skip_rdma:                                        ; preds = %if.end10, %if.then9, %if.end4.skip_rdma_crit_edge
  %credits = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 20
  %100 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %credits, align 8
  %dialect = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 36
  %102 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %dialect, align 2
  %conv = zext i16 %103 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.78, i32 noundef %101, i32 noundef %conv) #6
  %compress_algorithm = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 75
  %104 = ptrtoint ptr %compress_algorithm to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %compress_algorithm, align 4
  %106 = zext i16 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values)
  switch i16 %105, label %skip_rdma.if.end63_crit_edge [
    i16 256, label %skip_rdma.if.end63.sink.split_crit_edge
    i16 512, label %if.then54
    i16 768, label %if.then60
  ]

skip_rdma.if.end63.sink.split_crit_edge:          ; preds = %skip_rdma
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.sink.split

skip_rdma.if.end63_crit_edge:                     ; preds = %skip_rdma
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then54:                                        ; preds = %skip_rdma
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.sink.split

if.then60:                                        ; preds = %skip_rdma
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.then60, %if.then54, %skip_rdma.if.end63.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.80, %if.then54 ], [ @.str.81, %if.then60 ], [ @.str.79, %skip_rdma.if.end63.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.80.sink) #6
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %skip_rdma.if.end63_crit_edge
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 29
  %107 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sign, align 2, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool64.not = icmp eq i8 %108, 0
  br i1 %tobool64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %posix_ext_supported = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 80
  %109 = ptrtoint ptr %posix_ext_supported to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %posix_ext_supported, align 1, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool67.not = icmp eq i8 %110, 0
  br i1 %tobool67.not, label %if.end66.if.end69_crit_edge, label %if.then68

if.end66.if.end69_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66.if.end69_crit_edge
  %nosharesock = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 18
  %111 = ptrtoint ptr %nosharesock to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %nosharesock, align 2, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool70.not = icmp eq i8 %112, 0
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.84) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %113 = ptrtoint ptr %rdma to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rdma, align 2, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool74.not = icmp eq i8 %114, 0
  br i1 %tobool74.not, label %if.end72.if.end76_crit_edge, label %if.then75

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 7
  %115 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tcpStatus, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 47
  %117 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %reconnect_instance, align 4
  %srv_count = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 3
  %119 = ptrtoint ptr %srv_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %srv_count, align 8
  %sec_mode = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 28
  %121 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %sec_mode, align 4
  %conv77 = zext i16 %122 to i32
  %req_lock.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock.i) #6
  %in_flight.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 22
  %123 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %in_flight.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %req_lock.i) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %conv77, i32 noundef %124) #6
  %in_send = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 65
  %call.i.i436 = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_send, i32 noundef 4) #6
  %125 = ptrtoint ptr %in_send to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %in_send, align 4
  %num_waiters = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 66
  %call.i.i437 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_waiters, i32 noundef 4) #6
  %127 = ptrtoint ptr %num_waiters to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %num_waiters, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef %126, i32 noundef %128) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.88) #6
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 1
  %129 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %129)
  %tmp2.0452 = load ptr, ptr %smb_ses_list, align 4
  %cmp.i.not453 = icmp eq ptr %tmp2.0452, %smb_ses_list
  br i1 %cmp.i.not453, label %if.end76.if.then197_crit_edge, label %for.body86.lr.ph

if.end76.if.then197_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then197

for.body86.lr.ph:                                 ; preds = %if.end76
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 5
  br label %for.body86

for.body86:                                       ; preds = %for.end190.for.body86_crit_edge, %for.body86.lr.ph
  %tmp2.0455 = phi ptr [ %tmp2.0452, %for.body86.lr.ph ], [ %tmp2.0, %for.end190.for.body86_crit_edge ]
  %i.0454 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc90, %for.end190.for.body86_crit_edge ]
  %inc90 = add i32 %i.0454, 1
  %serverDomain = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 11
  %130 = ptrtoint ptr %serverDomain to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %serverDomain, align 8
  %cmp91 = icmp eq ptr %131, null
  br i1 %cmp91, label %for.body86.if.then98_crit_edge, label %lor.lhs.false

for.body86.if.then98_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

lor.lhs.false:                                    ; preds = %for.body86
  %serverOS = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 9
  %132 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %serverOS, align 8
  %cmp93 = icmp eq ptr %133, null
  br i1 %cmp93, label %lor.lhs.false.if.then98_crit_edge, label %lor.lhs.false95

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

lor.lhs.false95:                                  ; preds = %lor.lhs.false
  %serverNOS = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 10
  %134 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %serverNOS, align 4
  %cmp96 = icmp eq ptr %135, null
  br i1 %cmp96, label %lor.lhs.false95.if.then98_crit_edge, label %if.else110

lor.lhs.false95.if.then98_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false95.if.then98_crit_edge, %lor.lhs.false.if.then98_crit_edge, %for.body86.if.then98_crit_edge
  %ip_addr = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 16
  %ses_count = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 6
  %136 = ptrtoint ptr %ses_count to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ses_count, align 4
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 15
  %138 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %capabilities, align 8
  %status = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 7
  %140 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, i32 noundef %inc90, ptr noundef %ip_addr, i32 noundef %137, i32 noundef %139, i32 noundef %141) #6
  %session_flags = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 26
  %142 = ptrtoint ptr %session_flags to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %session_flags, align 2
  %conv99 = zext i16 %143 to i32
  %and = and i32 %conv99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool100.not = icmp eq i32 %and, 0
  br i1 %tobool100.not, label %if.else102, label %if.then101

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90) #6
  br label %if.end119

if.else102:                                       ; preds = %if.then98
  %and105 = and i32 %conv99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else102.if.end119_crit_edge, label %if.then107

if.else102.if.end119_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then107:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91) #6
  br label %if.end119

if.else110:                                       ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  %ip_addr111 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 16
  %ses_count114 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 6
  %144 = ptrtoint ptr %ses_count114 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ses_count114, align 4
  %capabilities117 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 15
  %146 = ptrtoint ptr %capabilities117 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %capabilities117, align 8
  %status118 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 7
  %148 = ptrtoint ptr %status118 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %status118, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %inc90, ptr noundef %ip_addr111, ptr noundef nonnull %131, i32 noundef %145, ptr noundef nonnull %133, ptr noundef nonnull %135, i32 noundef %147, i32 noundef %149) #6
  br label %if.end119

if.end119:                                        ; preds = %if.else110, %if.then107, %if.else102.if.end119_crit_edge, %if.then101
  %150 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops, align 4
  %select_sectype = getelementptr inbounds %struct.smb_version_operations, ptr %151, i32 0, i32 104
  %152 = ptrtoint ptr %select_sectype to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %select_sectype, align 4
  %sectype = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 23
  %154 = ptrtoint ptr %sectype to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %sectype, align 4
  %call120 = tail call i32 %153(ptr noundef %server.0462, i32 noundef %155) #6
  %switch.tableidx = add i32 %call120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %156 = icmp ult i32 %switch.tableidx, 3
  br i1 %156, label %switch.lookup, label %if.end119.get_security_type_str.exit_crit_edge

if.end119.get_security_type_str.exit_crit_edge:   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_security_type_str.exit

switch.lookup:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cifs_debug_data_proc_show, i32 0, i32 %switch.tableidx
  %157 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %157)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_security_type_str.exit

get_security_type_str.exit:                       ; preds = %switch.lookup, %if.end119.get_security_type_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.115, %if.end119.get_security_type_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, ptr noundef nonnull %retval.0.i) #6
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 12
  %158 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %Suid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i64 noundef %159) #6
  %session_flags122 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 26
  %160 = ptrtoint ptr %session_flags122 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %session_flags122, align 2
  %162 = and i16 %161, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool125.not = icmp eq i16 %162, 0
  br i1 %tobool125.not, label %get_security_type_str.exit.if.end127_crit_edge, label %if.then126

get_security_type_str.exit.if.end127_crit_edge:   ; preds = %get_security_type_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then126:                                       ; preds = %get_security_type_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.95) #6
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %get_security_type_str.exit.if.end127_crit_edge
  %sign128 = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 24
  %163 = ptrtoint ptr %sign128 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sign128, align 8, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool129.not = icmp eq i8 %164, 0
  br i1 %tobool129.not, label %if.end127.if.end131_crit_edge, label %if.then130

if.end127.if.end131_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.82) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end127.if.end131_crit_edge
  %linux_uid = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 13
  %165 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %165)
  %.unpack = load i32, ptr %linux_uid, align 8
  %166 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call132 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %166) #6
  %cred_uid = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 14
  %167 = ptrtoint ptr %cred_uid to i32
  call void @__asan_load4_noabort(i32 %167)
  %.unpack431 = load i32, ptr %cred_uid, align 4
  %168 = insertvalue [1 x i32] undef, i32 %.unpack431, 0
  %call134 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %168) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.96, i32 noundef %call132, i32 noundef %call134) #6
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #6
  %chans_need_reconnect = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 40
  %169 = ptrtoint ptr %chans_need_reconnect to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %chans_need_reconnect, align 4
  %and1.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool136.not = icmp eq i32 %and1.i, 0
  br i1 %tobool136.not, label %if.end131.if.end138_crit_edge, label %if.then137

if.end131.if.end138_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.97) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end131.if.end138_crit_edge
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 37
  %171 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %cmp139 = icmp ugt i32 %172, 1
  br i1 %cmp139, label %if.then141, label %if.end138.if.end154_crit_edge

if.end138.if.end154_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then141:                                       ; preds = %if.end138
  %sub = add i32 %172, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %sub) #6
  %173 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %chan_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp145444 = icmp ugt i32 %174, 1
  br i1 %cmp145444, label %if.then141.for.body147_crit_edge, label %if.then141.if.end154_crit_edge

if.then141.if.end154_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then141.for.body147_crit_edge:                 ; preds = %if.then141
  br label %for.body147

for.body147:                                      ; preds = %for.inc.for.body147_crit_edge, %if.then141.for.body147_crit_edge
  %j.0445 = phi i32 [ %add.i, %for.inc.for.body147_crit_edge ], [ 1, %if.then141.for.body147_crit_edge ]
  %arrayidx = getelementptr %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 36, i32 %j.0445
  %175 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx, align 4
  %add.i = add nuw i32 %j.0445, 1
  %conn_id.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %conn_id.i, align 8
  %credits.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 20
  %179 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %credits.i, align 8
  %dialect.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 36
  %181 = ptrtoint ptr %dialect.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %dialect.i, align 2
  %conv.i439 = zext i16 %182 to i32
  %tcpStatus.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 7
  %183 = ptrtoint ptr %tcpStatus.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tcpStatus.i, align 4
  %reconnect_instance.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 47
  %185 = ptrtoint ptr %reconnect_instance.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %reconnect_instance.i, align 4
  %srv_count.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 3
  %187 = ptrtoint ptr %srv_count.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %srv_count.i, align 8
  %sec_mode.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 28
  %189 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %sec_mode.i, align 4
  %conv2.i = zext i16 %190 to i32
  %req_lock.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock.i.i) #6
  %in_flight.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 22
  %191 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %in_flight.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %req_lock.i.i) #6
  %in_send.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 65
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_send.i, i32 noundef 4) #6
  %193 = ptrtoint ptr %in_send.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %in_send.i, align 4
  %num_waiters.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %176, i32 0, i32 66
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_waiters.i, i32 noundef 4) #6
  %195 = ptrtoint ptr %num_waiters.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %num_waiters.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.116, i32 noundef %add.i, i64 noundef %178, i32 noundef %180, i32 noundef %conv.i439, i32 noundef %184, i32 noundef %186, i32 noundef %188, i32 noundef %conv2.i, i32 noundef %192, i32 noundef %194, i32 noundef %196) #6
  %div3.i = lshr i32 %j.0445, 5
  %arrayidx.i = getelementptr i32, ptr %chans_need_reconnect, i32 %div3.i
  %197 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0445, 31
  %199 = shl nuw i32 1, %and.i
  %200 = and i32 %198, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool150.not = icmp eq i32 %200, 0
  br i1 %tobool150.not, label %for.body147.for.inc_crit_edge, label %if.then151

for.body147.for.inc_crit_edge:                    ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then151:                                       ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.99) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then151, %for.body147.for.inc_crit_edge
  %201 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %chan_count, align 8
  %cmp145 = icmp ult i32 %add.i, %202
  br i1 %cmp145, label %for.inc.for.body147_crit_edge, label %for.inc.if.end154_crit_edge

for.inc.if.end154_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

for.inc.for.body147_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body147

if.end154:                                        ; preds = %for.inc.if.end154_crit_edge, %if.then141.if.end154_crit_edge, %if.end138.if.end154_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.100) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 0) #6
  %tcon_ipc = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 3
  %203 = ptrtoint ptr %tcon_ipc to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %tcon_ipc, align 8
  %tobool156.not = icmp eq ptr %204, null
  br i1 %tobool156.not, label %if.else159, label %if.then157

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cifs_debug_tcon(ptr noundef %m, ptr noundef nonnull %204)
  br label %if.end160

if.else159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.102) #6
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.then157
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 2
  %205 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %205)
  %tmp3.0446 = load ptr, ptr %tcon_list, align 4
  %cmp.i440.not447 = icmp eq ptr %tmp3.0446, %tcon_list
  br i1 %cmp.i440.not447, label %if.end160.for.end174_crit_edge, label %if.end160.for.body167_crit_edge

if.end160.for.body167_crit_edge:                  ; preds = %if.end160
  br label %for.body167

if.end160.for.end174_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end174

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %if.end160.for.body167_crit_edge
  %tmp3.0449 = phi ptr [ %tmp3.0, %for.body167.for.body167_crit_edge ], [ %tmp3.0446, %if.end160.for.body167_crit_edge ]
  %j.1448 = phi i32 [ %inc171, %for.body167.for.body167_crit_edge ], [ 0, %if.end160.for.body167_crit_edge ]
  %inc171 = add i32 %j.1448, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, i32 noundef %inc171) #6
  tail call fastcc void @cifs_debug_tcon(ptr noundef %m, ptr noundef %tmp3.0449)
  %206 = ptrtoint ptr %tmp3.0449 to i32
  call void @__asan_load4_noabort(i32 %206)
  %tmp3.0 = load ptr, ptr %tmp3.0449, align 4
  %cmp.i440.not = icmp eq ptr %tmp3.0, %tcon_list
  br i1 %cmp.i440.not, label %for.body167.for.end174_crit_edge, label %for.body167.for.body167_crit_edge

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167

for.body167.for.end174_crit_edge:                 ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end174

for.end174:                                       ; preds = %for.body167.for.end174_crit_edge, %if.end160.for.end174_crit_edge
  %iface_lock = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %iface_lock) #6
  %iface_count = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 33
  %207 = ptrtoint ptr %iface_count to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %iface_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool175.not = icmp eq i32 %208, 0
  br i1 %tobool175.not, label %for.end174.for.end190_crit_edge, label %if.end178

for.end174.for.end190_crit_edge:                  ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end190

if.end178:                                        ; preds = %for.end174
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, i32 noundef %208) #6
  %209 = ptrtoint ptr %iface_count to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pr = load i32, ptr %iface_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp181450.not = icmp eq i32 %.pr, 0
  br i1 %cmp181450.not, label %if.end178.for.end190_crit_edge, label %for.body183.lr.ph

if.end178.for.end190_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end190

for.body183.lr.ph:                                ; preds = %if.end178
  %iface_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0455, i32 0, i32 32
  br label %for.body183

for.body183:                                      ; preds = %if.end187.for.body183_crit_edge, %for.body183.lr.ph
  %j.2451 = phi i32 [ 0, %for.body183.lr.ph ], [ %add, %if.end187.for.body183_crit_edge ]
  %210 = ptrtoint ptr %iface_list to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %iface_list, align 8
  %arrayidx184 = getelementptr %struct.cifs_server_iface, ptr %211, i32 %j.2451
  %add = add nuw i32 %j.2451, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i32 noundef %add) #6
  %sockaddr.i = getelementptr %struct.cifs_server_iface, ptr %211, i32 %j.2451, i32 2
  %212 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx184, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, i32 noundef %213) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.129) #6
  %rdma_capable.i = getelementptr %struct.cifs_server_iface, ptr %211, i32 %j.2451, i32 1
  %214 = ptrtoint ptr %rdma_capable.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load.i = load i8, ptr %rdma_capable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.body183.if.end.i_crit_edge, label %if.then.i

for.body183.if.end.i_crit_edge:                   ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.130) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body183.if.end.i_crit_edge
  %215 = ptrtoint ptr %rdma_capable.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load2.i = load i8, ptr %rdma_capable.i, align 4
  %216 = and i8 %bf.load2.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool5.not.i = icmp eq i8 %216, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.131) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  %217 = ptrtoint ptr %sockaddr.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %sockaddr.i, align 4
  %219 = zext i16 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.189)
  switch i16 %218, label %if.end7.i.cifs_dump_iface.exit_crit_edge [
    i16 2, label %if.then10.i
    i16 10, label %if.then16.i
  ]

if.end7.i.cifs_dump_iface.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cifs_dump_iface.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sin_addr.i = getelementptr %struct.cifs_server_iface, ptr %211, i32 %j.2451, i32 2, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.132, ptr noundef %sin_addr.i) #6
  br label %cifs_dump_iface.exit

if.then16.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sin6_addr.i = getelementptr %struct.cifs_server_iface, ptr %211, i32 %j.2451, i32 2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, ptr noundef %sin6_addr.i) #6
  br label %cifs_dump_iface.exit

cifs_dump_iface.exit:                             ; preds = %if.then16.i, %if.then10.i, %if.end7.i.cifs_dump_iface.exit_crit_edge
  %call185 = tail call zeroext i1 @is_ses_using_iface(ptr noundef %tmp2.0455, ptr noundef %arrayidx184) #6
  br i1 %call185, label %if.then186, label %cifs_dump_iface.exit.if.end187_crit_edge

cifs_dump_iface.exit.if.end187_crit_edge:         ; preds = %cifs_dump_iface.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187

if.then186:                                       ; preds = %cifs_dump_iface.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.106) #6
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %cifs_dump_iface.exit.if.end187_crit_edge
  %220 = ptrtoint ptr %iface_count to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %iface_count, align 4
  %cmp181 = icmp ult i32 %add, %221
  br i1 %cmp181, label %if.end187.for.body183_crit_edge, label %if.end187.for.end190_crit_edge

if.end187.for.end190_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end190

if.end187.for.body183_crit_edge:                  ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body183

for.end190:                                       ; preds = %if.end187.for.end190_crit_edge, %if.end178.for.end190_crit_edge, %for.end174.for.end190_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #6
  %222 = ptrtoint ptr %tmp2.0455 to i32
  call void @__asan_load4_noabort(i32 %222)
  %tmp2.0 = load ptr, ptr %tmp2.0455, align 4
  %cmp.i.not = icmp eq ptr %tmp2.0, %smb_ses_list
  br i1 %cmp.i.not, label %for.end194, label %for.end190.for.body86_crit_edge

for.end190.for.body86_crit_edge:                  ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.end194:                                       ; preds = %for.end190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc90)
  %cmp195 = icmp eq i32 %inc90, 0
  br i1 %cmp195, label %for.end194.if.then197_crit_edge, label %for.end194.if.end198_crit_edge

for.end194.if.end198_crit_edge:                   ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

for.end194.if.then197_crit_edge:                  ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then197

if.then197:                                       ; preds = %for.end194.if.then197_crit_edge, %if.end76.if.then197_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107) #6
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %for.end194.if.end198_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.108) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #6
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0462, i32 0, i32 15
  %223 = ptrtoint ptr %pending_mid_q to i32
  call void @__asan_load4_noabort(i32 %223)
  %tmp3.1456 = load ptr, ptr %pending_mid_q, align 4
  %cmp.i442.not457 = icmp eq ptr %tmp3.1456, %pending_mid_q
  br i1 %cmp.i442.not457, label %if.end198.for.end212_crit_edge, label %if.end198.for.body205_crit_edge

if.end198.for.body205_crit_edge:                  ; preds = %if.end198
  br label %for.body205

if.end198.for.end212_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end212

for.body205:                                      ; preds = %for.body205.for.body205_crit_edge, %if.end198.for.body205_crit_edge
  %tmp3.1458 = phi ptr [ %tmp3.1, %for.body205.for.body205_crit_edge ], [ %tmp3.1456, %if.end198.for.body205_crit_edge ]
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %tmp3.1458, i32 0, i32 18
  %224 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %mid_state, align 4
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %tmp3.1458, i32 0, i32 20
  %226 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %command, align 4
  %228 = tail call i16 @llvm.bswap.i16(i16 %227)
  %conv209 = zext i16 %228 to i32
  %pid = getelementptr inbounds %struct.mid_q_entry, ptr %tmp3.1458, i32 0, i32 6
  %229 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pid, align 4
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %tmp3.1458, i32 0, i32 14
  %231 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %callback_data, align 4
  %mid = getelementptr inbounds %struct.mid_q_entry, ptr %tmp3.1458, i32 0, i32 3
  %233 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %mid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, i32 noundef %225, i32 noundef %conv209, i32 noundef %230, ptr noundef %232, i64 noundef %234) #6
  %235 = ptrtoint ptr %tmp3.1458 to i32
  call void @__asan_load4_noabort(i32 %235)
  %tmp3.1 = load ptr, ptr %tmp3.1458, align 4
  %cmp.i442.not = icmp eq ptr %tmp3.1, %pending_mid_q
  br i1 %cmp.i442.not, label %for.body205.for.end212_crit_edge, label %for.body205.for.body205_crit_edge

for.body205.for.body205_crit_edge:                ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body205

for.body205.for.end212_crit_edge:                 ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end212

for.end212:                                       ; preds = %for.body205.for.end212_crit_edge, %if.end198.for.end212_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110) #6
  br label %for.inc213

for.inc213:                                       ; preds = %for.end212, %for.body.for.inc213_crit_edge
  %c.1 = phi i32 [ %c.0461, %for.body.for.inc213_crit_edge ], [ %inc, %for.end212 ]
  %236 = ptrtoint ptr %server.0462 to i32
  call void @__asan_load4_noabort(i32 %236)
  %server.0 = load ptr, ptr %server.0462, align 4
  %cmp.not = icmp eq ptr %server.0, @cifs_tcp_ses_list
  br i1 %cmp.not, label %for.end219, label %for.inc213.for.body_crit_edge

for.inc213.for.body_crit_edge:                    ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end219:                                       ; preds = %for.inc213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1)
  %cmp220 = icmp eq i32 %c.1, 0
  br i1 %cmp220, label %for.end219.if.then222_crit_edge, label %for.end219.if.end223_crit_edge

for.end219.if.end223_crit_edge:                   ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

for.end219.if.then222_crit_edge:                  ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then222

if.then222:                                       ; preds = %for.end219.if.then222_crit_edge, %entry.if.then222_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.111) #6
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %for.end219.if.end223_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  tail call void @cifs_swn_dump(ptr noundef %m) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_debug_files_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.134) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.135) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.136) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server.087 = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not88 = icmp eq ptr %server.087, @cifs_tcp_ses_list
  br i1 %cmp.not88, label %entry.for.end47_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end47

for.cond.loopexit:                                ; preds = %for.cond4.loopexit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %server.089 to i32
  call void @__asan_load4_noabort(i32 %0)
  %server.0 = load ptr, ptr %server.089, align 4
  %cmp.not = icmp eq ptr %server.0, @cifs_tcp_ses_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end47_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.loopexit.for.end47_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end47

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %server.089 = phi ptr [ %server.0, %for.cond.loopexit.for.body_crit_edge ], [ %server.087, %entry.for.body_crit_edge ]
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.089, i32 0, i32 1
  %1 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.084 = load ptr, ptr %smb_ses_list, align 4
  %cmp.i.not85 = icmp eq ptr %tmp.084, %smb_ses_list
  br i1 %cmp.i.not85, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.cond4.loopexit:                               ; preds = %for.end.for.cond4.loopexit_crit_edge, %for.body7.for.cond4.loopexit_crit_edge
  %2 = ptrtoint ptr %tmp.086 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.086, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %smb_ses_list
  br i1 %cmp.i.not, label %for.cond4.loopexit.for.cond.loopexit_crit_edge, label %for.cond4.loopexit.for.body7_crit_edge

for.cond4.loopexit.for.body7_crit_edge:           ; preds = %for.cond4.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.cond4.loopexit.for.cond.loopexit_crit_edge:   ; preds = %for.cond4.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body7:                                        ; preds = %for.cond4.loopexit.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %tmp.086 = phi ptr [ %tmp.0, %for.cond4.loopexit.for.body7_crit_edge ], [ %tmp.084, %for.body.for.body7_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp.086, i32 0, i32 2
  %3 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp1.081 = load ptr, ptr %tcon_list, align 4
  %cmp.i74.not82 = icmp eq ptr %tmp1.081, %tcon_list
  br i1 %cmp.i74.not82, label %for.body7.for.cond4.loopexit_crit_edge, label %for.body7.for.body17_crit_edge

for.body7.for.body17_crit_edge:                   ; preds = %for.body7
  br label %for.body17

for.body7.for.cond4.loopexit_crit_edge:           ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.loopexit

for.body17:                                       ; preds = %for.end.for.body17_crit_edge, %for.body7.for.body17_crit_edge
  %tmp1.083 = phi ptr [ %tmp1.0, %for.end.for.body17_crit_edge ], [ %tmp1.081, %for.body7.for.body17_crit_edge ]
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.083, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #6
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.083, i32 0, i32 5
  %4 = ptrtoint ptr %openFileList to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp2.078 = load ptr, ptr %openFileList, align 4
  %cmp.i76.not79 = icmp eq ptr %tmp2.078, %openFileList
  br i1 %cmp.i76.not79, label %for.body17.for.end_crit_edge, label %for.body27.lr.ph

for.body17.for.end_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body27.lr.ph:                                 ; preds = %for.body17
  %tid = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.083, i32 0, i32 11
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.lr.ph
  %tmp2.080 = phi ptr [ %tmp2.078, %for.body27.lr.ph ], [ %tmp2.0, %for.body27.for.body27_crit_edge ]
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %persistent_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %persistent_fid, align 8
  %f_flags = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 9
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 8
  %count = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 13
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  %pid = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 4
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %uid = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 3
  %15 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %uid, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call31 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %16) #6
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 7
  %17 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.138, i32 noundef %6, i64 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %call31, ptr noundef %18) #6
  %mid = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.080, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.139, i64 noundef %20) #6
  %21 = ptrtoint ptr %tmp2.080 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp2.0 = load ptr, ptr %tmp2.080, align 4
  %cmp.i76.not = icmp eq ptr %tmp2.0, %openFileList
  br i1 %cmp.i76.not, label %for.body27.for.end_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

for.body27.for.end_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body27.for.end_crit_edge, %for.body17.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #6
  %22 = ptrtoint ptr %tmp1.083 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp1.0 = load ptr, ptr %tmp1.083, align 4
  %cmp.i74.not = icmp eq ptr %tmp1.0, %tcon_list
  br i1 %cmp.i74.not, label %for.end.for.cond4.loopexit_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.end.for.cond4.loopexit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.loopexit

for.end47:                                        ; preds = %for.cond.loopexit.for.end47_crit_edge, %entry.for.end47_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_proc_clean() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_fs_cifs, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.28, ptr noundef nonnull %0) #6
  %1 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.29, ptr noundef %1) #6
  %2 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.31, ptr noundef %2) #6
  %3 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.32, ptr noundef %3) #6
  %4 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.30, ptr noundef %4) #6
  %5 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.34, ptr noundef %5) #6
  %6 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.33, ptr noundef %6) #6
  %7 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.35, ptr noundef %7) #6
  %8 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.36, ptr noundef %8) #6
  %9 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.37, ptr noundef %9) #6
  %10 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.38, ptr noundef %10) #6
  %11 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.39, ptr noundef %11) #6
  %12 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.40, ptr noundef %12) #6
  %13 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.41, ptr noundef %13) #6
  %14 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.42, ptr noundef %14) #6
  %15 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.43, ptr noundef %15) #6
  %16 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.44, ptr noundef %16) #6
  %17 = load ptr, ptr @proc_fs_cifs, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.45, ptr noundef %17) #6
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.27, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_debug_tcon(ptr noundef %m, ptr noundef %tcon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fsDevInfo = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 19
  %0 = ptrtoint ptr %fsDevInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsDevInfo, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %tc_count = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 1
  %3 = ptrtoint ptr %tc_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tc_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.117, ptr noundef %treeName, i32 noundef %4) #6
  %nativeFileSystem = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 9
  %5 = ptrtoint ptr %nativeFileSystem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nativeFileSystem, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.118, ptr noundef nonnull %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %DeviceCharacteristics = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %DeviceCharacteristics to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DeviceCharacteristics, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %fsAttrInfo = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 20
  %10 = ptrtoint ptr %fsAttrInfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsAttrInfo, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %MaxPathNameComponentLength = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %MaxPathNameComponentLength to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %MaxPathNameComponentLength, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %tidStatus = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 13
  %16 = ptrtoint ptr %tidStatus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tidStatus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.119, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %17) #6
  %18 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %1, label %if.else7 [
    i32 117440512, label %if.then4
    i32 33554432, label %if.then6
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.120) #6
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.121) #6
  br label %if.end9

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.122, i32 noundef %2) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6, %if.then4
  %vol_serial_number = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 31
  %19 = ptrtoint ptr %vol_serial_number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vol_serial_number, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.123, i32 noundef %20) #6
  %seal = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %21 = ptrtoint ptr %seal to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %seal, align 8
  %22 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %bf.cast.not = icmp eq i16 %22, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end9
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %23 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ses, align 8
  %session_flags = getelementptr inbounds %struct.cifs_ses, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %session_flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %session_flags, align 2
  %27 = and i16 %26, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool10.not = icmp eq i16 %27, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %share_flags = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 29
  %28 = ptrtoint ptr %share_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %share_flags, align 4
  %and12 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false11.if.end15_crit_edge, label %lor.lhs.false11.if.then14_crit_edge

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false11.if.end15_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.124) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false11.if.end15_crit_edge
  %30 = ptrtoint ptr %seal to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load16 = load i16, ptr %seal, align 8
  %31 = and i16 %bf.load16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %bf.cast19.not = icmp eq i16 %31, 0
  br i1 %bf.cast19.not, label %if.end15.if.end21_crit_edge, label %if.then20

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.125) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  %32 = ptrtoint ptr %seal to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load22 = load i16, ptr %seal, align 8
  %33 = and i16 %bf.load22, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %bf.cast25.not = icmp eq i16 %33, 0
  br i1 %bf.cast25.not, label %if.end21.if.end27_crit_edge, label %if.then26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.126) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %ses28 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %34 = ptrtoint ptr %ses28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ses28, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %dump_share_caps = getelementptr inbounds %struct.smb_version_operations, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %dump_share_caps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dump_share_caps, align 4
  %tobool29.not = icmp eq ptr %41, null
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %41(ptr noundef %m, ptr noundef %tcon) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %use_witness = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 27
  %42 = ptrtoint ptr %use_witness to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load36 = load i8, ptr %use_witness, align 2
  %43 = and i8 %bf.load36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %bf.cast39.not = icmp eq i8 %43, 0
  br i1 %bf.cast39.not, label %if.end35.if.end41_crit_edge, label %if.then40

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.127) #6
  %44 = ptrtoint ptr %use_witness to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load42.pr = load i8, ptr %use_witness, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35.if.end41_crit_edge
  %bf.load42 = phi i8 [ %bf.load42.pr, %if.then40 ], [ %bf.load36, %if.end35.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %bf.cast44.not = icmp sgt i8 %bf.load42, -1
  br i1 %bf.cast44.not, label %if.end41.if.end46_crit_edge, label %if.then45

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.99) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41.if.end46_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ses_using_iface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_swn_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_stats_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifs_stats_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_stats_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %bv = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bv) #6
  %0 = ptrtoint ptr %bv to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bv, align 1, !annotation !407
  %call = call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %bv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totBufAllocCount, i32 noundef 4) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @totBufAllocCount to i32))
  store volatile i32 0, ptr @totBufAllocCount, align 4
  %call.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totSmBufAllocCount, i32 noundef 4) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @totSmBufAllocCount to i32))
  store volatile i32 0, ptr @totSmBufAllocCount, align 4
  %call.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tcpSesReconnectCount, i32 noundef 4) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tcpSesReconnectCount to i32))
  store volatile i32 0, ptr @tcpSesReconnectCount, align 4
  %call.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tconInfoReconnectCount, i32 noundef 4) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tconInfoReconnectCount to i32))
  store volatile i32 0, ptr @tconInfoReconnectCount, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @GlobalMaxActiveXid to i32))
  store i32 0, ptr @GlobalMaxActiveXid, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @GlobalCurrentXid to i32))
  store i32 0, ptr @GlobalCurrentXid, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #6
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %tmp1.095 = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.i.not96 = icmp eq ptr %tmp1.095, @cifs_tcp_ses_list
  br i1 %cmp.i.not96, label %if.then.for.end41_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end41_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.cond.loopexit:                                ; preds = %for.cond9.loopexit.for.cond.loopexit_crit_edge, %for.end.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %tmp1.097 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp1.0 = load ptr, ptr %tmp1.097, align 4
  %cmp.i.not = icmp eq ptr %tmp1.0, @cifs_tcp_ses_list
  br i1 %cmp.i.not, label %for.cond.loopexit.for.end41_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.loopexit.for.end41_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.then.for.body_crit_edge
  %tmp1.097 = phi ptr [ %tmp1.0, %for.cond.loopexit.for.body_crit_edge ], [ %tmp1.095, %if.then.for.body_crit_edge ]
  %max_in_flight = getelementptr inbounds %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 23
  %2 = ptrtoint ptr %max_in_flight to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_in_flight, align 4
  %fastest_cmd = getelementptr inbounds %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 71
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body
  %i.088 = phi i32 [ 0, %for.body ], [ %inc, %for.body4.for.body4_crit_edge ]
  %arrayidx = getelementptr %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 67, i32 %i.088
  %call.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 68, i32 %i.088
  %call.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5, i32 noundef 4) #6
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 69, i32 %i.088
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 70, i32 %i.088
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx7, align 4
  %7 = ptrtoint ptr %fastest_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fastest_cmd, align 4
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.end:                                          ; preds = %for.body4
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 1
  %8 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp2.092 = load ptr, ptr %smb_ses_list, align 4
  %cmp.i84.not93 = icmp eq ptr %tmp2.092, %smb_ses_list
  br i1 %cmp.i84.not93, label %for.end.for.cond.loopexit_crit_edge, label %for.body14.lr.ph

for.end.for.cond.loopexit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body14.lr.ph:                                 ; preds = %for.end
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %tmp1.097, i32 0, i32 5
  br label %for.body14

for.cond9.loopexit:                               ; preds = %for.inc33.for.cond9.loopexit_crit_edge, %for.body14.for.cond9.loopexit_crit_edge
  %9 = ptrtoint ptr %tmp2.094 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp2.0 = load ptr, ptr %tmp2.094, align 4
  %cmp.i84.not = icmp eq ptr %tmp2.0, %smb_ses_list
  br i1 %cmp.i84.not, label %for.cond9.loopexit.for.cond.loopexit_crit_edge, label %for.cond9.loopexit.for.body14_crit_edge

for.cond9.loopexit.for.body14_crit_edge:          ; preds = %for.cond9.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.cond9.loopexit.for.cond.loopexit_crit_edge:   ; preds = %for.cond9.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body14:                                       ; preds = %for.cond9.loopexit.for.body14_crit_edge, %for.body14.lr.ph
  %tmp2.094 = phi ptr [ %tmp2.092, %for.body14.lr.ph ], [ %tmp2.0, %for.cond9.loopexit.for.body14_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.094, i32 0, i32 2
  %10 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp3.089 = load ptr, ptr %tcon_list, align 4
  %cmp.i86.not90 = icmp eq ptr %tmp3.089, %tcon_list
  br i1 %cmp.i86.not90, label %for.body14.for.cond9.loopexit_crit_edge, label %for.body14.for.body24_crit_edge

for.body14.for.body24_crit_edge:                  ; preds = %for.body14
  br label %for.body24

for.body14.for.cond9.loopexit_crit_edge:          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.loopexit

for.body24:                                       ; preds = %for.inc33.for.body24_crit_edge, %for.body14.for.body24_crit_edge
  %tmp3.091 = phi ptr [ %tmp3.0, %for.inc33.for.body24_crit_edge ], [ %tmp3.089, %for.body14.for.body24_crit_edge ]
  %num_smbs_sent = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.091, i32 0, i32 14
  %call.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %num_smbs_sent, i32 noundef 4) #6
  %11 = ptrtoint ptr %num_smbs_sent to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %num_smbs_sent, align 4
  %stat_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.091, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %stat_lock) #6
  %bytes_read = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.091, i32 0, i32 16
  %12 = call ptr @memset(ptr %bytes_read, i32 0, i32 16)
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %clear_stats = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %clear_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clear_stats, align 4
  %tobool29.not = icmp eq ptr %16, null
  br i1 %tobool29.not, label %for.body24.for.inc33_crit_edge, label %if.then30

for.body24.for.inc33_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

if.then30:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  call void %16(ptr noundef %tmp3.091) #6
  br label %for.inc33

for.inc33:                                        ; preds = %if.then30, %for.body24.for.inc33_crit_edge
  %17 = ptrtoint ptr %tmp3.091 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp3.0 = load ptr, ptr %tmp3.091, align 4
  %cmp.i86.not = icmp eq ptr %tmp3.0, %tcon_list
  br i1 %cmp.i86.not, label %for.inc33.for.cond9.loopexit_crit_edge, label %for.inc33.for.body24_crit_edge

for.inc33.for.body24_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24

for.inc33.for.cond9.loopexit_crit_edge:           ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.loopexit

for.end41:                                        ; preds = %for.cond.loopexit.for.end41_crit_edge, %if.then.for.end41_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end41 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bv) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_stats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sesInfoAllocCount to i32))
  %0 = load i32, ptr @sesInfoAllocCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.140, i32 noundef %0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tconInfoAllocCount to i32))
  %1 = load i32, ptr @tconInfoAllocCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, i32 noundef %1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bufAllocCount to i32))
  %2 = load i32, ptr @bufAllocCount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_min_rcv to i32))
  %3 = load i32, ptr @cifs_min_rcv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tcpSesAllocCount to i32))
  %4 = load i32, ptr @tcpSesAllocCount, align 4
  %add = add i32 %4, %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.142, i32 noundef %2, i32 noundef %add) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smBufAllocCount to i32))
  %5 = load i32, ptr @smBufAllocCount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_min_small to i32))
  %6 = load i32, ptr @cifs_min_small, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.143, i32 noundef %5, i32 noundef %6) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @totBufAllocCount, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totBufAllocCount to i32))
  %7 = load volatile i32, ptr @totBufAllocCount, align 4
  %call.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @totSmBufAllocCount, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totSmBufAllocCount to i32))
  %8 = load volatile i32, ptr @totSmBufAllocCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.144, i32 noundef %7, i32 noundef %8) #6
  %call.i.i115 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @midCount, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @midCount to i32))
  %9 = load volatile i32, ptr @midCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.145, i32 noundef %9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tcpSesReconnectCount to i32))
  %10 = load i32, ptr @tcpSesReconnectCount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tconInfoReconnectCount to i32))
  %11 = load i32, ptr @tconInfoReconnectCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.146, i32 noundef %10, i32 noundef %11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalCurrentXid to i32))
  %12 = load i32, ptr @GlobalCurrentXid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalMaxActiveXid to i32))
  %13 = load i32, ptr @GlobalMaxActiveXid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.147, i32 noundef %12, i32 noundef %13) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server.0134 = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not135 = icmp eq ptr %server.0134, @cifs_tcp_ses_list
  br i1 %cmp.not135, label %entry.for.end61_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.cond.loopexit:                                ; preds = %for.cond21.loopexit.for.cond.loopexit_crit_edge, %for.end20.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i32 [ %i.0136, %for.end20.for.cond.loopexit_crit_edge ], [ %i.2.lcssa, %for.cond21.loopexit.for.cond.loopexit_crit_edge ]
  %14 = ptrtoint ptr %server.0137 to i32
  call void @__asan_load4_noabort(i32 %14)
  %server.0 = load ptr, ptr %server.0137, align 4
  %cmp.not = icmp eq ptr %server.0, @cifs_tcp_ses_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end61_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.loopexit.for.end61_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %server.0137 = phi ptr [ %server.0, %for.cond.loopexit.for.body_crit_edge ], [ %server.0134, %entry.for.body_crit_edge ]
  %i.0136 = phi i32 [ %i.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max_in_flight = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 23
  %15 = ptrtoint ptr %max_in_flight to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_in_flight, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.148, i32 noundef %16) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.149) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.150, i32 noundef 100) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.151) #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.152) #6
  br label %for.body5

for.cond10.preheader:                             ; preds = %for.body5
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 8
  br label %for.body12

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body
  %j.0122 = phi i32 [ 0, %for.body ], [ %inc, %for.body5.for.body5_crit_edge ]
  %arrayidx = getelementptr %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 67, i32 %j.0122
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #6
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 69, i32 %j.0122
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 71, i32 %j.0122
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 70, i32 %j.0122
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.153, i32 noundef %j.0122, i32 noundef %18, i64 noundef %20, i32 noundef %22, i32 noundef %24) #6
  %inc = add nuw nsw i32 %j.0122, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.body12:                                       ; preds = %for.inc18.for.body12_crit_edge, %for.cond10.preheader
  %j.1123 = phi i32 [ 0, %for.cond10.preheader ], [ %inc19, %for.inc18.for.body12_crit_edge ]
  %arrayidx13 = getelementptr %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 68, i32 %j.1123
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx13, i32 noundef 4) #6
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %for.body12.for.inc18_crit_edge, label %if.then

for.body12.for.inc18_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

if.then:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx13, i32 noundef 4) #6
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx13, align 4
  %29 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hostname, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, i32 noundef %28, ptr noundef %30, i32 noundef %j.1123) #6
  br label %for.inc18

for.inc18:                                        ; preds = %if.then, %for.body12.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %j.1123, 1
  %exitcond138.not = icmp eq i32 %inc19, 19
  br i1 %exitcond138.not, label %for.end20, label %for.inc18.for.body12_crit_edge

for.inc18.for.body12_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.end20:                                        ; preds = %for.inc18
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 1
  %31 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp2.0129 = load ptr, ptr %smb_ses_list, align 4
  %cmp.i.not130 = icmp eq ptr %tmp2.0129, %smb_ses_list
  br i1 %cmp.i.not130, label %for.end20.for.cond.loopexit_crit_edge, label %for.body26.lr.ph

for.end20.for.cond.loopexit_crit_edge:            ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body26.lr.ph:                                 ; preds = %for.end20
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0137, i32 0, i32 5
  br label %for.body26

for.cond21.loopexit:                              ; preds = %for.inc49.for.cond21.loopexit_crit_edge, %for.body26.for.cond21.loopexit_crit_edge
  %i.2.lcssa = phi i32 [ %i.1131, %for.body26.for.cond21.loopexit_crit_edge ], [ %inc40, %for.inc49.for.cond21.loopexit_crit_edge ]
  %32 = ptrtoint ptr %tmp2.0132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp2.0 = load ptr, ptr %tmp2.0132, align 4
  %cmp.i.not = icmp eq ptr %tmp2.0, %smb_ses_list
  br i1 %cmp.i.not, label %for.cond21.loopexit.for.cond.loopexit_crit_edge, label %for.cond21.loopexit.for.body26_crit_edge

for.cond21.loopexit.for.body26_crit_edge:         ; preds = %for.cond21.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.cond21.loopexit.for.cond.loopexit_crit_edge:  ; preds = %for.cond21.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body26:                                       ; preds = %for.cond21.loopexit.for.body26_crit_edge, %for.body26.lr.ph
  %tmp2.0132 = phi ptr [ %tmp2.0129, %for.body26.lr.ph ], [ %tmp2.0, %for.cond21.loopexit.for.body26_crit_edge ]
  %i.1131 = phi i32 [ %i.0136, %for.body26.lr.ph ], [ %i.2.lcssa, %for.cond21.loopexit.for.body26_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp2.0132, i32 0, i32 2
  %33 = ptrtoint ptr %tcon_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp3.0125 = load ptr, ptr %tcon_list, align 4
  %cmp.i120.not126 = icmp eq ptr %tmp3.0125, %tcon_list
  br i1 %cmp.i120.not126, label %for.body26.for.cond21.loopexit_crit_edge, label %for.body26.for.body36_crit_edge

for.body26.for.body36_crit_edge:                  ; preds = %for.body26
  br label %for.body36

for.body26.for.cond21.loopexit_crit_edge:         ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.loopexit

for.body36:                                       ; preds = %for.inc49.for.body36_crit_edge, %for.body26.for.body36_crit_edge
  %tmp3.0128 = phi ptr [ %tmp3.0, %for.inc49.for.body36_crit_edge ], [ %tmp3.0125, %for.body26.for.body36_crit_edge ]
  %i.2127 = phi i32 [ %inc40, %for.inc49.for.body36_crit_edge ], [ %i.1131, %for.body26.for.body36_crit_edge ]
  %inc40 = add i32 %i.2127, 1
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.0128, i32 0, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, i32 noundef %inc40, ptr noundef %treeName) #6
  %need_reconnect = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.0128, i32 0, i32 27
  %34 = ptrtoint ptr %need_reconnect to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %need_reconnect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.body36.if.end42_crit_edge, label %if.then41

for.body36.if.end42_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then41:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.99) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.body36.if.end42_crit_edge
  %num_smbs_sent = getelementptr inbounds %struct.cifs_tcon, ptr %tmp3.0128, i32 0, i32 14
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_smbs_sent, i32 noundef 4) #6
  %35 = ptrtoint ptr %num_smbs_sent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %num_smbs_sent, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %36) #6
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %print_stats = getelementptr inbounds %struct.smb_version_operations, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %print_stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %print_stats, align 4
  %tobool44.not = icmp eq ptr %40, null
  br i1 %tobool44.not, label %if.end42.for.inc49_crit_edge, label %if.then45

if.end42.for.inc49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %40(ptr noundef %m, ptr noundef %tmp3.0128) #6
  br label %for.inc49

for.inc49:                                        ; preds = %if.then45, %if.end42.for.inc49_crit_edge
  %41 = ptrtoint ptr %tmp3.0128 to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp3.0 = load ptr, ptr %tmp3.0128, align 4
  %cmp.i120.not = icmp eq ptr %tmp3.0, %tcon_list
  br i1 %cmp.i120.not, label %for.inc49.for.cond21.loopexit_crit_edge, label %for.inc49.for.body36_crit_edge

for.inc49.for.body36_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36

for.inc49.for.cond21.loopexit_crit_edge:          ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.loopexit

for.end61:                                        ; preds = %for.cond.loopexit.for.end61_crit_edge, %entry.for.end61_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_readwrite_threshold_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rdma_readwrite_threshold_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_readwrite_threshold_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @rdma_readwrite_threshold) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_readwrite_threshold_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rdma_readwrite_threshold to i32))
  %0 = load i32, ptr @rdma_readwrite_threshold, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_frmr_depth_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_max_frmr_depth_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_frmr_depth_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_max_frmr_depth) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_frmr_depth_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_max_frmr_depth to i32))
  %0 = load i32, ptr @smbd_max_frmr_depth, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_keep_alive_interval_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_keep_alive_interval_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_keep_alive_interval_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_keep_alive_interval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_keep_alive_interval_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_keep_alive_interval to i32))
  %0 = load i32, ptr @smbd_keep_alive_interval, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_receive_size_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_max_receive_size_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_receive_size_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_max_receive_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_receive_size_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_max_receive_size to i32))
  %0 = load i32, ptr @smbd_max_receive_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_fragmented_recv_size_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_max_fragmented_recv_size_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_fragmented_recv_size_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_max_fragmented_recv_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_fragmented_recv_size_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_max_fragmented_recv_size to i32))
  %0 = load i32, ptr @smbd_max_fragmented_recv_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_send_size_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_max_send_size_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_send_size_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_max_send_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_max_send_size_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_max_send_size to i32))
  %0 = load i32, ptr @smbd_max_send_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_send_credit_target_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_send_credit_target_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_send_credit_target_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_send_credit_target) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_send_credit_target_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_send_credit_target to i32))
  %0 = load i32, ptr @smbd_send_credit_target, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_receive_credit_max_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @smbd_receive_credit_max_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_receive_credit_max_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 10, ptr noundef nonnull @smbd_receive_credit_max) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_receive_credit_max_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smbd_receive_credit_max to i32))
  %0 = load i32, ptr @smbd_receive_credit_max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifsFYI_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifsFYI_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifsFYI_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %c = alloca [2 x i8], align 2
  %bv = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #6
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %c, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bv) #6
  %1 = ptrtoint ptr %bv to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %bv, align 1, !annotation !407
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 798) #6
  %2 = tail call i32 @llvm.read_register.i32(metadata !395) #6
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !408
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !410
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #6, !srcloc !411
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult1 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !410
  %conv = trunc i32 %asmresult1 to i8
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %c, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %c, ptr noundef nonnull %bv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bv to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bv, align 1, !range !406
  %9 = zext i8 %8 to i32
  br label %if.end21

if.else:                                          ; preds = %if.end
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %c, align 2
  %12 = add i8 %11, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %13 = icmp ult i8 %12, 8
  br i1 %13, label %if.then16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = zext i8 %11 to i32
  %sub = add nsw i32 %conv9, -48
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then5
  %storemerge = phi i32 [ %sub, %if.then16 ], [ %9, %if.then5 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  store i32 %storemerge, ptr @cifsFYI, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end21 ], [ %asmresult, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bv) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifsFYI_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_linux_ext_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifs_linux_ext_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_linux_ext_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull @linuxExtEnabled) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_linux_ext_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @linuxExtEnabled to i32))
  %0 = load i8, ptr @linuxExtEnabled, align 1, !range !406
  %1 = zext i8 %0 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_lookup_cache_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifs_lookup_cache_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_lookup_cache_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull @lookupCacheEnabled) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_lookup_cache_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @lookupCacheEnabled to i32))
  %0 = load i8, ptr @lookupCacheEnabled, align 1, !range !406
  %1 = zext i8 %0 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceSMB_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @traceSMB_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceSMB_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool_from_user(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull @traceSMB) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceSMB_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @traceSMB to i32))
  %0 = load i8, ptr @traceSMB, align 1, !range !406
  %1 = zext i8 %0 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_security_flags_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifs_security_flags_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_security_flags_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %flags_string = alloca [12 x i8], align 1
  %bv = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !407
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %flags_string) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bv) #6
  %1 = ptrtoint ptr %bv to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %bv, align 1, !annotation !407
  %2 = add i32 %count, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %2)
  %3 = icmp ult i32 %2, -11
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end59.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  %4 = call ptr @memset(ptr %flags_string, i32 0, i32 12)
  call void @__check_object_size(ptr noundef nonnull %flags_string, i32 noundef %count, i1 noundef zeroext false) #6
  call void @__might_fault(ptr noundef nonnull @.str.180, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #10, !srcloc !412
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !413

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flags_string, i32 noundef %count) #6
  %6 = call i32 @llvm.read_register.i32(metadata !395) #6
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !408
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !409
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !410
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flags_string, ptr noundef %buffer, i32 noundef %count) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #6, !srcloc !409
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !410
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !413

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i200 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.end59.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i200
  %add.ptr.i.i = getelementptr i8, ptr %flags_string, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i200)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp5 = icmp ult i32 %count, 3
  br i1 %cmp5, label %if.then6, label %if.end4.if.end29_crit_edge

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then6:                                         ; preds = %if.end4
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %flags_string, ptr noundef nonnull %bv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp eq i32 %call.i, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bv, align 1, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool11.not, i32 133, i32 16388
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  store i32 %cond, ptr @global_secflags, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %12 = ptrtoint ptr %flags_string to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags_string, align 1
  %conv = zext i8 %13 to i32
  %14 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %14)
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %do.body15, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.body15:                                        ; preds = %if.else
  %call16 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body15.cleanup_crit_edge, label %do.end

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull %flags_string) #9
  br label %cleanup

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.end4.if.end29_crit_edge
  %call31 = call i32 @kstrtouint(ptr noundef nonnull %flags_string, i32 noundef 0, ptr noundef nonnull %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body52, label %do.body35

do.body35:                                        ; preds = %if.end29
  %call36 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.160, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %do.end41

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull %flags_string) #9
  br label %cleanup

do.body52:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %16 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %do.body52.do.end72_crit_edge, label %do.body55

do.body52.do.end72_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

do.body55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_security_flags_proc_write.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_security_flags_proc_write, %land.lhs.true)) #6
          to label %do.end72 [label %land.lhs.true], !srcloc !405

land.lhs.true:                                    ; preds = %do.body55
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.163, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end72_crit_edge, label %if.then63

land.lhs.true.do.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_security_flags_proc_write.descriptor, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.2, i32 noundef %18) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then63, %land.lhs.true.do.end72_crit_edge, %do.body55, %do.body52.do.end72_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp73 = icmp eq i32 %20, 0
  br i1 %cmp73, label %do.body77, label %if.end92

do.body77:                                        ; preds = %do.end72
  %call78 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.165, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.body77.cleanup_crit_edge, label %do.end83

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull %flags_string) #9
  br label %cleanup

if.end92:                                         ; preds = %do.end72
  %and93 = and i32 %20, -585872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end112, label %do.body97

do.body97:                                        ; preds = %if.end92
  %call98 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.168, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body97.cleanup_crit_edge, label %do.end103

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and105 = and i32 %22, -585872
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %and105) #9
  br label %cleanup

if.end112:                                        ; preds = %if.end92
  %and1.i = and i32 %20, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %and1.i)
  %cmp.i = icmp eq i32 %and1.i, 32776
  br i1 %cmp.i, label %if.end112.if.end10.sink.split.i_crit_edge, label %if.else.i

if.end112.if.end10.sink.split.i_crit_edge:        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end112
  %and2.i = and i32 %20, 524416
  call void @__sanitizer_cov_trace_const_cmp4(i32 524416, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 524416
  br i1 %cmp3.i, label %if.else.i.if.end10.sink.split.i_crit_edge, label %if.else5.i

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else5.i:                                       ; preds = %if.else.i
  %and6.i = and i32 %20, 16388
  call void @__sanitizer_cov_trace_const_cmp4(i32 16388, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 16388
  br i1 %cmp7.i, label %if.else5.i.if.end10.sink.split.i_crit_edge, label %if.else5.i.cifs_security_flags_handle_must_flags.exit_crit_edge

if.else5.i.cifs_security_flags_handle_must_flags.exit_crit_edge: ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cifs_security_flags_handle_must_flags.exit

if.else5.i.if.end10.sink.split.i_crit_edge:       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.else5.i.if.end10.sink.split.i_crit_edge, %if.else.i.if.end10.sink.split.i_crit_edge, %if.end112.if.end10.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 32776, %if.end112.if.end10.sink.split.i_crit_edge ], [ 524416, %if.else.i.if.end10.sink.split.i_crit_edge ], [ 16388, %if.else5.i.if.end10.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %flags, align 4
  br label %cifs_security_flags_handle_must_flags.exit

cifs_security_flags_handle_must_flags.exit:       ; preds = %if.end10.sink.split.i, %if.else5.i.cifs_security_flags_handle_must_flags.exit_crit_edge
  %and.i = and i32 %20, 4097
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or.i = or i32 %25, %and.i
  store i32 %or.i, ptr %flags, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  store i32 %or.i, ptr @global_secflags, align 4
  %and113 = and i32 %or.i, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else146, label %if.then115

if.then115:                                       ; preds = %cifs_security_flags_handle_must_flags.exit
  %or = or i32 %or.i, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  store i32 %or, ptr @global_secflags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and118 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then115.cleanup_crit_edge, label %do.body121

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body121:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_security_flags_proc_write.descriptor.173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_security_flags_proc_write, %land.lhs.true133)) #6
          to label %cleanup [label %land.lhs.true133], !srcloc !405

land.lhs.true133:                                 ; preds = %do.body121
  %call134 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.172, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %land.lhs.true133.cleanup_crit_edge, label %if.then136

land.lhs.true133.cleanup_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then136:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_security_flags_proc_write.descriptor.173, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.else146:                                       ; preds = %cifs_security_flags_handle_must_flags.exit
  %and147 = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %cmp148 = icmp eq i32 %and147, 0
  br i1 %cmp148, label %do.body152, label %if.else146.cleanup_crit_edge

if.else146.cleanup_crit_edge:                     ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body152:                                       ; preds = %if.else146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %27 = load i32, ptr @cifsFYI, align 4
  %and153 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body152.cleanup_crit_edge, label %do.body156

do.body152.cleanup_crit_edge:                     ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body156:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_security_flags_proc_write.descriptor.176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_security_flags_proc_write, %land.lhs.true168)) #6
          to label %cleanup [label %land.lhs.true168], !srcloc !405

land.lhs.true168:                                 ; preds = %do.body156
  %call169 = call i32 @___ratelimit(ptr noundef nonnull @cifs_security_flags_proc_write._rs.175, ptr noundef nonnull @__func__.cifs_security_flags_proc_write) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %land.lhs.true168.cleanup_crit_edge, label %if.then171

land.lhs.true168.cleanup_crit_edge:               ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then171:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_security_flags_proc_write.descriptor.176, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %land.lhs.true168.cleanup_crit_edge, %do.body156, %do.body152.cleanup_crit_edge, %if.else146.cleanup_crit_edge, %if.then136, %land.lhs.true133.cleanup_crit_edge, %do.body121, %if.then115.cleanup_crit_edge, %do.end103, %do.body97.cleanup_crit_edge, %do.end83, %do.body77.cleanup_crit_edge, %do.end41, %do.body35.cleanup_crit_edge, %do.end, %do.body15.cleanup_crit_edge, %if.then10, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body15.cleanup_crit_edge ], [ %call31, %do.end41 ], [ %call31, %do.body35.cleanup_crit_edge ], [ -22, %do.end83 ], [ -22, %do.body77.cleanup_crit_edge ], [ -22, %do.end103 ], [ -22, %do.body97.cleanup_crit_edge ], [ %count, %if.else146.cleanup_crit_edge ], [ %count, %do.body152.cleanup_crit_edge ], [ %count, %land.lhs.true168.cleanup_crit_edge ], [ %count, %if.then171 ], [ %count, %if.then136 ], [ %count, %land.lhs.true133.cleanup_crit_edge ], [ %count, %if.then115.cleanup_crit_edge ], [ %count, %do.body121 ], [ %count, %do.body156 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bv) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %flags_string) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_security_flags_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @global_secflags to i32))
  %0 = load i32, ptr @global_secflags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.158, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_mount_params_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cifs_mount_params_proc_show, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_mount_params_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smb3_fs_parameters to i32))
  %0 = load ptr, ptr @smb3_fs_parameters, align 4
  %tobool.not40 = icmp eq ptr %0, null
  br i1 %tobool.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %7, %if.end30.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %p.041 = phi ptr [ %incdec.ptr, %if.end30.for.body_crit_edge ], [ @smb3_fs_parameters, %entry.for.body_crit_edge ]
  %type1 = getelementptr inbounds %struct.fs_parameter_spec, ptr %p.041, i32 0, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then, label %if.else5

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.fs_parameter_spec, ptr %p.041, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp eq i16 %5, 2
  %.str.181..str.182 = select i1 %cmp, ptr @.str.181, ptr @.str.182
  br label %if.end30

if.else5:                                         ; preds = %for.body
  %cmp7 = icmp eq ptr %3, @fs_param_is_bool
  br i1 %cmp7, label %if.else5.if.end30_crit_edge, label %if.else10

if.else5.if.end30_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else10:                                        ; preds = %if.else5
  %cmp12 = icmp eq ptr %3, @fs_param_is_u32
  br i1 %cmp12, label %if.else10.if.end30_crit_edge, label %if.else15

if.else10.if.end30_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else15:                                        ; preds = %if.else10
  %cmp17 = icmp eq ptr %3, @fs_param_is_u64
  br i1 %cmp17, label %if.else15.if.end30_crit_edge, label %if.else20

if.else15.if.end30_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %cmp22 = icmp eq ptr %3, @fs_param_is_string
  %.str.186..str.187 = select i1 %cmp22, ptr @.str.186, ptr @.str.187
  br label %if.end30

if.end30:                                         ; preds = %if.else20, %if.else15.if.end30_crit_edge, %if.else10.if.end30_crit_edge, %if.else5.if.end30_crit_edge, %if.then
  %type.0 = phi ptr [ %.str.181..str.182, %if.then ], [ @.str.183, %if.else5.if.end30_crit_edge ], [ @.str.184, %if.else10.if.end30_crit_edge ], [ @.str.185, %if.else15.if.end30_crit_edge ], [ %.str.186..str.187, %if.else20 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.188, ptr noundef nonnull %1, ptr noundef nonnull %type.0) #6
  %incdec.ptr = getelementptr %struct.fs_parameter_spec, ptr %p.041, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_bool(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u64(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393}
!llvm.named.register.sp = !{!395}
!llvm.module.flags = !{!396, !397, !398, !399, !400, !401, !402, !403}
!llvm.ident = !{!404}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifs_debug.c", i32 31, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cifs_dump_mem.__UNIQUE_ID_ddebug678, !1, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/cifs/cifs_debug.c", i32 32, i32 17}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/cifs/cifs_debug.c", i32 32, i32 29}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/cifs/cifs_debug.c", i32 41, i32 2}
!13 = !{ptr @cifs_dump_detail._rs, !12, !"_rs", i1 false, i1 false}
!14 = !{ptr @__func__.cifs_dump_detail, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cifs_dump_detail._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @cifs_dump_detail._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @cifs_dump_detail._rs.9, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/cifs_debug.c", i32 44, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cifs_dump_detail._entry.10, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @cifs_dump_detail._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cifs_dump_mids._rs, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/cifs_debug.c", i32 57, i32 2}
!25 = !{ptr @__func__.cifs_dump_mids, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cifs_dump_mids._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cifs_dump_mids._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cifs_dump_mids._rs.14, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/cifs_debug.c", i32 60, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cifs_dump_mids._entry.15, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cifs_dump_mids._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @cifs_dump_mids._rs.18, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/cifs_debug.c", i32 67, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_dump_mids._entry.19, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cifs_dump_mids._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @cifs_dump_mids._rs.22, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/cifs/cifs_debug.c", i32 73, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cifs_dump_mids._entry.23, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cifs_dump_mids._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cifs/cifs_debug.c", i32 77, i32 18}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/cifs/cifs_debug.c", i32 702, i32 28}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/cifs/cifs_debug.c", i32 706, i32 2}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/cifs/cifs_debug.c", i32 709, i32 2}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cifs/cifs_debug.c", i32 712, i32 14}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/cifs/cifs_debug.c", i32 713, i32 14}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/cifs/cifs_debug.c", i32 714, i32 14}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/cifs/cifs_debug.c", i32 715, i32 14}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/cifs/cifs_debug.c", i32 717, i32 14}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/cifs/cifs_debug.c", i32 719, i32 14}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/cifs/cifs_debug.c", i32 722, i32 14}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/cifs/cifs_debug.c", i32 725, i32 14}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/cifs/cifs_debug.c", i32 729, i32 14}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/cifs/cifs_debug.c", i32 731, i32 14}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/cifs/cifs_debug.c", i32 733, i32 14}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/cifs/cifs_debug.c", i32 735, i32 14}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/cifs/cifs_debug.c", i32 737, i32 14}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/cifs/cifs_debug.c", i32 739, i32 14}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/cifs/cifs_debug.c", i32 741, i32 14}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/cifs/cifs_debug.c", i32 743, i32 14}
!84 = !{ptr @proc_fs_cifs, !85, !"proc_fs_cifs", i1 false, i1 false}
!85 = !{!"../fs/cifs/cifs_debug.c", i32 691, i32 31}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/cifs/cifs_debug.c", i32 226, i32 7}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/cifs/cifs_debug.c", i32 228, i32 16}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/cifs/cifs_debug.c", i32 228, i32 37}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/cifs/cifs_debug.c", i32 229, i32 16}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cifs/cifs_debug.c", i32 231, i32 16}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/cifs/cifs_debug.c", i32 234, i32 16}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cifs/cifs_debug.c", i32 237, i32 16}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/cifs/cifs_debug.c", i32 240, i32 16}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/cifs/cifs_debug.c", i32 245, i32 16}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/cifs/cifs_debug.c", i32 250, i32 16}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/cifs/cifs_debug.c", i32 253, i32 16}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/cifs/cifs_debug.c", i32 256, i32 16}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/cifs/cifs_debug.c", i32 259, i32 16}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/cifs/cifs_debug.c", i32 261, i32 16}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/cifs/cifs_debug.c", i32 263, i32 14}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/cifs/cifs_debug.c", i32 266, i32 16}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/cifs/cifs_debug.c", i32 267, i32 16}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/cifs/cifs_debug.c", i32 269, i32 16}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/cifs/cifs_debug.c", i32 279, i32 17}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/cifs/cifs_debug.c", i32 283, i32 18}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/cifs/cifs_debug.c", i32 289, i32 18}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/cifs/cifs_debug.c", i32 293, i32 17}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/cifs/cifs_debug.c", i32 297, i32 17}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/cifs/cifs_debug.c", i32 302, i32 17}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/cifs/cifs_debug.c", i32 307, i32 17}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/cifs/cifs_debug.c", i32 312, i32 17}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/cifs/cifs_debug.c", i32 317, i32 17}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/cifs/cifs_debug.c", i32 329, i32 17}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/cifs/cifs_debug.c", i32 334, i32 17}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/cifs/cifs_debug.c", i32 336, i32 17}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/cifs/cifs_debug.c", i32 340, i32 17}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/cifs/cifs_debug.c", i32 345, i32 17}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/cifs/cifs_debug.c", i32 350, i32 17}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/cifs/cifs_debug.c", i32 353, i32 18}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/cifs/cifs_debug.c", i32 355, i32 18}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/cifs/cifs_debug.c", i32 357, i32 18}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/cifs/cifs_debug.c", i32 359, i32 18}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/cifs/cifs_debug.c", i32 361, i32 18}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/cifs/cifs_debug.c", i32 363, i32 18}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/cifs/cifs_debug.c", i32 366, i32 18}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/cifs/cifs_debug.c", i32 367, i32 17}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/cifs/cifs_debug.c", i32 374, i32 17}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/cifs/cifs_debug.c", i32 378, i32 17}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/cifs/cifs_debug.c", i32 387, i32 19}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/cifs/cifs_debug.c", i32 391, i32 20}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/cifs/cifs_debug.c", i32 393, i32 20}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/cifs/cifs_debug.c", i32 396, i32 9}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/cifs/cifs_debug.c", i32 404, i32 18}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/cifs/cifs_debug.c", i32 408, i32 18}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/cifs/cifs_debug.c", i32 410, i32 17}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/cifs/cifs_debug.c", i32 414, i32 18}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/cifs/cifs_debug.c", i32 420, i32 17}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/cifs/cifs_debug.c", i32 423, i32 19}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/cifs/cifs_debug.c", i32 428, i32 19}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/cifs/cifs_debug.c", i32 433, i32 16}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/cifs/cifs_debug.c", i32 436, i32 18}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/cifs/cifs_debug.c", i32 440, i32 17}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/cifs/cifs_debug.c", i32 446, i32 19}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/cifs/cifs_debug.c", i32 452, i32 19}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/cifs/cifs_debug.c", i32 458, i32 19}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/cifs/cifs_debug.c", i32 461, i32 18}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/cifs/cifs_debug.c", i32 466, i32 18}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/cifs/cifs_debug.c", i32 468, i32 15}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/cifs/cifs_debug.c", i32 473, i32 18}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/cifs/cifs_debug.c", i32 482, i32 17}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/cifs/cifs_debug.c", i32 485, i32 17}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/cifs/cifsglob.h", i32 1938, i32 10}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/cifs/cifsglob.h", i32 1940, i32 10}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/cifs/cifsglob.h", i32 1942, i32 10}
!224 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/cifs/cifsglob.h", i32 1944, i32 10}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/cifs/cifs_debug.c", i32 130, i32 16}
!228 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/cifs/cifs_debug.c", i32 90, i32 16}
!230 = !{ptr @.str.118, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/cifs/cifs_debug.c", i32 92, i32 17}
!232 = !{ptr @.str.119, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/cifs/cifs_debug.c", i32 93, i32 16}
!234 = !{ptr @.str.120, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/cifs/cifs_debug.c", i32 99, i32 15}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/cifs/cifs_debug.c", i32 101, i32 15}
!238 = !{ptr @.str.122, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/cifs/cifs_debug.c", i32 103, i32 17}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/cifs/cifs_debug.c", i32 105, i32 16}
!242 = !{ptr @.str.124, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/cifs/cifs_debug.c", i32 110, i32 17}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/cifs/cifs_debug.c", i32 112, i32 17}
!246 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/cifs/cifs_debug.c", i32 114, i32 17}
!248 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/cifs/cifs_debug.c", i32 118, i32 15}
!250 = !{ptr @.str.128, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/cifs/cifs_debug.c", i32 153, i32 16}
!252 = !{ptr @.str.129, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/cifs/cifs_debug.c", i32 154, i32 14}
!254 = !{ptr @.str.130, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/cifs/cifs_debug.c", i32 156, i32 15}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/cifs/cifs_debug.c", i32 158, i32 15}
!258 = !{ptr @.str.132, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/cifs/cifs_debug.c", i32 161, i32 17}
!260 = !{ptr @.str.133, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/cifs/cifs_debug.c", i32 163, i32 17}
!262 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/cifs/cifs_debug.c", i32 174, i32 14}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/cifs/cifs_debug.c", i32 175, i32 14}
!266 = !{ptr @.str.136, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/cifs/cifs_debug.c", i32 176, i32 14}
!268 = !{ptr @.str.137, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/cifs/cifs_debug.c", i32 178, i32 16}
!270 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/cifs/cifs_debug.c", i32 193, i32 7}
!272 = !{ptr @.str.139, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/cifs/cifs_debug.c", i32 202, i32 20}
!274 = !{ptr @cifs_stats_proc_ops, !275, !"cifs_stats_proc_ops", i1 false, i1 false}
!275 = !{!"../fs/cifs/cifs_debug.c", i32 644, i32 30}
!276 = !{ptr @.str.140, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/cifs/cifs_debug.c", i32 570, i32 16}
!278 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/cifs/cifs_debug.c", i32 572, i32 16}
!280 = !{ptr @.str.142, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/cifs/cifs_debug.c", i32 574, i32 16}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/cifs/cifs_debug.c", i32 577, i32 16}
!284 = !{ptr @.str.144, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/cifs/cifs_debug.c", i32 580, i32 16}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/cifs/cifs_debug.c", i32 585, i32 16}
!288 = !{ptr @.str.146, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/cifs/cifs_debug.c", i32 587, i32 3}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/cifs/cifs_debug.c", i32 591, i32 3}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/cifs/cifs_debug.c", i32 597, i32 17}
!294 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/cifs/cifs_debug.c", i32 599, i32 15}
!296 = !{ptr @.str.150, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/cifs/cifs_debug.c", i32 600, i32 17}
!298 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/cifs/cifs_debug.c", i32 601, i32 15}
!300 = !{ptr @.str.152, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/cifs/cifs_debug.c", i32 602, i32 15}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/cifs/cifs_debug.c", i32 604, i32 18}
!304 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/cifs/cifs_debug.c", i32 611, i32 19}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/cifs/cifs_debug.c", i32 623, i32 19}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/cifs/cifs_debug.c", i32 626, i32 19}
!310 = !{ptr @cifs_rdma_readwrite_threshold_proc_fops, !311, !"cifs_rdma_readwrite_threshold_proc_fops", i1 false, i1 false}
!311 = !{!"../fs/cifs/cifs_debug.c", i32 681, i32 1}
!312 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @cifs_smbd_max_frmr_depth_proc_fops, !314, !"cifs_smbd_max_frmr_depth_proc_fops", i1 false, i1 false}
!314 = !{!"../fs/cifs/cifs_debug.c", i32 682, i32 1}
!315 = !{ptr @cifs_smbd_keep_alive_interval_proc_fops, !316, !"cifs_smbd_keep_alive_interval_proc_fops", i1 false, i1 false}
!316 = !{!"../fs/cifs/cifs_debug.c", i32 683, i32 1}
!317 = !{ptr @cifs_smbd_max_receive_size_proc_fops, !318, !"cifs_smbd_max_receive_size_proc_fops", i1 false, i1 false}
!318 = !{!"../fs/cifs/cifs_debug.c", i32 684, i32 1}
!319 = !{ptr @cifs_smbd_max_fragmented_recv_size_proc_fops, !320, !"cifs_smbd_max_fragmented_recv_size_proc_fops", i1 false, i1 false}
!320 = !{!"../fs/cifs/cifs_debug.c", i32 685, i32 1}
!321 = !{ptr @cifs_smbd_max_send_size_proc_fops, !322, !"cifs_smbd_max_send_size_proc_fops", i1 false, i1 false}
!322 = !{!"../fs/cifs/cifs_debug.c", i32 686, i32 1}
!323 = !{ptr @cifs_smbd_send_credit_target_proc_fops, !324, !"cifs_smbd_send_credit_target_proc_fops", i1 false, i1 false}
!324 = !{!"../fs/cifs/cifs_debug.c", i32 687, i32 1}
!325 = !{ptr @cifs_smbd_receive_credit_max_proc_fops, !326, !"cifs_smbd_receive_credit_max_proc_fops", i1 false, i1 false}
!326 = !{!"../fs/cifs/cifs_debug.c", i32 688, i32 1}
!327 = !{ptr @cifsFYI_proc_ops, !328, !"cifsFYI_proc_ops", i1 false, i1 false}
!328 = !{!"../fs/cifs/cifs_debug.c", i32 811, i32 30}
!329 = !{ptr @cifs_linux_ext_proc_ops, !330, !"cifs_linux_ext_proc_ops", i1 false, i1 false}
!330 = !{!"../fs/cifs/cifs_debug.c", i32 842, i32 30}
!331 = !{ptr @cifs_lookup_cache_proc_ops, !332, !"cifs_lookup_cache_proc_ops", i1 false, i1 false}
!332 = !{!"../fs/cifs/cifs_debug.c", i32 873, i32 30}
!333 = !{ptr @traceSMB_proc_ops, !334, !"traceSMB_proc_ops", i1 false, i1 false}
!334 = !{!"../fs/cifs/cifs_debug.c", i32 904, i32 30}
!335 = !{ptr @cifs_security_flags_proc_ops, !336, !"cifs_security_flags_proc_ops", i1 false, i1 false}
!336 = !{!"../fs/cifs/cifs_debug.c", i32 1007, i32 30}
!337 = !{ptr @.str.158, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/cifs/cifs_debug.c", i32 914, i32 16}
!339 = !{ptr @cifs_security_flags_proc_write._rs, !340, !"_rs", i1 false, i1 false}
!340 = !{!"../fs/cifs/cifs_debug.c", i32 965, i32 4}
!341 = !{ptr @__func__.cifs_security_flags_proc_write, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.159, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @cifs_security_flags_proc_write._entry, !340, !"_entry", i1 false, i1 false}
!344 = !{ptr @cifs_security_flags_proc_write._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @cifs_security_flags_proc_write._rs.160, !346, !"_rs", i1 false, i1 false}
!346 = !{!"../fs/cifs/cifs_debug.c", i32 974, i32 3}
!347 = !{ptr @cifs_security_flags_proc_write._entry.161, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @cifs_security_flags_proc_write._entry_ptr.162, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @cifs_security_flags_proc_write._rs.163, !350, !"_rs", i1 false, i1 false}
!350 = !{!"../fs/cifs/cifs_debug.c", i32 979, i32 2}
!351 = !{ptr @.str.164, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @cifs_security_flags_proc_write.descriptor, !350, !"descriptor", i1 false, i1 false}
!353 = !{ptr @cifs_security_flags_proc_write._rs.165, !354, !"_rs", i1 false, i1 false}
!354 = !{!"../fs/cifs/cifs_debug.c", i32 982, i32 3}
!355 = !{ptr @cifs_security_flags_proc_write._entry.166, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @cifs_security_flags_proc_write._entry_ptr.167, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @cifs_security_flags_proc_write._rs.168, !358, !"_rs", i1 false, i1 false}
!358 = !{!"../fs/cifs/cifs_debug.c", i32 987, i32 3}
!359 = !{ptr @.str.170, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @cifs_security_flags_proc_write._entry.169, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @cifs_security_flags_proc_write._entry_ptr.171, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @cifs_security_flags_proc_write._rs.172, !363, !"_rs", i1 false, i1 false}
!363 = !{!"../fs/cifs/cifs_debug.c", i32 999, i32 3}
!364 = !{ptr @.str.174, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @cifs_security_flags_proc_write.descriptor.173, !363, !"descriptor", i1 false, i1 false}
!366 = !{ptr @cifs_security_flags_proc_write._rs.175, !367, !"_rs", i1 false, i1 false}
!367 = !{!"../fs/cifs/cifs_debug.c", i32 1001, i32 3}
!368 = !{ptr @.str.177, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @cifs_security_flags_proc_write.descriptor.176, !367, !"descriptor", i1 false, i1 false}
!370 = distinct !{null, !371, !"__already_done", i1 false, i1 false}
!371 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!372 = distinct !{null, !371, !"<string literal>", i1 false, i1 false}
!373 = distinct !{null, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!375 = !{ptr @.str.180, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!377 = !{ptr @cifs_mount_params_proc_ops, !378, !"cifs_mount_params_proc_ops", i1 false, i1 false}
!378 = !{!"../fs/cifs/cifs_debug.c", i32 1050, i32 30}
!379 = !{ptr @.str.181, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/cifs/cifs_debug.c", i32 1025, i32 12}
!381 = !{ptr @.str.182, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/cifs/cifs_debug.c", i32 1027, i32 12}
!383 = !{ptr @.str.183, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/cifs/cifs_debug.c", i32 1029, i32 11}
!385 = !{ptr @.str.184, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/cifs/cifs_debug.c", i32 1031, i32 11}
!387 = !{ptr @.str.185, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/cifs/cifs_debug.c", i32 1033, i32 11}
!389 = !{ptr @.str.186, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/cifs/cifs_debug.c", i32 1035, i32 11}
!391 = !{ptr @.str.187, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../fs/cifs/cifs_debug.c", i32 1037, i32 11}
!393 = !{ptr @.str.188, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/cifs/cifs_debug.c", i32 1039, i32 17}
!395 = !{!"sp"}
!396 = !{i32 1, !"wchar_size", i32 2}
!397 = !{i32 1, !"min_enum_size", i32 4}
!398 = !{i32 8, !"branch-target-enforcement", i32 0}
!399 = !{i32 8, !"sign-return-address", i32 0}
!400 = !{i32 8, !"sign-return-address-all", i32 0}
!401 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!402 = !{i32 7, !"uwtable", i32 1}
!403 = !{i32 7, !"frame-pointer", i32 2}
!404 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!405 = !{i64 2148506279, i64 2148506284, i64 2148506297, i64 2148506341, i64 2148506375, i64 2148506396}
!406 = !{i8 0, i8 2}
!407 = !{!"auto-init"}
!408 = !{i64 4689715}
!409 = !{i64 4689912}
!410 = !{i64 2152175145}
!411 = !{i64 2160394491, i64 2160394771, i64 2160395105, i64 2160395439}
!412 = !{i64 2152194160, i64 2152194185}
!413 = !{!"branch_weights", i32 2000, i32 1}
