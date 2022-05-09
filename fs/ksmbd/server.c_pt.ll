; ModuleID = '/llk/IR_all_yes/fs/ksmbd/server.c_pt.bc'
source_filename = "../fs/ksmbd/server.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.server_ctrl_struct = type { i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ksmbd_conn_ops = type { ptr, ptr }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.190 }
%union.anon.190 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.smb_version_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.192, i8, i16, i16, %union.anon.194, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.192 = type { i32 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { i32, i32 }
%struct.smb_version_cmds = type { ptr }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@server_conf = dso_local global { %struct.ksmbd_server_config, [44 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author603 = internal constant [49 x i8] c"ksmbd.author=Namjae Jeon <linkinjeon@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_version604 = internal constant [20 x i8] c"ksmbd.version=3.4.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ksmbd\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.4.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description605 = internal constant [47 x i8] c"ksmbd.description=Linux kernel CIFS/SMB SERVER\00", section ".modinfo", align 1
@__UNIQUE_ID_file606 = internal constant [26 x i8] c"ksmbd.file=fs/ksmbd/ksmbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license607 = internal constant [18 x i8] c"ksmbd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep608 = internal constant [23 x i8] c"ksmbd.softdep=pre: ecb\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep609 = internal constant [24 x i8] c"ksmbd.softdep=pre: hmac\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep610 = internal constant [23 x i8] c"ksmbd.softdep=pre: md5\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep611 = internal constant [23 x i8] c"ksmbd.softdep=pre: nls\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep612 = internal constant [23 x i8] c"ksmbd.softdep=pre: aes\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep613 = internal constant [24 x i8] c"ksmbd.softdep=pre: cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep614 = internal constant [26 x i8] c"ksmbd.softdep=pre: sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep615 = internal constant [26 x i8] c"ksmbd.softdep=pre: sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep616 = internal constant [25 x i8] c"ksmbd.softdep=pre: aead2\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep617 = internal constant [23 x i8] c"ksmbd.softdep=pre: ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep618 = internal constant [23 x i8] c"ksmbd.softdep=pre: gcm\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep619 = internal constant [25 x i8] c"ksmbd.softdep=pre: crc32\00", section ".modinfo", align 1
@__initcall__kmod_ksmbd__620_635_ksmbd_server_init6 = internal global ptr @ksmbd_server_init, section ".initcall6.init", align 4
@__exitcall_ksmbd_server_exit = internal global ptr @ksmbd_server_exit, section ".exitcall.exit", align 4
@ksmbd_debug_types = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__queue_ctrl_work.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ctrl->ctrl_work)\00", [60 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ctrl_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ctrl_lock, i64 52), ptr getelementptr (i8, ptr @ctrl_lock, i64 52) }, ptr @ctrl_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@server_ctrl_handle_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: Unknown server work type: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"server_ctrl_handle_work\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ksmbd/server.c\00", [46 x i8] zeroinitializer }, align 32
@server_ctrl_handle_work._entry_ptr = internal global ptr @server_ctrl_handle_work._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctrl_lock\00", [22 x i8] zeroinitializer }, align 32
@ksmbd_control_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.9, ptr null, ptr @ksmbd_control_class_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksmbd-control\00", [18 x i8] zeroinitializer }, align 32
@ksmbd_control_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ksmbd_control_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ksmbd_control_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ksmbd_control_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ksmbd_control_class_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @class_attr_stats, ptr @class_attr_kill_server, ptr @class_attr_debug, ptr null], [16 x i8] zeroinitializer }, align 32
@class_attr_stats = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stats_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@class_attr_kill_server = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.16, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @kill_server_store }, [36 x i8] zeroinitializer }, align 32
@class_attr_debug = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @debug_show, ptr @debug_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@stats_show.state = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"startup\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d %s %d %lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kill_server\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@kill_server_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ksmbd: kill command received\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kill_server_store\00", [46 x i8] zeroinitializer }, align 32
@kill_server_store._entry_ptr = internal global ptr @kill_server_store._entry, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@debug_type_strings = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smb\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auth\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vfs\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oplock\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipc\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conn\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@ksmbd_server_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ksmbd_server_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ksmbd: Unable to register ksmbd-control class\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksmbd_server_init\00", [46 x i8] zeroinitializer }, align 32
@ksmbd_server_init._entry_ptr = internal global ptr @ksmbd_server_init._entry, section ".printk_index", align 4
@ksmbd_server_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ksmbd_server_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014ksmbd: The ksmbd server is experimental, use at your own risk.\0A\00", [62 x i8] zeroinitializer }, align 32
@ksmbd_server_init._entry_ptr.36 = internal global ptr @ksmbd_server_init._entry.34, section ".printk_index", align 4
@queue_ksmbd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ksmbd: allocation for work failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"queue_ksmbd_work\00", [47 x i8] zeroinitializer }, align 32
@queue_ksmbd_work._entry_ptr = internal global ptr @queue_ksmbd_work._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@queue_ksmbd_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@__process_request._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 131, ptr null, ptr null }, align 1
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ksmbd: *** not implemented yet cmd = %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__process_request\00", [46 x i8] zeroinitializer }, align 32
@__process_request._entry_ptr = internal global ptr @__process_request._entry, section ".printk_index", align 4
@__process_request._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 147, ptr null, ptr null }, align 1
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016ksmbd: Failed to process %u [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@__process_request._entry_ptr.44 = internal global ptr @__process_request._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"server_conf\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 27, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 620, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"ksmbd_debug_types\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 25, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 402, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"ctrl_lock\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 385, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 39, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ksmbd_control_class\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 521, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 522, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"ksmbd_control_class_groups\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"ksmbd_control_class_group\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 519, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"ksmbd_control_class_attrs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 513, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"class_attr_stats\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"class_attr_kill_server\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"class_attr_debug\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 509, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 425, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 426, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 427, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 428, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 429, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 432, i32 41 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 510, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 442, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 445, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 511, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 469, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"debug_type_strings\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 455, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 474, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 479, i32 44 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 455, i32 51 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 455, i32 58 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 455, i32 66 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 456, i32 9 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 456, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 456, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 457, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 489, i32 24 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 548, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 550, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 588, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 280, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 297, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 131, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [21 x i8] c"../fs/ksmbd/server.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 147, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author603, ptr @__UNIQUE_ID_description605, ptr @__UNIQUE_ID_file606, ptr @__UNIQUE_ID_license607, ptr @__UNIQUE_ID_softdep608, ptr @__UNIQUE_ID_softdep609, ptr @__UNIQUE_ID_softdep610, ptr @__UNIQUE_ID_softdep611, ptr @__UNIQUE_ID_softdep612, ptr @__UNIQUE_ID_softdep613, ptr @__UNIQUE_ID_softdep614, ptr @__UNIQUE_ID_softdep615, ptr @__UNIQUE_ID_softdep616, ptr @__UNIQUE_ID_softdep617, ptr @__UNIQUE_ID_softdep618, ptr @__UNIQUE_ID_softdep619, ptr @__UNIQUE_ID_version604, ptr @__exitcall_ksmbd_server_exit, ptr @__initcall__kmod_ksmbd__620_635_ksmbd_server_init6, ptr @__modver_attr, ptr @__process_request._entry, ptr @__process_request._entry.42, ptr @__process_request._entry_ptr, ptr @__process_request._entry_ptr.44, ptr @kill_server_store._entry, ptr @kill_server_store._entry_ptr, ptr @ksmbd_server_exit, ptr @ksmbd_server_init._entry, ptr @ksmbd_server_init._entry.34, ptr @ksmbd_server_init._entry_ptr, ptr @ksmbd_server_init._entry_ptr.36, ptr @queue_ksmbd_work._entry, ptr @queue_ksmbd_work._entry_ptr, ptr @server_ctrl_handle_work._entry, ptr @server_ctrl_handle_work._entry_ptr, ptr @server_conf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ksmbd_debug_types, ptr @.str.3, ptr @ctrl_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ksmbd_control_class, ptr @.str.9, ptr @ksmbd_control_class_groups, ptr @ksmbd_control_class_group, ptr @ksmbd_control_class_attrs, ptr @class_attr_stats, ptr @class_attr_kill_server, ptr @class_attr_debug, ptr @.str.10, ptr @stats_show.state, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @debug_type_strings, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ksmbd_server_init.__key, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @queue_ksmbd_work.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @server_conf to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_debug_types to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @server_ctrl_handle_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_control_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_control_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_control_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_control_class_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_kill_server to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_debug to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_show.state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kill_server_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_type_strings to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_server_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_server_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_server_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_ksmbd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_ksmbd_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_set_netbios_name(ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %v, null
  br i1 %tobool.not.i, label %entry.___server_conf_set.exit_crit_edge, label %lor.lhs.false.i

entry.___server_conf_set.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.i = icmp eq i8 %1, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.___server_conf_set.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.___server_conf_set.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  tail call void @kfree(ptr noundef %2) #8
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %v, i32 noundef 3264) #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  %tobool8.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool8.not.i, i32 -12, i32 0
  br label %___server_conf_set.exit

___server_conf_set.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.___server_conf_set.exit_crit_edge, %entry.___server_conf_set.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.___server_conf_set.exit_crit_edge ], [ -22, %entry.___server_conf_set.exit_crit_edge ], [ %..i, %if.end4.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_set_server_string(ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %v, null
  br i1 %tobool.not.i, label %entry.___server_conf_set.exit_crit_edge, label %lor.lhs.false.i

entry.___server_conf_set.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.i = icmp eq i8 %1, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.___server_conf_set.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.___server_conf_set.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  tail call void @kfree(ptr noundef %2) #8
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %v, i32 noundef 3264) #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  %tobool8.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool8.not.i, i32 -12, i32 0
  br label %___server_conf_set.exit

___server_conf_set.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.___server_conf_set.exit_crit_edge, %entry.___server_conf_set.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.___server_conf_set.exit_crit_edge ], [ -22, %entry.___server_conf_set.exit_crit_edge ], [ %..i, %if.end4.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_set_work_group(ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %v, null
  br i1 %tobool.not.i, label %entry.___server_conf_set.exit_crit_edge, label %lor.lhs.false.i

entry.___server_conf_set.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.i = icmp eq i8 %1, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.___server_conf_set.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.___server_conf_set.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %___server_conf_set.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  tail call void @kfree(ptr noundef %2) #8
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %v, i32 noundef 3264) #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  %tobool8.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool8.not.i, i32 -12, i32 0
  br label %___server_conf_set.exit

___server_conf_set.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.___server_conf_set.exit_crit_edge, %entry.___server_conf_set.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.___server_conf_set.exit_crit_edge ], [ -22, %entry.___server_conf_set.exit_crit_edge ], [ %..i, %if.end4.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ksmbd_netbios_name() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13), align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ksmbd_server_string() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ksmbd_work_group() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @server_queue_ctrl_init_work() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__queue_ctrl_work(i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__queue_ctrl_work(i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__module_get(ptr noundef null) #8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %call7.i, align 8
  %ctrl_work = getelementptr inbounds %struct.server_ctrl_struct, ptr %call7.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %ctrl_work, i32 noundef 0) #8
  %2 = ptrtoint ptr %ctrl_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %ctrl_work, align 4
  %lockdep_map = getelementptr inbounds %struct.server_ctrl_struct, ptr %call7.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @__queue_ctrl_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.server_ctrl_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 8
  %prev.i = getelementptr inbounds %struct.server_ctrl_struct, ptr %call7.i, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.server_ctrl_struct, ptr %call7.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @server_ctrl_handle_work, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %6 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ctrl_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @server_queue_ctrl_reset_work() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__queue_ctrl_work(i32 noundef 1)
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ksmbd_server_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  store volatile i32 3, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  tail call void @class_unregister(ptr noundef nonnull @ksmbd_control_class) #8
  tail call void @ksmbd_workqueue_destroy() #8
  tail call void @ksmbd_ipc_release() #8
  tail call void @ksmbd_conn_transport_destroy() #8
  tail call void @ksmbd_crypto_destroy() #8
  tail call void @ksmbd_free_global_file_table() #8
  tail call void @destroy_lease_table(ptr noundef null) #8
  tail call void @ksmbd_work_pool_destroy() #8
  tail call void @ksmbd_exit_file_cache() #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  tail call void @kfree(ptr noundef %0) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  tail call void @kfree(ptr noundef %1) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  tail call void @kfree(ptr noundef %2) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  tail call void @ksmbd_release_inode_hash() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_inode_hash() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_server_init() #2 section ".init.text" align 64 {
entry:
  %ops.i = alloca %struct.ksmbd_conn_ops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @ksmbd_control_class, ptr noundef nonnull @ksmbd_server_init.__key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ops.i) #8
  %0 = getelementptr inbounds %struct.ksmbd_conn_ops, ptr %ops.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ksmbd_server_process_request, ptr %ops.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ksmbd_server_terminate_conn, ptr %0, align 4
  call void @ksmbd_conn_init_server_callbacks(ptr noundef nonnull %ops.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ops.i) #8
  store volatile i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 3), align 2
  %call.i = call i32 @ksmbd_min_protocol() #8
  %conv.i = trunc i32 %call.i to i16
  store i16 %conv.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  %call5.i = call i32 @ksmbd_max_protocol() #8
  %conv6.i = trunc i32 %call5.i to i16
  store i16 %conv6.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  store i32 7, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 12), align 4
  %call7 = call i32 @ksmbd_work_pool_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_unregister_crit_edge

if.end.err_unregister_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @ksmbd_init_file_cache() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_destroy_work_pools_crit_edge

if.end10.err_destroy_work_pools_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_work_pools

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @ksmbd_ipc_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_exit_file_cache_crit_edge

if.end14.err_exit_file_cache_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit_file_cache

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @ksmbd_init_global_file_table() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_ipc_release_crit_edge

if.end18.err_ipc_release_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ipc_release

if.end22:                                         ; preds = %if.end18
  %call23 = call i32 @ksmbd_inode_hash_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_destroy_file_table_crit_edge

if.end22.err_destroy_file_table_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_file_table

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @ksmbd_crypto_create() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_release_inode_hash_crit_edge

if.end26.err_release_inode_hash_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_inode_hash

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @ksmbd_workqueue_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.end, label %err_crypto_destroy

land.end:                                         ; preds = %if.end30
  %.b65 = load i1, ptr @ksmbd_server_init.__already_done, align 1
  br i1 %.b65, label %land.end.cleanup_crit_edge, label %if.then40, !prof !159

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ksmbd_server_init.__already_done, align 1
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %cleanup

err_crypto_destroy:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @ksmbd_crypto_destroy() #8
  br label %err_release_inode_hash

err_release_inode_hash:                           ; preds = %err_crypto_destroy, %if.end26.err_release_inode_hash_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.err_release_inode_hash_crit_edge ], [ %call31, %err_crypto_destroy ]
  call void @ksmbd_release_inode_hash() #8
  br label %err_destroy_file_table

err_destroy_file_table:                           ; preds = %err_release_inode_hash, %if.end22.err_destroy_file_table_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end22.err_destroy_file_table_crit_edge ], [ %ret.0, %err_release_inode_hash ]
  call void @ksmbd_free_global_file_table() #8
  br label %err_ipc_release

err_ipc_release:                                  ; preds = %err_destroy_file_table, %if.end18.err_ipc_release_crit_edge
  %ret.2 = phi i32 [ %call19, %if.end18.err_ipc_release_crit_edge ], [ %ret.1, %err_destroy_file_table ]
  call void @ksmbd_ipc_release() #8
  br label %err_exit_file_cache

err_exit_file_cache:                              ; preds = %err_ipc_release, %if.end14.err_exit_file_cache_crit_edge
  %ret.3 = phi i32 [ %call15, %if.end14.err_exit_file_cache_crit_edge ], [ %ret.2, %err_ipc_release ]
  call void @ksmbd_exit_file_cache() #8
  br label %err_destroy_work_pools

err_destroy_work_pools:                           ; preds = %err_exit_file_cache, %if.end10.err_destroy_work_pools_crit_edge
  %ret.4 = phi i32 [ %call11, %if.end10.err_destroy_work_pools_crit_edge ], [ %ret.3, %err_exit_file_cache ]
  call void @ksmbd_work_pool_destroy() #8
  br label %err_unregister

err_unregister:                                   ; preds = %err_destroy_work_pools, %if.end.err_unregister_crit_edge
  %ret.5 = phi i32 [ %call7, %if.end.err_unregister_crit_edge ], [ %ret.4, %err_destroy_work_pools ]
  call void @class_unregister(ptr noundef nonnull @ksmbd_control_class) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.then40, %land.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.5, %err_unregister ], [ 0, %if.then40 ], [ 0, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @server_ctrl_handle_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctrl_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @ksmbd_conn_transport_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call fastcc i32 @__queue_ctrl_work(i32 noundef 1) #8
  br label %sw.epilog

do.body3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  store volatile i32 1, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_ipc_soft_reset() #8
  tail call void @ksmbd_conn_transport_destroy() #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  tail call void @kfree(ptr noundef %4) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  tail call void @kfree(ptr noundef %5) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 3), align 2
  %call.i.i8 = tail call i32 @ksmbd_min_protocol() #8
  %conv.i.i = trunc i32 %call.i.i8 to i16
  store i16 %conv.i.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  %call5.i.i = tail call i32 @ksmbd_max_protocol() #8
  %conv6.i.i = trunc i32 %call5.i.i to i16
  store i16 %conv6.i.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  store i32 7, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 12), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %do.body3.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef nonnull @ctrl_lock) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  tail call void @module_put(ptr noundef null) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_transport_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_ipc_soft_reset() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_conn_transport_destroy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_min_protocol() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_max_protocol() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_workqueue_destroy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_ipc_release() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_crypto_destroy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_free_global_file_table() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_lease_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_work_pool_destroy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_exit_file_cache() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  %arrayidx = getelementptr [4 x ptr], ptr @stats_show.state, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 6), align 4
  %conv = zext i16 %3 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  %div = udiv i32 %4, 100
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef %2, i32 noundef %conv, i32 noundef %div) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kill_server_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  br i1 %call, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctrl_lock, i32 noundef 0) #8
  store volatile i32 2, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  tail call void @__module_get(ptr noundef null) #8
  tail call void @ksmbd_ipc_soft_reset() #8
  tail call void @ksmbd_conn_transport_destroy() #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  tail call void @kfree(ptr noundef %0) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 0), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  tail call void @kfree(ptr noundef %1) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  tail call void @kfree(ptr noundef %2) #8
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 13, i32 2), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 3), align 2
  %call.i.i = tail call i32 @ksmbd_min_protocol() #8
  %conv.i.i = trunc i32 %call.i.i to i16
  store i16 %conv.i.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  %call5.i.i = tail call i32 @ksmbd_max_protocol() #8
  %conv6.i.i = trunc i32 %call5.i.i to i16
  store i16 %conv6.i.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  store i32 7, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 12), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  tail call void @module_put(ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ctrl_lock) #8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %.str.22..str.21 = select i1 %tobool.not, ptr @.str.22, ptr @.str.21
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.22..str.21, ptr noundef nonnull @.str.24) #8
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  %add.ptr1.1 = getelementptr i8, ptr %buf, i32 %call4
  %sub2.1 = sub i32 4096, %call4
  %.str.22..str.21.1 = select i1 %tobool.not.1, ptr @.str.22, ptr @.str.21
  %call4.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.1, i32 noundef %sub2.1, ptr noundef nonnull %.str.22..str.21.1, ptr noundef nonnull @.str.25) #8
  %add.1 = add i32 %call4.1, %call4
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2 = icmp eq i32 %5, 0
  %add.ptr1.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub2.2 = sub i32 4096, %add.1
  %.str.22..str.21.2 = select i1 %tobool.not.2, ptr @.str.22, ptr @.str.21
  %call4.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.2, i32 noundef %sub2.2, ptr noundef nonnull %.str.22..str.21.2, ptr noundef nonnull @.str.26) #8
  %add.2 = add i32 %call4.2, %add.1
  %6 = load i32, ptr @ksmbd_debug_types, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.3 = icmp eq i32 %7, 0
  %add.ptr1.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub2.3 = sub i32 4096, %add.2
  %.str.22..str.21.3 = select i1 %tobool.not.3, ptr @.str.22, ptr @.str.21
  %call4.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.3, i32 noundef %sub2.3, ptr noundef nonnull %.str.22..str.21.3, ptr noundef nonnull @.str.27) #8
  %add.3 = add i32 %call4.3, %add.2
  %8 = load i32, ptr @ksmbd_debug_types, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4 = icmp eq i32 %9, 0
  %add.ptr1.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub2.4 = sub i32 4096, %add.3
  %.str.22..str.21.4 = select i1 %tobool.not.4, ptr @.str.22, ptr @.str.21
  %call4.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.4, i32 noundef %sub2.4, ptr noundef nonnull %.str.22..str.21.4, ptr noundef nonnull @.str.28) #8
  %add.4 = add i32 %call4.4, %add.3
  %10 = load i32, ptr @ksmbd_debug_types, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.5 = icmp eq i32 %11, 0
  %add.ptr1.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub2.5 = sub i32 4096, %add.4
  %.str.22..str.21.5 = select i1 %tobool.not.5, ptr @.str.22, ptr @.str.21
  %call4.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.5, i32 noundef %sub2.5, ptr noundef nonnull %.str.22..str.21.5, ptr noundef nonnull @.str.29) #8
  %add.5 = add i32 %call4.5, %add.4
  %12 = load i32, ptr @ksmbd_debug_types, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.6 = icmp eq i32 %13, 0
  %add.ptr1.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub2.6 = sub i32 4096, %add.5
  %.str.22..str.21.6 = select i1 %tobool.not.6, ptr @.str.22, ptr @.str.21
  %call4.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.6, i32 noundef %sub2.6, ptr noundef nonnull %.str.22..str.21.6, ptr noundef nonnull @.str.30) #8
  %add.6 = add i32 %call4.6, %add.5
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add.6
  %sub6 = sub i32 4096, %add.6
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.23) #8
  %add8 = add i32 %call7, %add.6
  ret i32 %add8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call, label %entry.if.then_crit_edge, label %if.end3

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %0)
  %cmp1 = icmp eq i32 %0, 127
  %. = select i1 %cmp1, i32 0, i32 127
  br label %for.end.sink.split

if.end3:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.24) #8
  br i1 %call4, label %if.end3.if.then5_crit_edge, label %for.inc

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.end3.6.if.then5_crit_edge, %if.end3.5.if.then5_crit_edge, %if.end3.4.if.then5_crit_edge, %if.end3.3.if.then5_crit_edge, %if.end3.2.if.then5_crit_edge, %if.end3.1.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  %i.021.lcssa22 = phi i32 [ 0, %if.end3.if.then5_crit_edge ], [ 1, %if.end3.1.if.then5_crit_edge ], [ 2, %if.end3.2.if.then5_crit_edge ], [ 3, %if.end3.3.if.then5_crit_edge ], [ 4, %if.end3.4.if.then5_crit_edge ], [ 5, %if.end3.5.if.then5_crit_edge ], [ 6, %if.end3.6.if.then5_crit_edge ]
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %shl = shl nuw nsw i32 1, %i.021.lcssa22
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %and8 = and i32 %1, %neg
  br label %for.end.sink.split

if.else9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %1, %shl
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.end3
  %call.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.1, label %for.inc.if.then_crit_edge, label %if.end3.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.1:                                        ; preds = %for.inc
  %call4.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.25) #8
  br i1 %call4.1, label %if.end3.1.if.then5_crit_edge, label %for.inc.1

if.end3.1.if.then5_crit_edge:                     ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.inc.1:                                        ; preds = %if.end3.1
  %call.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.2, label %for.inc.1.if.then_crit_edge, label %if.end3.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.2:                                        ; preds = %for.inc.1
  %call4.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #8
  br i1 %call4.2, label %if.end3.2.if.then5_crit_edge, label %for.inc.2

if.end3.2.if.then5_crit_edge:                     ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.inc.2:                                        ; preds = %if.end3.2
  %call.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.3, label %for.inc.2.if.then_crit_edge, label %if.end3.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.3:                                        ; preds = %for.inc.2
  %call4.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.27) #8
  br i1 %call4.3, label %if.end3.3.if.then5_crit_edge, label %for.inc.3

if.end3.3.if.then5_crit_edge:                     ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.inc.3:                                        ; preds = %if.end3.3
  %call.4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.4, label %for.inc.3.if.then_crit_edge, label %if.end3.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.4:                                        ; preds = %for.inc.3
  %call4.4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.28) #8
  br i1 %call4.4, label %if.end3.4.if.then5_crit_edge, label %for.inc.4

if.end3.4.if.then5_crit_edge:                     ; preds = %if.end3.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.inc.4:                                        ; preds = %if.end3.4
  %call.5 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.5, label %for.inc.4.if.then_crit_edge, label %if.end3.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.5:                                        ; preds = %for.inc.4
  %call4.5 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.29) #8
  br i1 %call4.5, label %if.end3.5.if.then5_crit_edge, label %for.inc.5

if.end3.5.if.then5_crit_edge:                     ; preds = %if.end3.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.inc.5:                                        ; preds = %if.end3.5
  %call.6 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.31) #8
  br i1 %call.6, label %for.inc.5.if.then_crit_edge, label %if.end3.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.6:                                        ; preds = %for.inc.5
  %call4.6 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.30) #8
  br i1 %call4.6, label %if.end3.6.if.then5_crit_edge, label %if.end3.6.for.end_crit_edge

if.end3.6.for.end_crit_edge:                      ; preds = %if.end3.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end3.6.if.then5_crit_edge:                     ; preds = %if.end3.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.end.sink.split:                               ; preds = %if.else9, %if.then6, %if.then
  %and8.sink = phi i32 [ %and8, %if.then6 ], [ %or, %if.else9 ], [ %., %if.then ]
  store i32 %and8.sink, ptr @ksmbd_debug_types, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %if.end3.6.for.end_crit_edge
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_work_pool_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_init_file_cache() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_ipc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_init_global_file_table() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ksmbd_inode_hash_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_crypto_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_workqueue_init() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_server_process_request(ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ksmbd_alloc_work_struct() #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %queue_ksmbd_work.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %conn, ptr %call.i, align 8
  %request_buf.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 7
  %1 = ptrtoint ptr %request_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_buf.i, align 4
  %request_buf3.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %request_buf3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %request_buf3.i, align 4
  store ptr null, ptr %request_buf.i, align 4
  %call5.i = tail call i32 @ksmbd_init_smb_server(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_free_work_struct(ptr noundef nonnull %call.i) #8
  br label %queue_ksmbd_work.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_conn_enqueue_request(ptr noundef nonnull %call.i) #8
  %r_count.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %r_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count.i, ptr %r_count.i, i32 1, ptr elementtype(i32) %r_count.i) #8, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_active.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %last_active.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_active.i, align 8
  %work10.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %work10.i, i32 noundef 0) #8
  %7 = ptrtoint ptr %work10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work10.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @queue_ksmbd_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry14.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry14.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 23, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @handle_ksmbd_work, ptr %func.i, align 4
  %call18.i = tail call zeroext i1 @ksmbd_queue_work(ptr noundef nonnull %call.i) #8
  br label %queue_ksmbd_work.exit

queue_ksmbd_work.exit:                            ; preds = %if.end8.i, %if.then7.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %if.then7.i ], [ 0, %if.end8.i ], [ -12, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksmbd_server_terminate_conn(ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ksmbd_sessions_deregister(ptr noundef %conn) #8
  tail call void @destroy_lease_table(ptr noundef %conn) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_conn_init_server_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_alloc_work_struct() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_init_smb_server(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_free_work_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_conn_enqueue_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_ksmbd_work(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -100
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %request_served = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 23, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_served, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %request_served) #8
  %ops.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %allocate_rsp_buf.i = getelementptr inbounds %struct.smb_version_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %allocate_rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allocate_rsp_buf.i, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__handle_ksmbd_work.exit_crit_edge

entry.__handle_ksmbd_work.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__handle_ksmbd_work.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %is_transform_hdr.i = getelementptr inbounds %struct.smb_version_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %is_transform_hdr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_transform_hdr.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %request_buf.i = getelementptr i8, ptr %wk, i32 -88
  %10 = ptrtoint ptr %request_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_buf.i, align 4
  %call5.i = tail call zeroext i1 %9(ptr noundef %11) #8
  br i1 %call5.i, label %if.then6.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %decrypt_req.i = getelementptr inbounds %struct.smb_version_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %decrypt_req.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %decrypt_req.i, align 4
  %call8.i = tail call i32 %15(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.then6.i.send.preheader.sink.split.sink.split.i_crit_edge, label %if.end11.i

if.then6.i.send.preheader.sink.split.sink.split.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send.preheader.sink.split.sink.split.i

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %encrypted.i = getelementptr i8, ptr %wk, i32 -19
  %16 = ptrtoint ptr %encrypted.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %encrypted.i, align 1
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %encrypted.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end11.i, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %init_rsp_hdr.i = getelementptr inbounds %struct.smb_version_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %init_rsp_hdr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_rsp_hdr.i, align 4
  %call14.i = tail call i32 %20(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  br i1 %tobool15.not.i, label %if.end19.i, label %if.end12.i.send.preheader.sink.split.i_crit_edge

if.end12.i.send.preheader.sink.split.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send.preheader.sink.split.i

if.end19.i:                                       ; preds = %if.end12.i
  %check_user_session.i = getelementptr inbounds %struct.smb_version_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %check_user_session.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %check_user_session.i, align 4
  %tobool21.not.i = icmp eq ptr %24, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end43.i_crit_edge, label %if.then22.i

if.end19.i.if.end43.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then22.i:                                      ; preds = %if.end19.i
  %call25.i = tail call i32 %24(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call29.i = tail call zeroext i16 %28(ptr noundef %add.ptr) #8
  br label %send.preheader.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp32.not.i = icmp eq i32 %call25.i, 0
  br i1 %cmp32.not.i, label %if.else.i.if.end43.i_crit_edge, label %if.then33.i

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then33.i:                                      ; preds = %if.else.i
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %get_ksmbd_tcon.i = getelementptr inbounds %struct.smb_version_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %get_ksmbd_tcon.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_ksmbd_tcon.i, align 4
  %call35.i = tail call i32 %32(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then33.i.send.preheader.sink.split.sink.split.i_crit_edge, label %if.then33.i.if.end43.i_crit_edge

if.then33.i.if.end43.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then33.i.send.preheader.sink.split.sink.split.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send.preheader.sink.split.sink.split.i

if.end43.i:                                       ; preds = %if.then33.i.if.end43.i_crit_edge, %if.else.i.if.end43.i_crit_edge, %if.end19.i.if.end43.i_crit_edge
  %max_cmds.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 3
  %cmds10.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 2
  %sess.i.i = getelementptr i8, ptr %wk, i32 -96
  %send_no_response.i.i = getelementptr i8, ptr %wk, i32 -19
  %response_buf.i.i.i = getelementptr i8, ptr %wk, i32 -84
  %credits_lock.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 17
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end43.i
  %command.0.i = phi i16 [ 0, %if.end43.i ], [ %command.3172.i, %do.cond.i.do.body.i_crit_edge ]
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %status.i.i.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i.i.i.i, align 4
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch.i.i.i = icmp eq i32 %37, 2
  br i1 %switch.i.i.i, label %check_conn_state.exit.i.i, label %if.end.i.i

check_conn_state.exit.i.i:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %response_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %response_buf.i.i.i, align 8
  %Status.i.i.i = getelementptr inbounds %struct.smb_hdr, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %Status.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 201457856, ptr %Status.i.i.i, align 1
  br label %if.end47.i

if.end.i.i:                                       ; preds = %do.body.i
  %call1.i.i = tail call i32 @ksmbd_verify_smb_message(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call5.i.i = tail call zeroext i16 %44(ptr noundef %add.ptr) #8
  %conv102.i.i = zext i16 %call5.i.i to i32
  %45 = ptrtoint ptr %max_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_cmds.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv102.i.i)
  %cmp.not103.i.i = icmp ugt i32 %46, %conv102.i.i
  br i1 %cmp.not103.i.i, label %if.end4.i.i.if.end9.i.i_crit_edge, label %if.end4.i.i.if.then7.i.i_crit_edge

if.end4.i.i.if.then7.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i

if.end4.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end4.i.i
  br label %if.end9.i.i

andx_again.i.i:                                   ; preds = %if.else.i.i
  %conv59.i.i = trunc i32 %call39.i.i to i16
  %conv.i.i = and i32 %call39.i.i, 65535
  %47 = ptrtoint ptr %max_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_cmds.i.i, align 4
  %cmp.not.i.i = icmp ugt i32 %48, %conv.i.i
  br i1 %cmp.not.i.i, label %andx_again.i.i.if.end9.i.i_crit_edge, label %if.then7.i.i.loopexit

andx_again.i.i.if.end9.i.i_crit_edge:             ; preds = %andx_again.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then7.i.i.loopexit:                            ; preds = %andx_again.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv59.i.i.le = trunc i32 %call39.i.i to i16
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.then7.i.i.loopexit, %if.end4.i.i.if.then7.i.i_crit_edge
  %command.1.i = phi i16 [ %call5.i.i, %if.end4.i.i.if.then7.i.i_crit_edge ], [ %conv59.i.i.le, %if.then7.i.i.loopexit ]
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %set_rsp_status.i.i = getelementptr inbounds %struct.smb_version_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %set_rsp_status.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_rsp_status.i.i, align 4
  tail call void %52(ptr noundef %add.ptr, i32 noundef 218104000) #8
  br label %if.end47.i

if.end9.i.i:                                      ; preds = %andx_again.i.i.if.end9.i.i_crit_edge, %if.end4.i.i.if.end9.i.i_crit_edge
  %command.2.i = phi i16 [ %conv59.i.i, %andx_again.i.i.if.end9.i.i_crit_edge ], [ %call5.i.i, %if.end4.i.i.if.end9.i.i_crit_edge ]
  %conv104.i.i = phi i32 [ %conv.i.i, %andx_again.i.i.if.end9.i.i_crit_edge ], [ %conv102.i.i, %if.end4.i.i.if.end9.i.i_crit_edge ]
  %53 = ptrtoint ptr %cmds10.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmds10.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.smb_version_cmds, ptr %54, i32 %conv104.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %56, null
  br i1 %tobool11.not.i.i, label %do.body.i.i, label %if.end23.i.i

do.body.i.i:                                      ; preds = %if.end9.i.i
  %57 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not.i.i, label %do.body.i.i.do.end20.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end20.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv104.i.i) #12
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end20.i.i_crit_edge
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %set_rsp_status22.i.i = getelementptr inbounds %struct.smb_version_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %set_rsp_status22.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_rsp_status22.i.i, align 4
  tail call void %61(ptr noundef %add.ptr, i32 noundef 33554624) #8
  br label %if.end47.i

if.end23.i.i:                                     ; preds = %if.end9.i.i
  %62 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sess.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %63, null
  br i1 %tobool24.not.i.i, label %if.end23.i.i.if.end37.i.i_crit_edge, label %land.lhs.true.i.i

if.end23.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

land.lhs.true.i.i:                                ; preds = %if.end23.i.i
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %is_sign_req.i.i = getelementptr inbounds %struct.smb_version_ops, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %is_sign_req.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %is_sign_req.i.i, align 4
  %call27.i.i = tail call zeroext i1 %67(ptr noundef %add.ptr, i32 noundef %conv104.i.i) #8
  br i1 %call27.i.i, label %if.then29.i.i, label %land.lhs.true.i.i.if.end37.i.i_crit_edge

land.lhs.true.i.i.if.end37.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true.i.i
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %check_sign_req.i.i = getelementptr inbounds %struct.smb_version_ops, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %check_sign_req.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %check_sign_req.i.i, align 4
  %call31.i.i = tail call i32 %71(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then33.i.i, label %if.then29.i.i.if.end37.i.i_crit_edge

if.then29.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then33.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %set_rsp_status35.i.i = getelementptr inbounds %struct.smb_version_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %set_rsp_status35.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_rsp_status35.i.i, align 4
  tail call void %75(ptr noundef %add.ptr, i32 noundef 570425536) #8
  br label %if.end47.i

if.end37.i.i:                                     ; preds = %if.then29.i.i.if.end37.i.i_crit_edge, %land.lhs.true.i.i.if.end37.i.i_crit_edge, %if.end23.i.i.if.end37.i.i_crit_edge
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %call39.i.i = tail call i32 %77(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp40.i.i = icmp slt i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %do.body43.i.i, label %if.else.i.i

do.body43.i.i:                                    ; preds = %if.end37.i.i
  %78 = load i32, ptr @ksmbd_debug_types, align 4
  %and44.i.i = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.not.i.i = icmp eq i32 %and44.i.i, 0
  br i1 %tobool45.not.i.i, label %do.body43.i.i.__process_request.exit.i_crit_edge, label %do.end49.i.i

do.body43.i.i.__process_request.exit.i_crit_edge: ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__process_request.exit.i

do.end49.i.i:                                     ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv104.i.i, i32 noundef %call39.i.i) #12
  br label %__process_request.exit.i

if.else.i.i:                                      ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp56.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %cmp56.not.i.i, label %if.else.i.i.__process_request.exit.i_crit_edge, label %andx_again.i.i

if.else.i.i.__process_request.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__process_request.exit.i

__process_request.exit.i:                         ; preds = %if.else.i.i.__process_request.exit.i_crit_edge, %do.end49.i.i, %do.body43.i.i.__process_request.exit.i_crit_edge
  %79 = ptrtoint ptr %send_no_response.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i.i = load i8, ptr %send_no_response.i.i, align 1
  %80 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp45.not.i = icmp eq i8 %80, 0
  br i1 %cmp45.not.i, label %__process_request.exit.i.if.end47.i_crit_edge, label %__process_request.exit.i.do.end.i_crit_edge

__process_request.exit.i.do.end.i_crit_edge:      ; preds = %__process_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

__process_request.exit.i.if.end47.i_crit_edge:    ; preds = %__process_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.end47.i:                                       ; preds = %__process_request.exit.i.if.end47.i_crit_edge, %if.then33.i.i, %do.end20.i.i, %if.then7.i.i, %check_conn_state.exit.i.i
  %command.3172.i = phi i16 [ %command.2.i, %__process_request.exit.i.if.end47.i_crit_edge ], [ %command.2.i, %if.then33.i.i ], [ %command.1.i, %if.then7.i.i ], [ %command.2.i, %do.end20.i.i ], [ %command.0.i, %check_conn_state.exit.i.i ]
  %81 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i, align 4
  %set_rsp_credits.i = getelementptr inbounds %struct.smb_version_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %set_rsp_credits.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_rsp_credits.i, align 4
  %tobool49.not.i = icmp eq ptr %84, null
  br i1 %tobool49.not.i, label %if.end47.i.if.end60.i_crit_edge, label %if.then50.i

if.end47.i.if.end60.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then50.i:                                      ; preds = %if.end47.i
  tail call void @_raw_spin_lock(ptr noundef %credits_lock.i) #8
  %85 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i, align 4
  %set_rsp_credits52.i = getelementptr inbounds %struct.smb_version_ops, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %set_rsp_credits52.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_rsp_credits52.i, align 4
  %call53.i = tail call i32 %88(ptr noundef %add.ptr) #8
  tail call void @_raw_spin_unlock(ptr noundef %credits_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp55.i = icmp slt i32 %call53.i, 0
  br i1 %cmp55.i, label %if.then50.i.send.preheader.sink.split.sink.split.i_crit_edge, label %if.then50.i.if.end60.i_crit_edge

if.then50.i.if.end60.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then50.i.send.preheader.sink.split.sink.split.i_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send.preheader.sink.split.sink.split.i

if.end60.i:                                       ; preds = %if.then50.i.if.end60.i_crit_edge, %if.end47.i.if.end60.i_crit_edge
  %89 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sess.i.i, align 4
  %tobool61.not.i = icmp eq ptr %90, null
  br i1 %tobool61.not.i, label %if.end60.i.do.cond.i_crit_edge, label %land.lhs.true62.i

if.end60.i.do.cond.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

land.lhs.true62.i:                                ; preds = %if.end60.i
  %sign.i = getelementptr inbounds %struct.ksmbd_session, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sign.i, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool64.not.i = icmp eq i8 %92, 0
  br i1 %tobool64.not.i, label %lor.lhs.false.i, label %land.lhs.true62.i.if.then70.i_crit_edge

land.lhs.true62.i.if.then70.i_crit_edge:          ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true62.i
  %call65.i = tail call zeroext i1 @smb3_11_final_sess_setup_resp(ptr noundef %add.ptr) #8
  br i1 %call65.i, label %lor.lhs.false.i.if.then70.i_crit_edge, label %lor.lhs.false66.i

lor.lhs.false.i.if.then70.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i

lor.lhs.false66.i:                                ; preds = %lor.lhs.false.i
  %93 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i, align 4
  %is_sign_req.i = getelementptr inbounds %struct.smb_version_ops, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %is_sign_req.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %is_sign_req.i, align 4
  %conv.i = zext i16 %command.3172.i to i32
  %call68.i = tail call zeroext i1 %96(ptr noundef %add.ptr, i32 noundef %conv.i) #8
  br i1 %call68.i, label %lor.lhs.false66.i.if.then70.i_crit_edge, label %lor.lhs.false66.i.do.cond.i_crit_edge

lor.lhs.false66.i.do.cond.i_crit_edge:            ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

lor.lhs.false66.i.if.then70.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i

if.then70.i:                                      ; preds = %lor.lhs.false66.i.if.then70.i_crit_edge, %lor.lhs.false.i.if.then70.i_crit_edge, %land.lhs.true62.i.if.then70.i_crit_edge
  %97 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i, align 4
  %set_sign_rsp.i = getelementptr inbounds %struct.smb_version_ops, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %set_sign_rsp.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_sign_rsp.i, align 4
  tail call void %100(ptr noundef %add.ptr) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then70.i, %lor.lhs.false66.i.do.cond.i_crit_edge, %if.end60.i.do.cond.i_crit_edge
  %call73.i = tail call zeroext i1 @is_chained_smb2_message(ptr noundef %add.ptr) #8
  br i1 %call73.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.do.end.i_crit_edge

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %__process_request.exit.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge
  %101 = ptrtoint ptr %send_no_response.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load74.i = load i8, ptr %send_no_response.i.i, align 1
  %102 = and i8 %bf.load74.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %bf.cast.not.i = icmp eq i8 %102, 0
  br i1 %bf.cast.not.i, label %do.end.i.send.preheader.i_crit_edge, label %do.end.i.__handle_ksmbd_work.exit_crit_edge

do.end.i.__handle_ksmbd_work.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__handle_ksmbd_work.exit

do.end.i.send.preheader.i_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send.preheader.i

send.preheader.sink.split.sink.split.i:           ; preds = %if.then50.i.send.preheader.sink.split.sink.split.i_crit_edge, %if.then33.i.send.preheader.sink.split.sink.split.i_crit_edge, %if.then27.i, %if.then6.i.send.preheader.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i32 [ 50462912, %if.then27.i ], [ 1040187584, %if.then6.i.send.preheader.sink.split.sink.split.i_crit_edge ], [ -922746688, %if.then33.i.send.preheader.sink.split.sink.split.i_crit_edge ], [ 218104000, %if.then50.i.send.preheader.sink.split.sink.split.i_crit_edge ]
  %103 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i, align 4
  br label %send.preheader.sink.split.i

send.preheader.sink.split.i:                      ; preds = %send.preheader.sink.split.sink.split.i, %if.end12.i.send.preheader.sink.split.i_crit_edge
  %.sink214.i = phi ptr [ %22, %if.end12.i.send.preheader.sink.split.i_crit_edge ], [ %104, %send.preheader.sink.split.sink.split.i ]
  %.sink.i = phi i32 [ 134217920, %if.end12.i.send.preheader.sink.split.i_crit_edge ], [ %.sink.ph.i, %send.preheader.sink.split.sink.split.i ]
  %set_rsp_status.i = getelementptr inbounds %struct.smb_version_ops, ptr %.sink214.i, i32 0, i32 2
  %105 = ptrtoint ptr %set_rsp_status.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_rsp_status.i, align 4
  tail call void %106(ptr noundef %add.ptr, i32 noundef %.sink.i) #8
  br label %send.preheader.i

send.preheader.i:                                 ; preds = %send.preheader.sink.split.i, %do.end.i.send.preheader.i_crit_edge
  %encrypted85.i = getelementptr i8, ptr %wk, i32 -19
  tail call void @smb3_preauth_hash_rsp(ptr noundef %add.ptr) #8
  %sess78.i = getelementptr i8, ptr %wk, i32 -96
  %107 = ptrtoint ptr %sess78.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sess78.i, align 4
  %tobool79.not189.i = icmp eq ptr %108, null
  br i1 %tobool79.not189.i, label %send.preheader.i.if.end104.i_crit_edge, label %send.preheader.i.land.lhs.true80.i_crit_edge

send.preheader.i.land.lhs.true80.i_crit_edge:     ; preds = %send.preheader.i
  br label %land.lhs.true80.i

send.preheader.i.if.end104.i_crit_edge:           ; preds = %send.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

land.lhs.true80.i:                                ; preds = %if.then100.i.land.lhs.true80.i_crit_edge, %send.preheader.i.land.lhs.true80.i_crit_edge
  %109 = phi ptr [ %123, %if.then100.i.land.lhs.true80.i_crit_edge ], [ %108, %send.preheader.i.land.lhs.true80.i_crit_edge ]
  %enc.i = getelementptr inbounds %struct.ksmbd_session, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %enc.i, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool82.not.i = icmp eq i8 %111, 0
  br i1 %tobool82.not.i, label %land.lhs.true80.i.if.end104.i_crit_edge, label %land.lhs.true84.i

land.lhs.true80.i.if.end104.i_crit_edge:          ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

land.lhs.true84.i:                                ; preds = %land.lhs.true80.i
  %112 = ptrtoint ptr %encrypted85.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load86.i = load i8, ptr %encrypted85.i, align 1
  %113 = and i8 %bf.load86.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %bf.cast89.not.i = icmp eq i8 %113, 0
  br i1 %bf.cast89.not.i, label %land.lhs.true84.i.if.end104.i_crit_edge, label %land.lhs.true91.i

land.lhs.true84.i.if.end104.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

land.lhs.true91.i:                                ; preds = %land.lhs.true84.i
  %114 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i, align 4
  %encrypt_resp.i = getelementptr inbounds %struct.smb_version_ops, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %encrypt_resp.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %encrypt_resp.i, align 4
  %tobool93.not.i = icmp eq ptr %117, null
  br i1 %tobool93.not.i, label %land.lhs.true91.i.if.end104.i_crit_edge, label %if.then94.i

land.lhs.true91.i.if.end104.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then94.i:                                      ; preds = %land.lhs.true91.i
  %call97.i = tail call i32 %117(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %cmp98.i = icmp slt i32 %call97.i, 0
  br i1 %cmp98.i, label %if.then100.i, label %if.then94.i.if.end104.i_crit_edge

if.then94.i.if.end104.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then100.i:                                     ; preds = %if.then94.i
  %118 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i, align 4
  %set_rsp_status102.i = getelementptr inbounds %struct.smb_version_ops, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %set_rsp_status102.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_rsp_status102.i, align 4
  tail call void %121(ptr noundef %add.ptr, i32 noundef 1040187584) #8
  tail call void @smb3_preauth_hash_rsp(ptr noundef %add.ptr) #8
  %122 = ptrtoint ptr %sess78.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sess78.i, align 4
  %tobool79.not.i = icmp eq ptr %123, null
  br i1 %tobool79.not.i, label %if.then100.i.if.end104.i_crit_edge, label %if.then100.i.land.lhs.true80.i_crit_edge

if.then100.i.land.lhs.true80.i_crit_edge:         ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true80.i

if.then100.i.if.end104.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then100.i.if.end104.i_crit_edge, %if.then94.i.if.end104.i_crit_edge, %land.lhs.true91.i.if.end104.i_crit_edge, %land.lhs.true84.i.if.end104.i_crit_edge, %land.lhs.true80.i.if.end104.i_crit_edge, %send.preheader.i.if.end104.i_crit_edge
  %call105.i = tail call i32 @ksmbd_conn_write(ptr noundef %add.ptr) #8
  br label %__handle_ksmbd_work.exit

__handle_ksmbd_work.exit:                         ; preds = %if.end104.i, %do.end.i.__handle_ksmbd_work.exit_crit_edge, %entry.__handle_ksmbd_work.exit_crit_edge
  %call = tail call i32 @ksmbd_conn_try_dequeue_request(ptr noundef %add.ptr) #8
  tail call void @ksmbd_free_work_struct(ptr noundef %add.ptr) #8
  %r_count = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 14
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %r_count, i32 1, i32 3, i32 1) #8
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_count, ptr %r_count, i32 1, ptr elementtype(i32) %r_count) #8, !srcloc !162
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ksmbd_queue_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_try_dequeue_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smb3_11_final_sess_setup_resp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_chained_smb2_message(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb3_preauth_hash_rsp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_conn_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_verify_smb_message(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_sessions_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !91, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__UNIQUE_ID_author603, !1, !"__UNIQUE_ID_author603", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/server.c", i32 619, i32 1}
!2 = !{ptr @__UNIQUE_ID_version604, !3, !"__UNIQUE_ID_version604", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/server.c", i32 620, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description605, !9, !"__UNIQUE_ID_description605", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/server.c", i32 621, i32 1}
!10 = !{ptr @__UNIQUE_ID_file606, !11, !"__UNIQUE_ID_file606", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/server.c", i32 622, i32 1}
!12 = !{ptr @__UNIQUE_ID_license607, !11, !"__UNIQUE_ID_license607", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_softdep608, !14, !"__UNIQUE_ID_softdep608", i1 false, i1 false}
!14 = !{!"../fs/ksmbd/server.c", i32 623, i32 1}
!15 = !{ptr @__UNIQUE_ID_softdep609, !16, !"__UNIQUE_ID_softdep609", i1 false, i1 false}
!16 = !{!"../fs/ksmbd/server.c", i32 624, i32 1}
!17 = !{ptr @__UNIQUE_ID_softdep610, !18, !"__UNIQUE_ID_softdep610", i1 false, i1 false}
!18 = !{!"../fs/ksmbd/server.c", i32 625, i32 1}
!19 = !{ptr @__UNIQUE_ID_softdep611, !20, !"__UNIQUE_ID_softdep611", i1 false, i1 false}
!20 = !{!"../fs/ksmbd/server.c", i32 626, i32 1}
!21 = !{ptr @__UNIQUE_ID_softdep612, !22, !"__UNIQUE_ID_softdep612", i1 false, i1 false}
!22 = !{!"../fs/ksmbd/server.c", i32 627, i32 1}
!23 = !{ptr @__UNIQUE_ID_softdep613, !24, !"__UNIQUE_ID_softdep613", i1 false, i1 false}
!24 = !{!"../fs/ksmbd/server.c", i32 628, i32 1}
!25 = !{ptr @__UNIQUE_ID_softdep614, !26, !"__UNIQUE_ID_softdep614", i1 false, i1 false}
!26 = !{!"../fs/ksmbd/server.c", i32 629, i32 1}
!27 = !{ptr @__UNIQUE_ID_softdep615, !28, !"__UNIQUE_ID_softdep615", i1 false, i1 false}
!28 = !{!"../fs/ksmbd/server.c", i32 630, i32 1}
!29 = !{ptr @__UNIQUE_ID_softdep616, !30, !"__UNIQUE_ID_softdep616", i1 false, i1 false}
!30 = !{!"../fs/ksmbd/server.c", i32 631, i32 1}
!31 = !{ptr @__UNIQUE_ID_softdep617, !32, !"__UNIQUE_ID_softdep617", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/server.c", i32 632, i32 1}
!33 = !{ptr @__UNIQUE_ID_softdep618, !34, !"__UNIQUE_ID_softdep618", i1 false, i1 false}
!34 = !{!"../fs/ksmbd/server.c", i32 633, i32 1}
!35 = !{ptr @__UNIQUE_ID_softdep619, !36, !"__UNIQUE_ID_softdep619", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/server.c", i32 634, i32 1}
!37 = !{ptr @__initcall__kmod_ksmbd__620_635_ksmbd_server_init6, !38, !"__initcall__kmod_ksmbd__620_635_ksmbd_server_init6", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/server.c", i32 635, i32 1}
!39 = !{ptr @__exitcall_ksmbd_server_exit, !40, !"__exitcall_ksmbd_server_exit", i1 false, i1 false}
!40 = !{!"../fs/ksmbd/server.c", i32 636, i32 1}
!41 = !{ptr @ksmbd_debug_types, !42, !"ksmbd_debug_types", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/server.c", i32 25, i32 5}
!43 = !{ptr @server_conf, !44, !"server_conf", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/server.c", i32 27, i32 28}
!45 = !{ptr @__queue_ctrl_work.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/ksmbd/server.c", i32 402, i32 2}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/server.c", i32 385, i32 3}
!50 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @server_ctrl_handle_work._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @server_ctrl_handle_work._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ksmbd/server.c", i32 39, i32 8}
!56 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ctrl_lock, !55, !"ctrl_lock", i1 false, i1 false}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ksmbd/server.c", i32 522, i32 11}
!60 = !{ptr @ksmbd_control_class, !61, !"ksmbd_control_class", i1 false, i1 false}
!61 = !{!"../fs/ksmbd/server.c", i32 521, i32 21}
!62 = !{ptr @ksmbd_control_class_groups, !63, !"ksmbd_control_class_groups", i1 false, i1 false}
!63 = !{!"../fs/ksmbd/server.c", i32 519, i32 1}
!64 = !{ptr @ksmbd_control_class_group, !63, !"ksmbd_control_class_group", i1 false, i1 false}
!65 = !{ptr @ksmbd_control_class_attrs, !66, !"ksmbd_control_class_attrs", i1 false, i1 false}
!66 = !{!"../fs/ksmbd/server.c", i32 513, i32 26}
!67 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ksmbd/server.c", i32 509, i32 8}
!69 = !{ptr @class_attr_stats, !68, !"class_attr_stats", i1 false, i1 false}
!70 = distinct !{null, !71, !"stats_version", i1 false, i1 false}
!71 = !{!"../fs/ksmbd/server.c", i32 424, i32 13}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ksmbd/server.c", i32 426, i32 3}
!74 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ksmbd/server.c", i32 427, i32 3}
!76 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ksmbd/server.c", i32 428, i32 3}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ksmbd/server.c", i32 429, i32 3}
!80 = !{ptr @stats_show.state, !81, !"state", i1 false, i1 false}
!81 = !{!"../fs/ksmbd/server.c", i32 425, i32 28}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ksmbd/server.c", i32 432, i32 41}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ksmbd/server.c", i32 510, i32 8}
!86 = !{ptr @class_attr_kill_server, !85, !"class_attr_kill_server", i1 false, i1 false}
!87 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ksmbd/server.c", i32 442, i32 24}
!89 = !{ptr @.str.18, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ksmbd/server.c", i32 445, i32 2}
!91 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @kill_server_store._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @kill_server_store._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ksmbd/server.c", i32 511, i32 8}
!96 = !{ptr @class_attr_debug, !95, !"class_attr_debug", i1 false, i1 false}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ksmbd/server.c", i32 469, i32 6}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ksmbd/server.c", i32 474, i32 6}
!101 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ksmbd/server.c", i32 479, i32 44}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ksmbd/server.c", i32 455, i32 51}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ksmbd/server.c", i32 455, i32 58}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ksmbd/server.c", i32 455, i32 66}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ksmbd/server.c", i32 456, i32 9}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ksmbd/server.c", i32 456, i32 19}
!113 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ksmbd/server.c", i32 456, i32 26}
!115 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ksmbd/server.c", i32 457, i32 9}
!117 = !{ptr @debug_type_strings, !118, !"debug_type_strings", i1 false, i1 false}
!118 = !{!"../fs/ksmbd/server.c", i32 455, i32 27}
!119 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ksmbd/server.c", i32 489, i32 24}
!121 = !{ptr @ksmbd_server_init.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../fs/ksmbd/server.c", i32 548, i32 8}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ksmbd/server.c", i32 550, i32 3}
!125 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ksmbd_server_init._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ksmbd_server_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../fs/ksmbd/server.c", i32 588, i32 2}
!130 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ksmbd_server_init._entry.34, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @ksmbd_server_init._entry_ptr.36, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ksmbd/server.c", i32 280, i32 3}
!135 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @queue_ksmbd_work._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @queue_ksmbd_work._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @queue_ksmbd_work.__key, !139, !"__key", i1 false, i1 false}
!139 = !{!"../fs/ksmbd/server.c", i32 297, i32 2}
!140 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ksmbd/server.c", i32 131, i32 3}
!143 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__process_request._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @__process_request._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ksmbd/server.c", i32 147, i32 3}
!148 = !{ptr @__process_request._entry.42, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @__process_request._entry_ptr.44, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2148711045, i64 2148711071, i64 2148711100, i64 2148711134, i64 2148711165, i64 2148711188}
!161 = !{i8 0, i8 2}
!162 = !{i64 2148713510, i64 2148713536, i64 2148713565, i64 2148713599, i64 2148713630, i64 2148713653}
