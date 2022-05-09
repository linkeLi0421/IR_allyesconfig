; ModuleID = '/llk/IR_all_yes/fs/cifs/cifsencrypt.c_pt.bc'
source_filename = "../fs/cifs/cifsencrypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.UniCaseRange = type { i16, i16, ptr }
%struct.smb_rqst = type { ptr, i32, ptr, i32, i32, i32, i32 }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.kvec = type { ptr, i32 }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.154, i8, i16, i16, %union.anon.156, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.154 = type { i32 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.smb_com_lock_req = type <{ %struct.smb_hdr, i8, i8, i16, i16, i8, i8, i32, i16, i16, i16, [1 x %struct.locking_andx_range] }>
%struct.locking_andx_range = type { i16, i16, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.kuid_t = type { i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.ntlmssp2_name = type { i16, i16 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }

@__cifs_calc_signature._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__cifs_calc_signature = private unnamed_addr constant [22 x i8] c"__cifs_calc_signature\00", align 1
@__cifs_calc_signature._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @__func__.__cifs_calc_signature, ptr @.str.2, i32 52, ptr null, ptr null }, align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: null iovec entry\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/cifs/cifsencrypt.c\00", [42 x i8] zeroinitializer }, align 32
@__cifs_calc_signature._entry_ptr = internal global ptr @__cifs_calc_signature._entry, section ".printk_index", align 4
@__cifs_calc_signature._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__cifs_calc_signature._entry.4 = internal constant %struct.pi_entry { ptr @.str.5, ptr @__func__.__cifs_calc_signature, ptr @.str.2, i32 60, ptr null, ptr null }, align 1
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s: Could not update with payload\0A\00", [48 x i8] zeroinitializer }, align 32
@__cifs_calc_signature._entry_ptr.6 = internal global ptr @__cifs_calc_signature._entry.4, section ".printk_index", align 4
@__cifs_calc_signature._rs.7 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__cifs_calc_signature._entry.8 = internal constant %struct.pi_entry { ptr @.str.5, ptr @__func__.__cifs_calc_signature, ptr @.str.2, i32 77, ptr null, ptr null }, align 1
@__cifs_calc_signature._entry_ptr.9 = internal global ptr @__cifs_calc_signature._entry.8, section ".printk_index", align 4
@__cifs_calc_signature._rs.10 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__cifs_calc_signature._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @__func__.__cifs_calc_signature, ptr @.str.2, i32 87, ptr null, ptr null }, align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s: Could not generate hash\0A\00", [54 x i8] zeroinitializer }, align 32
@__cifs_calc_signature._entry_ptr.13 = internal global ptr @__cifs_calc_signature._entry.11, section ".printk_index", align 4
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BSRSPYL \00", [23 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_verify_signature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_verify_signature.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_verify_signature\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: dummy signature received for smb command 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.setup_ntlmv2_rsp = private unnamed_addr constant [17 x i8] c"setup_ntlmv2_rsp\00", align 1
@setup_ntlmv2_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s called with nls_cp==NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr = internal global ptr @setup_ntlmv2_rsp._entry, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: error %d finding domain name\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.23 = internal global ptr @setup_ntlmv2_rsp._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@setup_ntlmv2_rsp._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: error %d building av pair blob\0A\00", [51 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.28 = internal global ptr @setup_ntlmv2_rsp._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hmac(md5)\00", [22 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: Could not get v2 hash rc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.33 = internal global ptr @setup_ntlmv2_rsp._entry.31, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: Could not calculate CR1 rc: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.37 = internal global ptr @setup_ntlmv2_rsp._entry.35, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: %s: Could not set NTLMV2 Hash as a key\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.41 = internal global ptr @setup_ntlmv2_rsp._entry.39, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: %s: Could not init hmacmd5\0A\00", [55 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.45 = internal global ptr @setup_ntlmv2_rsp._entry.43, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: %s: Could not update with response\0A\00", [47 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.49 = internal global ptr @setup_ntlmv2_rsp._entry.47, section ".printk_index", align 4
@setup_ntlmv2_rsp._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.setup_ntlmv2_rsp, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s: Could not generate md5 hash\0A\00", [50 x i8] zeroinitializer }, align 32
@setup_ntlmv2_rsp._entry_ptr.53 = internal global ptr @setup_ntlmv2_rsp._entry.51, section ".printk_index", align 4
@calc_seckey._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.calc_seckey = private unnamed_addr constant [12 x i8] c"calc_seckey\00", align 1
@calc_seckey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.calc_seckey, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: Could not allocate arc4 context\0A\00", [50 x i8] zeroinitializer }, align 32
@calc_seckey._entry_ptr = internal global ptr @calc_seckey._entry, section ".printk_index", align 4
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@cifs_calc_signature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_calc_signature = private unnamed_addr constant [20 x i8] c"cifs_calc_signature\00", align 1
@cifs_calc_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.cifs_calc_signature, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CIFS: VFS: %s: Could not init md5\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_calc_signature._entry_ptr = internal global ptr @cifs_calc_signature._entry, section ".printk_index", align 4
@cifs_calc_signature._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_calc_signature._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.cifs_calc_signature, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cifs_calc_signature._entry_ptr.60 = internal global ptr @cifs_calc_signature._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WORKGROUP\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@calc_ntlmv2_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.calc_ntlmv2_hash = private unnamed_addr constant [17 x i8] c"calc_ntlmv2_hash\00", align 1
@calc_ntlmv2_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: %s: can't generate ntlmv2 hash\0A\00", [51 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr = internal global ptr @calc_ntlmv2_hash._entry, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: %s: Could not set NT Hash as a key\0A\00", [47 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.66 = internal global ptr @calc_ntlmv2_hash._entry.64, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.69 = internal global ptr @calc_ntlmv2_hash._entry.68, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: %s: Could not update with user\0A\00", [51 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.73 = internal global ptr @calc_ntlmv2_hash._entry.71, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s: Could not update with domain\0A\00", [49 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.77 = internal global ptr @calc_ntlmv2_hash._entry.75, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s: Could not update with server\0A\00", [49 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.81 = internal global ptr @calc_ntlmv2_hash._entry.79, section ".printk_index", align 4
@calc_ntlmv2_hash._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.calc_ntlmv2_hash, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.84 = internal global ptr @calc_ntlmv2_hash._entry.83, section ".printk_index", align 4
@CifsUniUpperTable = external dso_local local_unnamed_addr global [512 x i8], align 1
@CifsUniUpperRange = external dso_local local_unnamed_addr constant [0 x %struct.UniCaseRange], align 4
@CalcNTLMv2_response._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.CalcNTLMv2_response = private unnamed_addr constant [20 x i8] c"CalcNTLMv2_response\00", align 1
@CalcNTLMv2_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.CalcNTLMv2_response, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry_ptr = internal global ptr @CalcNTLMv2_response._entry, section ".printk_index", align 4
@CalcNTLMv2_response._rs.85 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.CalcNTLMv2_response, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry_ptr.87 = internal global ptr @CalcNTLMv2_response._entry.86, section ".printk_index", align 4
@CalcNTLMv2_response._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.CalcNTLMv2_response, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry_ptr.90 = internal global ptr @CalcNTLMv2_response._entry.89, section ".printk_index", align 4
@CalcNTLMv2_response._rs.91 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.CalcNTLMv2_response, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry_ptr.93 = internal global ptr @CalcNTLMv2_response._entry.92, section ".printk_index", align 4
@CalcNTLMv2_response._rs.94 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.CalcNTLMv2_response, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@CalcNTLMv2_response._entry_ptr.96 = internal global ptr @CalcNTLMv2_response._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 52, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 59, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 87, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 227, i32 52 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 228, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 575, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 584, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 589, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 595, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 631, i32 23 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 641, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 648, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 656, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 663, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 671, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 678, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 701, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 44, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 107, i32 23 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 114, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 121, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 266, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 417, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 427, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 433, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 456, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 476, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 496, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 505, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 523, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 530, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 537, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 550, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private constant [25 x i8] c"../fs/cifs/cifsencrypt.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 558, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @CalcNTLMv2_response._entry, ptr @CalcNTLMv2_response._entry.86, ptr @CalcNTLMv2_response._entry.89, ptr @CalcNTLMv2_response._entry.92, ptr @CalcNTLMv2_response._entry.95, ptr @CalcNTLMv2_response._entry_ptr, ptr @CalcNTLMv2_response._entry_ptr.87, ptr @CalcNTLMv2_response._entry_ptr.90, ptr @CalcNTLMv2_response._entry_ptr.93, ptr @CalcNTLMv2_response._entry_ptr.96, ptr @__cifs_calc_signature._entry, ptr @__cifs_calc_signature._entry.11, ptr @__cifs_calc_signature._entry.4, ptr @__cifs_calc_signature._entry.8, ptr @__cifs_calc_signature._entry_ptr, ptr @__cifs_calc_signature._entry_ptr.13, ptr @__cifs_calc_signature._entry_ptr.6, ptr @__cifs_calc_signature._entry_ptr.9, ptr @calc_ntlmv2_hash._entry, ptr @calc_ntlmv2_hash._entry.64, ptr @calc_ntlmv2_hash._entry.68, ptr @calc_ntlmv2_hash._entry.71, ptr @calc_ntlmv2_hash._entry.75, ptr @calc_ntlmv2_hash._entry.79, ptr @calc_ntlmv2_hash._entry.83, ptr @calc_ntlmv2_hash._entry_ptr, ptr @calc_ntlmv2_hash._entry_ptr.66, ptr @calc_ntlmv2_hash._entry_ptr.69, ptr @calc_ntlmv2_hash._entry_ptr.73, ptr @calc_ntlmv2_hash._entry_ptr.77, ptr @calc_ntlmv2_hash._entry_ptr.81, ptr @calc_ntlmv2_hash._entry_ptr.84, ptr @calc_seckey._entry, ptr @calc_seckey._entry_ptr, ptr @cifs_calc_signature._entry, ptr @cifs_calc_signature._entry.59, ptr @cifs_calc_signature._entry_ptr, ptr @cifs_calc_signature._entry_ptr.60, ptr @setup_ntlmv2_rsp._entry, ptr @setup_ntlmv2_rsp._entry.21, ptr @setup_ntlmv2_rsp._entry.26, ptr @setup_ntlmv2_rsp._entry.31, ptr @setup_ntlmv2_rsp._entry.35, ptr @setup_ntlmv2_rsp._entry.39, ptr @setup_ntlmv2_rsp._entry.43, ptr @setup_ntlmv2_rsp._entry.47, ptr @setup_ntlmv2_rsp._entry.51, ptr @setup_ntlmv2_rsp._entry_ptr, ptr @setup_ntlmv2_rsp._entry_ptr.23, ptr @setup_ntlmv2_rsp._entry_ptr.28, ptr @setup_ntlmv2_rsp._entry_ptr.33, ptr @setup_ntlmv2_rsp._entry_ptr.37, ptr @setup_ntlmv2_rsp._entry_ptr.41, ptr @setup_ntlmv2_rsp._entry_ptr.45, ptr @setup_ntlmv2_rsp._entry_ptr.49, ptr @setup_ntlmv2_rsp._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.12, ptr @.str.15, ptr @cifs_verify_signature._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @setup_ntlmv2_rsp._rs, ptr @.str.19, ptr @setup_ntlmv2_rsp._rs.20, ptr @.str.22, ptr @.str.24, ptr @setup_ntlmv2_rsp._rs.25, ptr @.str.27, ptr @.str.29, ptr @setup_ntlmv2_rsp._rs.30, ptr @.str.32, ptr @setup_ntlmv2_rsp._rs.34, ptr @.str.36, ptr @setup_ntlmv2_rsp._rs.38, ptr @.str.40, ptr @setup_ntlmv2_rsp._rs.42, ptr @.str.44, ptr @setup_ntlmv2_rsp._rs.46, ptr @.str.48, ptr @setup_ntlmv2_rsp._rs.50, ptr @.str.52, ptr @calc_seckey._rs, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @cifs_calc_signature._rs, ptr @.str.57, ptr @cifs_calc_signature._rs.58, ptr @.str.61, ptr @calc_ntlmv2_hash._rs, ptr @.str.62, ptr @calc_ntlmv2_hash._rs.63, ptr @.str.65, ptr @calc_ntlmv2_hash._rs.67, ptr @calc_ntlmv2_hash._rs.70, ptr @.str.72, ptr @calc_ntlmv2_hash._rs.74, ptr @.str.76, ptr @calc_ntlmv2_hash._rs.78, ptr @.str.80, ptr @calc_ntlmv2_hash._rs.82, ptr @CalcNTLMv2_response._rs, ptr @CalcNTLMv2_response._rs.85, ptr @CalcNTLMv2_response._rs.88, ptr @CalcNTLMv2_response._rs.91, ptr @CalcNTLMv2_response._rs.94], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_verify_signature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_ntlmv2_rsp._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_seckey._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_seckey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_calc_signature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_calc_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_calc_signature._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_calc_signature._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._rs.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._rs.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._rs.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CalcNTLMv2_response._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cifs_calc_signature(ptr noundef %rqst, ptr nocapture noundef readonly %server, ptr noundef %signature, ptr noundef %shash) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %rq_nvec = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %2 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_nvec, align 4
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 6
  %4 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vals, align 8
  %header_preamble_size = getelementptr inbounds %struct.smb_version_values, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %header_preamble_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %header_preamble_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %iov_len = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp1 = icmp ult i32 %9, 5
  br i1 %cmp1, label %if.then.cleanup112_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.cleanup112_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4 = icmp slt i32 %3, 2
  br i1 %cmp4, label %if.else.cleanup112_crit_edge, label %lor.lhs.false

if.else.cleanup112_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

lor.lhs.false:                                    ; preds = %if.else
  %iov_len7 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp8.not = icmp eq i32 %11, 4
  br i1 %cmp8.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.cleanup112_crit_edge

lor.lhs.false.cleanup112_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %lor.lhs.false.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %i.0 = phi i32 [ 0, %if.then.if.end12_crit_edge ], [ 1, %lor.lhs.false.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %3)
  %cmp13159 = icmp slt i32 %i.0, %3
  br i1 %cmp13159, label %if.end12.for.body_crit_edge, label %if.end12.for.cond59.preheader_crit_edge

if.end12.for.cond59.preheader_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59.preheader

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.cond59.preheader:                             ; preds = %for.inc.for.cond59.preheader_crit_edge, %if.end12.for.cond59.preheader_crit_edge
  %rq_npages = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 4
  %12 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp60162.not = icmp eq i32 %13, 0
  br i1 %cmp60162.not, label %for.cond59.preheader.for.end92_crit_edge, label %for.body62.lr.ph

for.cond59.preheader.for.end92_crit_edge:         ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body62.lr.ph:                                 ; preds = %for.cond59.preheader
  %rq_pages = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  br label %for.body62

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.1160 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.0, %if.end12.for.body_crit_edge ]
  %iov_len16 = getelementptr %struct.kvec, ptr %1, i32 %i.1160, i32 1
  %14 = ptrtoint ptr %iov_len16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %arrayidx15 = getelementptr %struct.kvec, ptr %1, i32 %i.1160
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %cmp22 = icmp eq ptr %17, null
  br i1 %cmp22, label %do.body25, label %if.end35

do.body25:                                        ; preds = %if.end20
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @__cifs_calc_signature._rs, ptr noundef nonnull @__func__.__cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %do.body25.cleanup112_crit_edge, label %do.end

do.body25.cleanup112_crit_edge:                   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

do.end:                                           ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup112

if.end35:                                         ; preds = %if.end20
  %call40 = tail call i32 @crypto_shash_update(ptr noundef %shash, ptr noundef nonnull %17, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end35.for.inc_crit_edge, label %do.body44

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body44:                                        ; preds = %if.end35
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @__cifs_calc_signature._rs.3, ptr noundef nonnull @__func__.__cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.cleanup112_crit_edge, label %do.end50

do.body44.cleanup112_crit_edge:                   ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__cifs_calc_signature) #12
  br label %cleanup112

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.1160, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.cond59.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond59.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59.preheader

for.body62:                                       ; preds = %for.inc90.for.body62_crit_edge, %for.body62.lr.ph
  %i.2163 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc91, %for.inc90.for.body62_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %len, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %offset, align 4, !annotation !168
  call void @rqst_page_get_length(ptr noundef %rqst, i32 noundef %i.2163, ptr noundef nonnull %len, ptr noundef nonnull %offset) #9
  %20 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_pages, align 4
  %arrayidx63 = getelementptr ptr, ptr %21, i32 %i.2163
  %22 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx63, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 44) #9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %shr.i.i = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %for.body62.if.then.i_crit_edge [
    i32 2, label %for.body62.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

for.body62.if.else.i_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.body62.if.then.i_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %for.body62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %for.body62.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %23) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %for.body62.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %23) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %29
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %call65 = call i32 @crypto_shash_update(ptr noundef %shash, ptr noundef %add.ptr, i32 noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end85, label %do.body69

do.body69:                                        ; preds = %kmap.exit
  %call70 = call i32 @___ratelimit(ptr noundef nonnull @__cifs_calc_signature._rs.7, ptr noundef nonnull @__func__.__cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.body69.do.end82_crit_edge, label %do.end75

do.body69.do.end82_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

do.end75:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__cifs_calc_signature) #12
  br label %do.end82

do.end82:                                         ; preds = %do.end75, %do.body69.do.end82_crit_edge
  %32 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq_pages, align 4
  %arrayidx84 = getelementptr ptr, ptr %33, i32 %i.2163
  %34 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx84, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 55) #9
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %shr.i.i148 = lshr i32 %37, 30
  %38 = zext i32 %shr.i.i148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %shr.i.i148, label %do.end82.cleanup_crit_edge [
    i32 2, label %do.end82.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i150
  ]

do.end82.if.end.i_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_highmem_idx.exit.i150:                         ; preds = %do.end82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %39 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp2.i.not.i149 = icmp eq i32 %39, 2
  br i1 %cmp2.i.not.i149, label %is_highmem_idx.exit.i150.if.end.i_crit_edge, label %is_highmem_idx.exit.i150.cleanup_crit_edge

is_highmem_idx.exit.i150.cleanup_crit_edge:       ; preds = %is_highmem_idx.exit.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_highmem_idx.exit.i150.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i150.if.end.i_crit_edge, %do.end82.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %35) #9
  br label %cleanup

if.end85:                                         ; preds = %kmap.exit
  %40 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rq_pages, align 4
  %arrayidx87 = getelementptr ptr, ptr %41, i32 %i.2163
  %42 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx87, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 55) #9
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %shr.i.i151 = lshr i32 %45, 30
  %46 = zext i32 %shr.i.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %shr.i.i151, label %if.end85.for.inc90_crit_edge [
    i32 2, label %if.end85.if.end.i154_crit_edge
    i32 3, label %is_highmem_idx.exit.i153
  ]

if.end85.if.end.i154_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.end85.for.inc90_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

is_highmem_idx.exit.i153:                         ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.not.i152 = icmp eq i32 %47, 2
  br i1 %cmp2.i.not.i152, label %is_highmem_idx.exit.i153.if.end.i154_crit_edge, label %is_highmem_idx.exit.i153.for.inc90_crit_edge

is_highmem_idx.exit.i153.for.inc90_crit_edge:     ; preds = %is_highmem_idx.exit.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

is_highmem_idx.exit.i153.if.end.i154_crit_edge:   ; preds = %is_highmem_idx.exit.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.end.i154:                                      ; preds = %is_highmem_idx.exit.i153.if.end.i154_crit_edge, %if.end85.if.end.i154_crit_edge
  call void @kunmap_high(ptr noundef %43) #9
  br label %for.inc90

cleanup:                                          ; preds = %if.end.i, %is_highmem_idx.exit.i150.cleanup_crit_edge, %do.end82.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  br label %cleanup112

for.inc90:                                        ; preds = %if.end.i154, %is_highmem_idx.exit.i153.for.inc90_crit_edge, %if.end85.for.inc90_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %inc91 = add nuw i32 %i.2163, 1
  %48 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rq_npages, align 4
  %cmp60 = icmp ult i32 %inc91, %49
  br i1 %cmp60, label %for.inc90.for.body62_crit_edge, label %for.inc90.for.end92_crit_edge

for.inc90.for.end92_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.inc90.for.body62_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62

for.end92:                                        ; preds = %for.inc90.for.end92_crit_edge, %for.cond59.preheader.for.end92_crit_edge
  %call93 = call i32 @crypto_shash_final(ptr noundef %shash, ptr noundef %signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.end92.cleanup112_crit_edge, label %do.body97

for.end92.cleanup112_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

do.body97:                                        ; preds = %for.end92
  %call98 = call i32 @___ratelimit(ptr noundef nonnull @__cifs_calc_signature._rs.10, ptr noundef nonnull @__func__.__cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body97.cleanup112_crit_edge, label %do.end103

do.body97.cleanup112_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.__cifs_calc_signature) #12
  br label %cleanup112

cleanup112:                                       ; preds = %do.end103, %do.body97.cleanup112_crit_edge, %for.end92.cleanup112_crit_edge, %cleanup, %do.end50, %do.body44.cleanup112_crit_edge, %do.end, %do.body25.cleanup112_crit_edge, %lor.lhs.false.cleanup112_crit_edge, %if.else.cleanup112_crit_edge, %if.then.cleanup112_crit_edge
  %retval.2 = phi i32 [ %call65, %cleanup ], [ -5, %if.then.cleanup112_crit_edge ], [ -5, %lor.lhs.false.cleanup112_crit_edge ], [ -5, %if.else.cleanup112_crit_edge ], [ -5, %do.end ], [ -5, %do.body25.cleanup112_crit_edge ], [ %call40, %do.end50 ], [ %call40, %do.body44.cleanup112_crit_edge ], [ %call93, %do.body97.cleanup112_crit_edge ], [ %call93, %do.end103 ], [ 0, %for.end92.cleanup112_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rqst_page_get_length(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_sign_rqst(ptr noundef %rqst, ptr noundef %server, ptr nocapture noundef writeonly %pexpected_response_sequence_number) local_unnamed_addr #0 align 64 {
entry:
  %smb_signature = alloca [20 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %smb_signature) #9
  %0 = call ptr @memset(ptr %smb_signature, i32 255, i32 20)
  %1 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rqst, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %arrayidx7 = getelementptr %struct.kvec, ptr %2, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %cmp9.not = icmp eq ptr %add.ptr, %8
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp10 = icmp eq ptr %4, null
  %cmp12 = icmp eq ptr %server, null
  %or.cond = or i1 %cmp12, %cmp10
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %Flags2, align 1
  %11 = and i16 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end14.if.then18_crit_edge, label %lor.lhs.false15

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false15:                                  ; preds = %if.end14
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %12 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp16 = icmp eq i32 %13, 4
  br i1 %cmp16, label %lor.lhs.false15.if.then18_crit_edge, label %if.end19

lor.lhs.false15.if.then18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %14 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %session_estab, align 8, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %Signature = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 7
  %16 = ptrtoint ptr %Signature to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 4779254147354020864, ptr %Signature, align 1
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %sequence_number = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 46
  %17 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sequence_number, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %Signature23 = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 7
  %20 = ptrtoint ptr %Signature23 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %Signature23, align 1
  %Reserved = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %Reserved to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %Reserved, align 1
  %22 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sequence_number, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %sequence_number, align 8
  %24 = ptrtoint ptr %pexpected_response_sequence_number to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %pexpected_response_sequence_number, align 4
  %25 = load i32, ptr %sequence_number, align 8
  %inc27 = add i32 %25, 1
  store i32 %inc27, ptr %sequence_number, align 8
  %call = call fastcc i32 @cifs_calc_signature(ptr noundef %rqst, ptr noundef nonnull %server, ptr noundef nonnull %smb_signature)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.else, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %smb_signature to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %smb_signature, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end22.if.end36_crit_edge
  %storemerge = phi i64 [ %27, %if.else ], [ 0, %if.end22.if.end36_crit_edge ]
  %28 = ptrtoint ptr %Signature23 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %storemerge, ptr %Signature23, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then21, %if.then18, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ %call, %if.end36 ], [ 0, %if.then21 ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %smb_signature) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_calc_signature(ptr noundef %rqst, ptr noundef %server, ptr noundef %signature) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %signature, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %server, null
  %or.cond66 = or i1 %tobool3.not, %or.cond
  br i1 %or.cond66, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %md5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 1
  %sdescmd5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 6
  %call = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.56, ptr noundef %md5, ptr noundef %sdescmd5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdescmd5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end7.do.body13_crit_edge

if.end7.do.body13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

crypto_shash_init.exit:                           ; preds = %if.end7
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -256
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %11(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool11.not = icmp eq i32 %call3.i, 0
  br i1 %tobool11.not, label %if.end24, label %crypto_shash_init.exit.do.body13_crit_edge

crypto_shash_init.exit.do.body13_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

do.body13:                                        ; preds = %crypto_shash_init.exit.do.body13_crit_edge, %if.end7.do.body13_crit_edge
  %retval.0.i69 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body13_crit_edge ], [ -126, %if.end7.do.body13_crit_edge ]
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_calc_signature._rs, ptr noundef nonnull @__func__.cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %do.end

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.cifs_calc_signature) #12
  br label %cleanup

if.end24:                                         ; preds = %crypto_shash_init.exit
  %12 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdescmd5, align 4
  %session_key = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 48
  %response = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 48, i32 1
  %14 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response, align 4
  %16 = ptrtoint ptr %session_key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %session_key, align 8
  %call29 = tail call i32 @crypto_shash_update(ptr noundef %13, ptr noundef %15, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end47, label %do.body33

do.body33:                                        ; preds = %if.end24
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_calc_signature._rs.58, ptr noundef nonnull @__func__.cifs_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.cifs_calc_signature) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdescmd5, align 4
  %call51 = tail call i32 @__cifs_calc_signature(ptr noundef %rqst, ptr noundef nonnull %server, ptr noundef nonnull %signature, ptr noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end39, %do.body33.cleanup_crit_edge, %do.end, %do.body13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %retval.0.i69, %do.end ], [ %retval.0.i69, %do.body13.cleanup_crit_edge ], [ %call29, %do.end39 ], [ %call29, %do.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_sign_smbv(ptr noundef %iov, i32 noundef %n_vec, ptr noundef %server, ptr nocapture noundef writeonly %pexpected_response_sequence) local_unnamed_addr #0 align 64 {
entry:
  %rqst = alloca %struct.smb_rqst, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #9
  %0 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %2 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iov, ptr %rqst, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n_vec, ptr %0, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 20)
  %call = call i32 @cifs_sign_rqst(ptr noundef nonnull %rqst, ptr noundef %server, ptr noundef %pexpected_response_sequence)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_sign_smb(ptr noundef %cifs_pdu, ptr noundef %server, ptr nocapture noundef writeonly %pexpected_response_sequence_number) local_unnamed_addr #0 align 64 {
entry:
  %rqst.i = alloca %struct.smb_rqst, align 4
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cifs_pdu, ptr %iov, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %cifs_pdu, i32 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %1, align 4
  %6 = ptrtoint ptr %cifs_pdu to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %cifs_pdu, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst.i) #9
  %9 = getelementptr inbounds %struct.smb_rqst, ptr %rqst.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.smb_rqst, ptr %rqst.i, i32 0, i32 2
  %11 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %iov, ptr %rqst.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %9, align 4
  %13 = call ptr @memset(ptr %10, i32 0, i32 20)
  %call.i = call i32 @cifs_sign_rqst(ptr noundef nonnull %rqst.i, ptr noundef %server, ptr noundef %pexpected_response_sequence_number) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_verify_signature(ptr noundef %rqst, ptr noundef %server, i32 noundef %expected_sequence_number) local_unnamed_addr #0 align 64 {
entry:
  %server_response_sig = alloca [8 x i8], align 8
  %what_we_think_sig_should_be = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %server_response_sig) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %what_we_think_sig_should_be) #9
  %0 = call ptr @memset(ptr %what_we_think_sig_should_be, i32 255, i32 20)
  %1 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rqst, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %arrayidx7 = getelementptr %struct.kvec, ptr %2, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %cmp9.not = icmp eq ptr %add.ptr, %8
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.cleanup66_crit_edge

lor.lhs.false.cleanup66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end:                                           ; preds = %lor.lhs.false
  %cmp10 = icmp eq ptr %4, null
  %cmp12 = icmp eq ptr %server, null
  %or.cond = or i1 %cmp12, %cmp10
  br i1 %or.cond, label %if.end.cleanup66_crit_edge, label %if.end14

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end14:                                         ; preds = %if.end
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %9 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %session_estab, align 8, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end14.cleanup66_crit_edge, label %if.end16

if.end14.cleanup66_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end16:                                         ; preds = %if.end14
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %12)
  %cmp17 = icmp eq i8 %12, 36
  br i1 %cmp17, label %if.then19, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  %LockType = getelementptr inbounds %struct.smb_com_lock_req, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %LockType to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %LockType, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup66_crit_edge

if.then19.cleanup66_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %Signature = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 7
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %Signature, ptr noundef nonnull dereferenceable(8) @.str.15, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp25 = icmp eq i32 %bcmp, 0
  br i1 %cmp25, label %do.body28, label %if.end24.if.end48_crit_edge

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body28:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %16 = load i32, ptr @cifsFYI, align 4
  %and29 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.if.end48_crit_edge, label %do.body32

do.body28.if.end48_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_verify_signature.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_verify_signature, %land.lhs.true)) #9
          to label %if.end48 [label %land.lhs.true], !srcloc !170

land.lhs.true:                                    ; preds = %do.body32
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_verify_signature._rs, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end48_crit_edge, label %if.then39

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Command, align 1
  %conv41 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_verify_signature.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef %conv41) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %land.lhs.true.if.end48_crit_edge, %do.body32, %do.body28.if.end48_crit_edge, %if.end24.if.end48_crit_edge
  %19 = ptrtoint ptr %Signature to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %Signature, align 1
  %21 = ptrtoint ptr %server_response_sig to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %server_response_sig, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %expected_sequence_number)
  %23 = ptrtoint ptr %Signature to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %Signature, align 1
  %Reserved = getelementptr inbounds %struct.smb_hdr, ptr %4, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %Reserved to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %Reserved, align 1
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #9
  %call55 = call fastcc i32 @cifs_calc_signature(ptr noundef %rqst, ptr noundef nonnull %server, ptr noundef nonnull %what_we_think_sig_should_be)
  call void @mutex_unlock(ptr noundef %srv_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.end59, label %if.end48.cleanup66_crit_edge

if.end48.cleanup66_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end59:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %bcmp86 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %server_response_sig, ptr noundef nonnull dereferenceable(8) %what_we_think_sig_should_be, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp86)
  %tobool63.not = icmp eq i32 %bcmp86, 0
  %. = select i1 %tobool63.not, i32 0, i32 -13
  br label %cleanup66

cleanup66:                                        ; preds = %if.end59, %if.end48.cleanup66_crit_edge, %if.then19.cleanup66_crit_edge, %if.end14.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %lor.lhs.false.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.1 = phi i32 [ 0, %if.then19.cleanup66_crit_edge ], [ -5, %lor.lhs.false.cleanup66_crit_edge ], [ -5, %entry.cleanup66_crit_edge ], [ -22, %if.end.cleanup66_crit_edge ], [ 0, %if.end14.cleanup66_crit_edge ], [ %call55, %if.end48.cleanup66_crit_edge ], [ %., %if.end59 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %what_we_think_sig_should_be) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %server_response_sig) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_ntlmv2_rsp(ptr noundef %ses, ptr noundef %nls_cp) local_unnamed_addr #0 align 64 {
entry:
  %nt_hash.i = alloca [16 x i8], align 1
  %ts.i = alloca %struct.timespec64, align 8
  %ntlmv2_hash = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ntlmv2_hash) #9
  %cmp = icmp eq ptr %nls_cp, null
  %0 = call ptr @memset(ptr %ntlmv2_hash, i32 255, i32 16)
  br i1 %cmp, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %1 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %server, align 8
  %negflavor = getelementptr inbounds %struct.TCP_Server_Info, ptr %2, i32 0, i32 51
  %3 = ptrtoint ptr %negflavor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %negflavor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp10 = icmp eq i8 %4, 2
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %5 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domainName, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %cmp10, label %if.then12, label %if.else39

if.then12:                                        ; preds = %if.end9
  br i1 %tobool13.not, label %if.then14, label %if.then12.if.end59_crit_edge

if.then12.if.end59_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then14:                                        ; preds = %if.then12
  %domainAuto = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 25
  %7 = ptrtoint ptr %domainAuto to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %domainAuto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then14
  %auth_key.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %8 = ptrtoint ptr %auth_key.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth_key.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then15.if.end59_crit_edge, label %lor.lhs.false.i

if.then15.if.end59_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lor.lhs.false.i:                                  ; preds = %if.then15
  %response.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %response.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end59_crit_edge, label %if.end.i279

lor.lhs.false.i.if.end59_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i279:                                      ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %add.ptr772.i = getelementptr i8, ptr %11, i32 4
  %cmp73.i = icmp ult ptr %add.ptr772.i, %add.ptr.i
  br i1 %cmp73.i, label %if.end.i279.while.body.i_crit_edge, label %if.end.i279.if.end59_crit_edge

if.end.i279.if.end59_crit_edge:                   ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i279.while.body.i_crit_edge:               ; preds = %if.end.i279
  br label %while.body.i

while.body.i:                                     ; preds = %if.end40.i.while.body.i_crit_edge, %if.end.i279.while.body.i_crit_edge
  %add.ptr775.i = phi ptr [ %add.ptr7.i, %if.end40.i.while.body.i_crit_edge ], [ %add.ptr772.i, %if.end.i279.while.body.i_crit_edge ]
  %blobptr.074.i = phi ptr [ %add.ptr16.i, %if.end40.i.while.body.i_crit_edge ], [ %11, %if.end.i279.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %blobptr.074.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %blobptr.074.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp9.i = icmp eq i16 %13, 0
  br i1 %cmp9.i, label %while.body.i.if.end59_crit_edge, label %if.end12.i

while.body.i.if.end59_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end12.i:                                       ; preds = %while.body.i
  %length.i = getelementptr inbounds %struct.ntlmssp2_name, ptr %blobptr.074.i, i32 0, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %length.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %conv14.i = zext i16 %16 to i32
  %add.ptr16.i = getelementptr i8, ptr %add.ptr775.i, i32 %conv14.i
  %cmp17.i = icmp ugt ptr %add.ptr16.i, %add.ptr.i
  br i1 %cmp17.i, label %if.end12.i.if.end59_crit_edge, label %if.end20.i

if.end12.i.if.end59_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp21.i = icmp eq i16 %13, 512
  br i1 %cmp21.i, label %if.then23.i, label %if.end40.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool24.not.i = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %16)
  %cmp26.i = icmp ugt i16 %16, 255
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %cmp26.i
  br i1 %or.cond.i, label %if.then23.i.if.end59_crit_edge, label %if.end8.i.i

if.then23.i.if.end59_crit_edge:                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end8.i.i:                                      ; preds = %if.then23.i
  %add.i = add nuw nsw i32 %conv14.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %17 = ptrtoint ptr %domainName to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %domainName, align 4
  %tobool34.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not.i, label %do.body20, label %if.end36.i

if.end36.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call38.i = tail call i32 @cifs_from_utf16(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr775.i, i32 noundef %conv14.i, i32 noundef %conv14.i, ptr noundef nonnull %nls_cp, i32 noundef 0) #9
  br label %if.end59

if.end40.i:                                       ; preds = %if.end20.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr16.i, i32 4
  %cmp.i281 = icmp ult ptr %add.ptr7.i, %add.ptr.i
  br i1 %cmp.i281, label %if.end40.i.while.body.i_crit_edge, label %if.end40.i.if.end59_crit_edge

if.end40.i.if.end59_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end40.i.while.body.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body20:                                        ; preds = %if.end8.i.i
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.20, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.setup_ntlmv2_rsp_ret_crit_edge, label %do.end26

do.body20.setup_ntlmv2_rsp_ret_crit_edge:         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_ntlmv2_rsp_ret

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef -12) #12
  br label %setup_ntlmv2_rsp_ret

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.24, i32 noundef 3264) #9
  %18 = ptrtoint ptr %domainName to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %domainName, align 4
  br label %if.end59

if.else39:                                        ; preds = %if.end9
  br i1 %tobool13.not, label %if.then.i284, label %if.else39.if.end5.i_crit_edge

if.else39.if.end5.i_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i284:                                     ; preds = %if.else39
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.61, i32 noundef 3264) #9
  %19 = ptrtoint ptr %domainName to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %domainName, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.then.i284.do.body44_crit_edge, label %if.then.i284.if.end5.i_crit_edge

if.then.i284.if.end5.i_crit_edge:                 ; preds = %if.then.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i284.do.body44_crit_edge:                 ; preds = %if.then.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body44

if.end5.i:                                        ; preds = %if.then.i284.if.end5.i_crit_edge, %if.else39.if.end5.i_crit_edge
  %20 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domainName, align 4
  %call7.i285 = tail call i32 @strlen(ptr noundef %21) #15
  %mul.i = shl i32 %call7.i285, 1
  %add.i286 = add i32 %mul.i, 8
  %auth_key.i287 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %22 = ptrtoint ptr %auth_key.i287 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i286, ptr %auth_key.i287, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i286, i32 noundef 3520) #14
  %response.i289 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %response.i289 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i.i, ptr %response.i289, align 4
  %tobool14.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %build_avpair_blob.exit

if.then15.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %auth_key.i287 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %auth_key.i287, align 8
  br label %do.body44

build_avpair_blob.exit:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 512, ptr %call9.i.i.i, align 128
  %conv.i = trunc i32 %mul.i to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %length.i290 = getelementptr inbounds %struct.ntlmssp2_name, ptr %call9.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %length.i290 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %length.i290, align 2
  %add.ptr.i291 = getelementptr i8, ptr %call9.i.i.i, i32 4
  %28 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %domainName, align 4
  %call23.i = tail call i32 @cifs_strtoUTF16(ptr noundef %add.ptr.i291, ptr noundef %29, i32 noundef %call7.i285, ptr noundef nonnull %nls_cp) #9
  br label %if.end59

do.body44:                                        ; preds = %if.then15.i, %if.then.i284.do.body44_crit_edge
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.25, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.setup_ntlmv2_rsp_ret_crit_edge, label %do.end50

do.body44.setup_ntlmv2_rsp_ret_crit_edge:         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_ntlmv2_rsp_ret

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef -12) #12
  br label %setup_ntlmv2_rsp_ret

if.end59:                                         ; preds = %build_avpair_blob.exit, %if.else, %if.end40.i.if.end59_crit_edge, %if.end36.i, %if.then23.i.if.end59_crit_edge, %if.end12.i.if.end59_crit_edge, %while.body.i.if.end59_crit_edge, %if.end.i279.if.end59_crit_edge, %lor.lhs.false.i.if.end59_crit_edge, %if.then15.if.end59_crit_edge, %if.then12.if.end59_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %30 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %auth_key.i293 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %31 = ptrtoint ptr %auth_key.i293 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auth_key.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i294 = icmp eq i32 %32, 0
  br i1 %tobool.not.i294, label %if.end59.find_timestamp.exit_crit_edge, label %lor.lhs.false.i297

if.end59.find_timestamp.exit_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_timestamp.exit

lor.lhs.false.i297:                               ; preds = %if.end59
  %response.i295 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %33 = ptrtoint ptr %response.i295 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %response.i295, align 4
  %tobool2.not.i296 = icmp eq ptr %34, null
  br i1 %tobool2.not.i296, label %lor.lhs.false.i297.find_timestamp.exit_crit_edge, label %if.end.i299

lor.lhs.false.i297.find_timestamp.exit_crit_edge: ; preds = %lor.lhs.false.i297
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_timestamp.exit

if.end.i299:                                      ; preds = %lor.lhs.false.i297
  %add.ptr.i298 = getelementptr i8, ptr %34, i32 %32
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end20.i311.while.cond.i_crit_edge, %if.end.i299
  %blobptr.0.i = phi ptr [ %34, %if.end.i299 ], [ %add.ptr16.i306, %if.end20.i311.while.cond.i_crit_edge ]
  %add.ptr7.i300 = getelementptr i8, ptr %blobptr.0.i, i32 4
  %cmp.i301 = icmp ult ptr %add.ptr7.i300, %add.ptr.i298
  br i1 %cmp.i301, label %while.body.i303, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i303:                                  ; preds = %while.cond.i
  %35 = ptrtoint ptr %blobptr.0.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %blobptr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp9.i302 = icmp eq i16 %36, 0
  br i1 %cmp9.i302, label %while.body.i303.while.end.i_crit_edge, label %if.end12.i308

while.body.i303.while.end.i_crit_edge:            ; preds = %while.body.i303
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end12.i308:                                    ; preds = %while.body.i303
  %length.i304 = getelementptr inbounds %struct.ntlmssp2_name, ptr %blobptr.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %length.i304 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %length.i304, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #9
  %conv14.i305 = zext i16 %39 to i32
  %add.ptr16.i306 = getelementptr i8, ptr %add.ptr7.i300, i32 %conv14.i305
  %cmp17.i307 = icmp ugt ptr %add.ptr16.i306, %add.ptr.i298
  br i1 %cmp17.i307, label %if.end12.i308.while.end.i_crit_edge, label %if.end20.i311

if.end12.i308.while.end.i_crit_edge:              ; preds = %if.end12.i308
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end20.i311:                                    ; preds = %if.end12.i308
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %36)
  %cmp21.i309 = icmp eq i16 %36, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %38)
  %cmp24.i = icmp eq i16 %38, 2048
  %or.cond.i310 = select i1 %cmp21.i309, i1 %cmp24.i, i1 false
  br i1 %or.cond.i310, label %if.then26.i, label %if.end20.i311.while.cond.i_crit_edge

if.end20.i311.while.cond.i_crit_edge:             ; preds = %if.end20.i311
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.then26.i:                                      ; preds = %if.end20.i311
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %add.ptr7.i300 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr7.i300, align 8
  br label %find_timestamp.exit

while.end.i:                                      ; preds = %if.end12.i308.while.end.i_crit_edge, %while.body.i303.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #9
  %42 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %.fca.0.load.i = load i64, ptr %ts.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %43 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  %call.i312 = call i64 @cifs_UnixTimeToNT([2 x i64] %.fca.1.insert.i) #9
  %44 = call i64 @llvm.bswap.i64(i64 %call.i312) #9
  br label %find_timestamp.exit

find_timestamp.exit:                              ; preds = %while.end.i, %if.then26.i, %lor.lhs.false.i297.find_timestamp.exit_crit_edge, %if.end59.find_timestamp.exit_crit_edge
  %retval.0.i313 = phi i64 [ %44, %while.end.i ], [ %41, %if.then26.i ], [ 0, %lor.lhs.false.i297.find_timestamp.exit_crit_edge ], [ 0, %if.end59.find_timestamp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  %45 = ptrtoint ptr %auth_key.i293 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %auth_key.i293, align 8
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %47 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %response, align 4
  %add = add i32 %46, 60
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %49 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %response, align 4
  %tobool67.not = icmp eq ptr %call9.i, null
  br i1 %tobool67.not, label %if.then68, label %if.end71

if.then68:                                        ; preds = %find_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %auth_key.i293 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %auth_key.i293, align 8
  br label %setup_ntlmv2_rsp_ret

if.end71:                                         ; preds = %find_timestamp.exit
  %51 = ptrtoint ptr %auth_key.i293 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %auth_key.i293, align 8
  %add74 = add i32 %52, 60
  store i32 %add74, ptr %auth_key.i293, align 8
  %add.ptr = getelementptr i8, ptr %call9.i, i32 16
  %blob_signature = getelementptr i8, ptr %call9.i, i32 32
  %53 = ptrtoint ptr %blob_signature to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16842752, ptr %blob_signature, align 32
  %reserved = getelementptr i8, ptr %call9.i, i32 36
  %54 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %reserved, align 4
  %time = getelementptr i8, ptr %call9.i, i32 40
  %55 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %retval.0.i313, ptr %time, align 8
  %client_chal = getelementptr i8, ptr %call9.i, i32 48
  call void @get_random_bytes(ptr noundef %client_chal, i32 noundef 8) #9
  %reserved2 = getelementptr i8, ptr %call9.i, i32 56
  %56 = ptrtoint ptr %reserved2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %reserved2, align 8
  %57 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %response, align 4
  %add.ptr79 = getelementptr i8, ptr %58, i32 60
  %59 = call ptr @memcpy(ptr %add.ptr79, ptr %48, i32 %46)
  %60 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %server, align 8
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %61, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #9
  %62 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %server, align 8
  %secmech = getelementptr inbounds %struct.TCP_Server_Info, ptr %63, i32 0, i32 50
  %sdeschmacmd5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %63, i32 0, i32 50, i32 5
  %call84 = call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.29, ptr noundef %secmech, ptr noundef %sdeschmacmd5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end71.unlock_crit_edge

if.end71.unlock_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end87:                                         ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nt_hash.i) #9
  %64 = call ptr @memset(ptr %nt_hash.i, i32 255, i32 16)
  %65 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %server, align 8
  %sdeschmacmd5.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %66, i32 0, i32 50, i32 5
  %67 = ptrtoint ptr %sdeschmacmd5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdeschmacmd5.i, align 4
  %tobool.not.i314 = icmp eq ptr %68, null
  br i1 %tobool.not.i314, label %do.body2.i, label %if.end11.i

do.body2.i:                                       ; preds = %if.end87
  %call.i315 = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool3.not.i316 = icmp eq i32 %call.i315, 0
  br i1 %tobool3.not.i316, label %do.body2.i.do.body92_crit_edge, label %do.body2.i.do.body92.sink.split_crit_edge

do.body2.i.do.body92.sink.split_crit_edge:        ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body2.i.do.body92_crit_edge:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end11.i:                                       ; preds = %if.end87
  %password.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 19
  %69 = ptrtoint ptr %password.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %password.i, align 8
  %call12.i = call i32 @E_md4hash(ptr noundef %70, ptr noundef nonnull %nt_hash.i, ptr noundef nonnull %nls_cp) #9
  %71 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %server, align 8
  %secmech14.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %72, i32 0, i32 50
  %73 = ptrtoint ptr %secmech14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %secmech14.i, align 4
  %call16.i = call i32 @crypto_shash_setkey(ptr noundef %74, ptr noundef nonnull %nt_hash.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end34.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.end11.i
  %call21.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.63, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.do.body92_crit_edge, label %do.body20.i.do.body92.sink.split_crit_edge

do.body20.i.do.body92.sink.split_crit_edge:       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body20.i.do.body92_crit_edge:                  ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end34.i:                                       ; preds = %if.end11.i
  %75 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %server, align 8
  %sdeschmacmd537.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %76, i32 0, i32 50, i32 5
  %77 = ptrtoint ptr %sdeschmacmd537.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sdeschmacmd537.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i317 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i317, label %crypto_shash_init.exit.i, label %if.end34.i.do.body42.i_crit_edge

if.end34.i.do.body42.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42.i

crypto_shash_init.exit.i:                         ; preds = %if.end34.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %80, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %84, i32 -256
  %85 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %86(ptr noundef %78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool39.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool39.not.i, label %if.end56.i, label %crypto_shash_init.exit.i.do.body42.i_crit_edge

crypto_shash_init.exit.i.do.body42.i_crit_edge:   ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42.i

do.body42.i:                                      ; preds = %crypto_shash_init.exit.i.do.body42.i_crit_edge, %if.end34.i.do.body42.i_crit_edge
  %retval.0.i312.i = phi i32 [ %call3.i.i, %crypto_shash_init.exit.i.do.body42.i_crit_edge ], [ -126, %if.end34.i.do.body42.i_crit_edge ]
  %call43.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.67, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.do.body92_crit_edge, label %do.body42.i.do.body92.sink.split_crit_edge

do.body42.i.do.body92.sink.split_crit_edge:       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body42.i.do.body92_crit_edge:                  ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end56.i:                                       ; preds = %crypto_shash_init.exit.i
  %user_name.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 17
  %87 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %user_name.i, align 8
  %tobool57.not.i = icmp eq ptr %88, null
  br i1 %tobool57.not.i, label %if.end56.i.if.end8.i.i329_crit_edge, label %cond.true.i

if.end56.i.if.end8.i.i329_crit_edge:              ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i329

cond.true.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  %call59.i = call i32 @strlen(ptr noundef nonnull %88) #15
  br label %if.end8.i.i329

if.end8.i.i329:                                   ; preds = %cond.true.i, %if.end56.i.if.end8.i.i329_crit_edge
  %cond.i = phi i32 [ %call59.i, %cond.true.i ], [ 0, %if.end56.i.if.end8.i.i329_crit_edge ]
  %mul.i318 = shl i32 %cond.i, 1
  %add.i319 = add i32 %mul.i318, 2
  %call9.i.i328 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i319, i32 noundef 3264) #14
  %cmp.i331 = icmp eq ptr %call9.i.i328, null
  br i1 %cmp.i331, label %if.end8.i.i329.do.body92_crit_edge, label %if.end62.i

if.end8.i.i329.do.body92_crit_edge:               ; preds = %if.end8.i.i329
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end62.i:                                       ; preds = %if.end8.i.i329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool63.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool63.not.i, label %if.else.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end62.i
  %89 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %user_name.i, align 8
  %call66.i = call i32 @cifs_strtoUTF16(ptr noundef nonnull %call9.i.i328, ptr noundef %90, i32 noundef %cond.i, ptr noundef nonnull %nls_cp) #9
  %91 = ptrtoint ptr %call9.i.i328 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %call9.i.i328, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool.not3.i.i = icmp eq i16 %92, 0
  br i1 %tobool.not3.i.i, label %if.then64.i.UniStrupr.exit.i_crit_edge, label %if.then64.i.while.body.i.i_crit_edge

if.then64.i.while.body.i.i_crit_edge:             ; preds = %if.then64.i
  br label %while.body.i.i

if.then64.i.UniStrupr.exit.i_crit_edge:           ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %UniStrupr.exit.i

while.body.i.i:                                   ; preds = %UniToupper.exit.i.i.while.body.i.i_crit_edge, %if.then64.i.while.body.i.i_crit_edge
  %93 = phi i16 [ %108, %UniToupper.exit.i.i.while.body.i.i_crit_edge ], [ %92, %if.then64.i.while.body.i.i_crit_edge ]
  %up.04.i.i = phi ptr [ %incdec.ptr.i.i, %UniToupper.exit.i.i.while.body.i.i_crit_edge ], [ %call9.i.i328, %if.then64.i.while.body.i.i_crit_edge ]
  %94 = call i16 @llvm.bswap.i16(i16 %93) #9
  %conv.i.i.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %94)
  %cmp.i.i306.i = icmp ult i16 %94, 512
  br i1 %cmp.i.i306.i, label %if.then.i.i.i333, label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %while.body.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @CifsUniUpperRange to i32))
  %95 = load i16, ptr @CifsUniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not40.i.i.i = icmp eq i16 %95, 0
  br i1 %tobool.not40.i.i.i, label %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %UniToupper.exit.i.i

if.then.i.i.i333:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr [512 x i8], ptr @CifsUniUpperTable, i32 0, i32 %conv.i.i.i
  br label %cleanup.sink.split.i.i.i

while.body.i.i.i:                                 ; preds = %if.end24.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %96 = phi i16 [ %102, %if.end24.i.i.i.while.body.i.i.i_crit_edge ], [ %95, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %rp.041.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end24.i.i.i.while.body.i.i.i_crit_edge ], [ @CifsUniUpperRange, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %94)
  %cmp8.i.i.i = icmp ugt i16 %96, %94
  br i1 %cmp8.i.i.i, label %while.body.i.i.i.UniToupper.exit.i.i_crit_edge, label %if.end.i.i307.i

while.body.i.i.i.UniToupper.exit.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %UniToupper.exit.i.i

if.end.i.i307.i:                                  ; preds = %while.body.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %end.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %94)
  %cmp13.not.i.i.i = icmp ult i16 %98, %94
  br i1 %cmp13.not.i.i.i, label %if.end24.i.i.i, label %if.then15.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end.i.i307.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv7.le.i.i.i = zext i16 %96 to i32
  %table.i.i.i = getelementptr inbounds %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %table.i.i.i, align 4
  %sub.i.i.i334 = sub nsw i32 %conv.i.i.i, %conv7.le.i.i.i
  %arrayidx20.i.i.i = getelementptr i8, ptr %100, i32 %sub.i.i.i334
  br label %cleanup.sink.split.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end.i.i307.i
  %incdec.ptr.i.i.i = getelementptr %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 1
  %101 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i308.i = icmp eq i16 %102, 0
  br i1 %tobool.not.i.i308.i, label %if.end24.i.i.i.UniToupper.exit.i.i_crit_edge, label %if.end24.i.i.i.while.body.i.i.i_crit_edge

if.end24.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

if.end24.i.i.i.UniToupper.exit.i.i_crit_edge:     ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %UniToupper.exit.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.then15.i.i.i, %if.then.i.i.i333
  %arrayidx20.sink.i.i.i = phi ptr [ %arrayidx20.i.i.i, %if.then15.i.i.i ], [ %arrayidx.i.i.i, %if.then.i.i.i333 ]
  %103 = ptrtoint ptr %arrayidx20.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx20.sink.i.i.i, align 1
  %conv21.i.i.i = sext i8 %104 to i16
  %add22.i.i.i = add i16 %94, %conv21.i.i.i
  br label %UniToupper.exit.i.i

UniToupper.exit.i.i:                              ; preds = %cleanup.sink.split.i.i.i, %if.end24.i.i.i.UniToupper.exit.i.i_crit_edge, %while.body.i.i.i.UniToupper.exit.i.i_crit_edge, %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %94, %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge ], [ %add22.i.i.i, %cleanup.sink.split.i.i.i ], [ %94, %while.body.i.i.i.UniToupper.exit.i.i_crit_edge ], [ %94, %if.end24.i.i.i.UniToupper.exit.i.i_crit_edge ]
  %105 = call i16 @llvm.bswap.i16(i16 %retval.0.i.i.i) #9
  %106 = ptrtoint ptr %up.04.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %up.04.i.i, align 2
  %incdec.ptr.i.i = getelementptr i16, ptr %up.04.i.i, i32 1
  %107 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr.i.i, align 2
  %tobool.not.i309.i = icmp eq i16 %108, 0
  br i1 %tobool.not.i309.i, label %UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge, label %UniToupper.exit.i.i.while.body.i.i_crit_edge

UniToupper.exit.i.i.while.body.i.i_crit_edge:     ; preds = %UniToupper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge:   ; preds = %UniToupper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %UniStrupr.exit.i

UniStrupr.exit.i:                                 ; preds = %UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge, %if.then64.i.UniStrupr.exit.i_crit_edge
  %phi.bo.i = shl i32 %call66.i, 1
  br label %if.end68.i

if.else.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %call9.i.i328 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %call9.i.i328, align 128
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else.i, %UniStrupr.exit.i
  %len.0.i = phi i32 [ %phi.bo.i, %UniStrupr.exit.i ], [ 0, %if.else.i ]
  %110 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %server, align 8
  %sdeschmacmd571.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %111, i32 0, i32 50, i32 5
  %112 = ptrtoint ptr %sdeschmacmd571.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sdeschmacmd571.i, align 4
  %call74.i = call i32 @crypto_shash_update(ptr noundef %113, ptr noundef nonnull %call9.i.i328, i32 noundef %len.0.i) #9
  call void @kfree(ptr noundef nonnull %call9.i.i328) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end92.i, label %do.body78.i

do.body78.i:                                      ; preds = %if.end68.i
  %call79.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.70, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %do.body78.i.do.body92_crit_edge, label %do.body78.i.do.body92.sink.split_crit_edge

do.body78.i.do.body92.sink.split_crit_edge:       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body78.i.do.body92_crit_edge:                  ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end92.i:                                       ; preds = %if.end68.i
  %domainName.i335 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 18
  %114 = ptrtoint ptr %domainName.i335 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %domainName.i335, align 4
  %tobool93.not.i = icmp eq ptr %115, null
  br i1 %tobool93.not.i, label %if.else129.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %call96.i = call i32 @strlen(ptr noundef nonnull %115) #15
  %mul97.i = shl i32 %call96.i, 1
  %add98.i = add i32 %mul97.i, 2
  %call9.i272.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add98.i, i32 noundef 3264) #14
  %cmp100.i = icmp eq ptr %call9.i272.i, null
  br i1 %cmp100.i, label %if.then94.i.do.body92_crit_edge, label %if.end102.i

if.then94.i.do.body92_crit_edge:                  ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end102.i:                                      ; preds = %if.then94.i
  %116 = ptrtoint ptr %domainName.i335 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %domainName.i335, align 4
  %call104.i = call i32 @cifs_strtoUTF16(ptr noundef nonnull %call9.i272.i, ptr noundef %117, i32 noundef %call96.i, ptr noundef nonnull %nls_cp) #9
  %118 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %server, align 8
  %sdeschmacmd5107.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %119, i32 0, i32 50, i32 5
  %120 = ptrtoint ptr %sdeschmacmd5107.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sdeschmacmd5107.i, align 4
  %mul109.i = shl i32 %call104.i, 1
  %call110.i = call i32 @crypto_shash_update(ptr noundef %121, ptr noundef nonnull %call9.i272.i, i32 noundef %mul109.i) #9
  call void @kfree(ptr noundef nonnull %call9.i272.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end102.i.if.end165.i_crit_edge, label %do.body114.i

if.end102.i.if.end165.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165.i

do.body114.i:                                     ; preds = %if.end102.i
  %call115.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.74, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %do.body114.i.do.body92_crit_edge, label %do.body114.i.do.body92.sink.split_crit_edge

do.body114.i.do.body92.sink.split_crit_edge:      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body114.i.do.body92_crit_edge:                 ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.else129.i:                                     ; preds = %if.end92.i
  %ip_addr.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 16
  %call131.i = call i32 @strlen(ptr noundef %ip_addr.i) #15
  %mul132.i = shl i32 %call131.i, 1
  %add133.i = add i32 %mul132.i, 2
  %call9.i301.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add133.i, i32 noundef 3264) #14
  %cmp135.i = icmp eq ptr %call9.i301.i, null
  br i1 %cmp135.i, label %if.else129.i.do.body92_crit_edge, label %if.end137.i

if.else129.i.do.body92_crit_edge:                 ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end137.i:                                      ; preds = %if.else129.i
  %call140.i = call i32 @cifs_strtoUTF16(ptr noundef nonnull %call9.i301.i, ptr noundef %ip_addr.i, i32 noundef %call131.i, ptr noundef nonnull %nls_cp) #9
  %122 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %server, align 8
  %sdeschmacmd5143.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %123, i32 0, i32 50, i32 5
  %124 = ptrtoint ptr %sdeschmacmd5143.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sdeschmacmd5143.i, align 4
  %mul145.i = shl i32 %call140.i, 1
  %call146.i = call i32 @crypto_shash_update(ptr noundef %125, ptr noundef nonnull %call9.i301.i, i32 noundef %mul145.i) #9
  call void @kfree(ptr noundef nonnull %call9.i301.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end137.i.if.end165.i_crit_edge, label %do.body150.i

if.end137.i.if.end165.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165.i

do.body150.i:                                     ; preds = %if.end137.i
  %call151.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.78, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %do.body150.i.do.body92_crit_edge, label %do.body150.i.do.body92.sink.split_crit_edge

do.body150.i.do.body92.sink.split_crit_edge:      ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body150.i.do.body92_crit_edge:                 ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end165.i:                                      ; preds = %if.end137.i.if.end165.i_crit_edge, %if.end102.i.if.end165.i_crit_edge
  %126 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %server, align 8
  %sdeschmacmd5168.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %127, i32 0, i32 50, i32 5
  %128 = ptrtoint ptr %sdeschmacmd5168.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sdeschmacmd5168.i, align 4
  %call170.i = call i32 @crypto_shash_final(ptr noundef %129, ptr noundef nonnull %ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170.i)
  %tobool171.not.i = icmp eq i32 %call170.i, 0
  br i1 %tobool171.not.i, label %if.end106, label %do.body174.i

do.body174.i:                                     ; preds = %if.end165.i
  %call175.i = call i32 @___ratelimit(ptr noundef nonnull @calc_ntlmv2_hash._rs.82, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  br i1 %tobool176.not.i, label %do.body174.i.do.body92_crit_edge, label %do.body174.i.do.body92.sink.split_crit_edge

do.body174.i.do.body92.sink.split_crit_edge:      ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92.sink.split

do.body174.i.do.body92_crit_edge:                 ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

do.body92.sink.split:                             ; preds = %do.body174.i.do.body92.sink.split_crit_edge, %do.body150.i.do.body92.sink.split_crit_edge, %do.body114.i.do.body92.sink.split_crit_edge, %do.body78.i.do.body92.sink.split_crit_edge, %do.body42.i.do.body92.sink.split_crit_edge, %do.body20.i.do.body92.sink.split_crit_edge, %do.body2.i.do.body92.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.62, %do.body2.i.do.body92.sink.split_crit_edge ], [ @.str.65, %do.body20.i.do.body92.sink.split_crit_edge ], [ @.str.44, %do.body42.i.do.body92.sink.split_crit_edge ], [ @.str.72, %do.body78.i.do.body92.sink.split_crit_edge ], [ @.str.76, %do.body114.i.do.body92.sink.split_crit_edge ], [ @.str.80, %do.body150.i.do.body92.sink.split_crit_edge ], [ @.str.52, %do.body174.i.do.body92.sink.split_crit_edge ]
  %retval.0.i336.ph.ph = phi i32 [ -1, %do.body2.i.do.body92.sink.split_crit_edge ], [ %call16.i, %do.body20.i.do.body92.sink.split_crit_edge ], [ %retval.0.i312.i, %do.body42.i.do.body92.sink.split_crit_edge ], [ %call74.i, %do.body78.i.do.body92.sink.split_crit_edge ], [ %call110.i, %do.body114.i.do.body92.sink.split_crit_edge ], [ %call146.i, %do.body150.i.do.body92.sink.split_crit_edge ], [ %call170.i, %do.body174.i.do.body92.sink.split_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.62.sink, ptr noundef nonnull @__func__.calc_ntlmv2_hash) #12
  br label %do.body92

do.body92:                                        ; preds = %do.body92.sink.split, %do.body174.i.do.body92_crit_edge, %do.body150.i.do.body92_crit_edge, %if.else129.i.do.body92_crit_edge, %do.body114.i.do.body92_crit_edge, %if.then94.i.do.body92_crit_edge, %do.body78.i.do.body92_crit_edge, %if.end8.i.i329.do.body92_crit_edge, %do.body42.i.do.body92_crit_edge, %do.body20.i.do.body92_crit_edge, %do.body2.i.do.body92_crit_edge
  %retval.0.i336.ph = phi i32 [ %call170.i, %do.body174.i.do.body92_crit_edge ], [ %call146.i, %do.body150.i.do.body92_crit_edge ], [ -12, %if.else129.i.do.body92_crit_edge ], [ %call110.i, %do.body114.i.do.body92_crit_edge ], [ -12, %if.then94.i.do.body92_crit_edge ], [ %call74.i, %do.body78.i.do.body92_crit_edge ], [ -12, %if.end8.i.i329.do.body92_crit_edge ], [ %retval.0.i312.i, %do.body42.i.do.body92_crit_edge ], [ %call16.i, %do.body20.i.do.body92_crit_edge ], [ -1, %do.body2.i.do.body92_crit_edge ], [ %retval.0.i336.ph.ph, %do.body92.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nt_hash.i) #9
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.30, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.unlock_crit_edge, label %do.end98

do.body92.unlock_crit_edge:                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %retval.0.i336.ph) #12
  br label %unlock

if.end106:                                        ; preds = %if.end165.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nt_hash.i) #9
  %130 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %response, align 4
  %add.ptr.i339 = getelementptr i8, ptr %131, i32 16
  %132 = ptrtoint ptr %auth_key.i293 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %auth_key.i293, align 8
  %sub.i = add i32 %133, -24
  %134 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %server, align 8
  %sdeschmacmd5.i340 = getelementptr inbounds %struct.TCP_Server_Info, ptr %135, i32 0, i32 50, i32 5
  %136 = ptrtoint ptr %sdeschmacmd5.i340 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sdeschmacmd5.i340, align 4
  %tobool.not.i341 = icmp eq ptr %137, null
  br i1 %tobool.not.i341, label %do.body2.i344, label %if.end11.i345

do.body2.i344:                                    ; preds = %if.end106
  %call.i342 = call i32 @___ratelimit(ptr noundef nonnull @CalcNTLMv2_response._rs, ptr noundef nonnull @__func__.CalcNTLMv2_response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool3.not.i343 = icmp eq i32 %call.i342, 0
  br i1 %tobool3.not.i343, label %do.body2.i344.do.body112_crit_edge, label %do.body2.i344.cleanup.sink.split.i_crit_edge

do.body2.i344.cleanup.sink.split.i_crit_edge:     ; preds = %do.body2.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body2.i344.do.body112_crit_edge:               ; preds = %do.body2.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.end11.i345:                                    ; preds = %if.end106
  %secmech.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %135, i32 0, i32 50
  %138 = ptrtoint ptr %secmech.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %secmech.i, align 4
  %call14.i = call i32 @crypto_shash_setkey(ptr noundef %139, ptr noundef nonnull %ntlmv2_hash, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end32.i, label %do.body18.i

do.body18.i:                                      ; preds = %if.end11.i345
  %call19.i = call i32 @___ratelimit(ptr noundef nonnull @CalcNTLMv2_response._rs.85, ptr noundef nonnull @__func__.CalcNTLMv2_response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.body18.i.do.body112_crit_edge, label %do.body18.i.cleanup.sink.split.i_crit_edge

do.body18.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body18.i.do.body112_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.end32.i:                                       ; preds = %if.end11.i345
  %140 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %server, align 8
  %sdeschmacmd535.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %141, i32 0, i32 50, i32 5
  %142 = ptrtoint ptr %sdeschmacmd535.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sdeschmacmd535.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 8
  %base.i.i.i.i346 = getelementptr inbounds %struct.crypto_shash, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %base.i.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %base.i.i.i.i346, align 128
  %and.i.i347 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i347)
  %tobool.not.i.i348 = icmp eq i32 %and.i.i347, 0
  br i1 %tobool.not.i.i348, label %crypto_shash_init.exit.i352, label %if.end32.i.do.body40.i_crit_edge

if.end32.i.do.body40.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40.i

crypto_shash_init.exit.i352:                      ; preds = %if.end32.i
  %__crt_alg.i.i.i349 = getelementptr inbounds %struct.crypto_shash, ptr %145, i32 0, i32 2, i32 3
  %148 = ptrtoint ptr %__crt_alg.i.i.i349 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %__crt_alg.i.i.i349, align 4
  %add.ptr.i.i.i.i350 = getelementptr i8, ptr %149, i32 -256
  %150 = ptrtoint ptr %add.ptr.i.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i.i.i.i350, align 128
  %call3.i.i351 = call i32 %151(ptr noundef %143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i351)
  %tobool37.not.i = icmp eq i32 %call3.i.i351, 0
  br i1 %tobool37.not.i, label %if.end54.i, label %crypto_shash_init.exit.i352.do.body40.i_crit_edge

crypto_shash_init.exit.i352.do.body40.i_crit_edge: ; preds = %crypto_shash_init.exit.i352
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40.i

do.body40.i:                                      ; preds = %crypto_shash_init.exit.i352.do.body40.i_crit_edge, %if.end32.i.do.body40.i_crit_edge
  %retval.0.i137.i = phi i32 [ %call3.i.i351, %crypto_shash_init.exit.i352.do.body40.i_crit_edge ], [ -126, %if.end32.i.do.body40.i_crit_edge ]
  %call41.i = call i32 @___ratelimit(ptr noundef nonnull @CalcNTLMv2_response._rs.88, ptr noundef nonnull @__func__.CalcNTLMv2_response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body40.i.do.body112_crit_edge, label %do.body40.i.cleanup.sink.split.i_crit_edge

do.body40.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body40.i.do.body112_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.end54.i:                                       ; preds = %crypto_shash_init.exit.i352
  %152 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %server, align 8
  %negflavor.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %153, i32 0, i32 51
  %154 = ptrtoint ptr %negflavor.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %negflavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %155)
  %cmp.i353 = icmp eq i8 %155, 2
  br i1 %cmp.i353, label %if.then57.i, label %if.else.i354

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %ntlmssp.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %156 = ptrtoint ptr %ntlmssp.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ntlmssp.i, align 8
  %cryptkey.i = getelementptr inbounds %struct.ntlmssp_auth, ptr %157, i32 0, i32 4
  br label %if.end64.i

if.else.i354:                                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %cryptkey62.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %153, i32 0, i32 44
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i354, %if.then57.i
  %.sink.in.i = phi ptr [ %cryptkey.i, %if.then57.i ], [ %cryptkey62.i, %if.else.i354 ]
  %158 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 8)
  %.sink.i = load i64, ptr %.sink.in.i, align 4
  %159 = getelementptr i8, ptr %131, i32 24
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 8)
  store i64 %.sink.i, ptr %159, align 1
  %161 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %server, align 8
  %sdeschmacmd567.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %162, i32 0, i32 50, i32 5
  %163 = ptrtoint ptr %sdeschmacmd567.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sdeschmacmd567.i, align 4
  %call71.i = call i32 @crypto_shash_update(ptr noundef %164, ptr noundef %159, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end89.i, label %do.body75.i

do.body75.i:                                      ; preds = %if.end64.i
  %call76.i = call i32 @___ratelimit(ptr noundef nonnull @CalcNTLMv2_response._rs.91, ptr noundef nonnull @__func__.CalcNTLMv2_response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %do.body75.i.do.body112_crit_edge, label %do.body75.i.cleanup.sink.split.i_crit_edge

do.body75.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body75.i.do.body112_crit_edge:                 ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.end89.i:                                       ; preds = %if.end64.i
  %165 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %server, align 8
  %sdeschmacmd592.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %166, i32 0, i32 50, i32 5
  %167 = ptrtoint ptr %sdeschmacmd592.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sdeschmacmd592.i, align 4
  %call95.i = call i32 @crypto_shash_final(ptr noundef %168, ptr noundef %add.ptr.i339) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end126, label %do.body99.i

do.body99.i:                                      ; preds = %if.end89.i
  %call100.i = call i32 @___ratelimit(ptr noundef nonnull @CalcNTLMv2_response._rs.94, ptr noundef nonnull @__func__.CalcNTLMv2_response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %do.body99.i.do.body112_crit_edge, label %do.body99.i.cleanup.sink.split.i_crit_edge

do.body99.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body99.i.do.body112_crit_edge:                 ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

cleanup.sink.split.i:                             ; preds = %do.body99.i.cleanup.sink.split.i_crit_edge, %do.body75.i.cleanup.sink.split.i_crit_edge, %do.body40.i.cleanup.sink.split.i_crit_edge, %do.body18.i.cleanup.sink.split.i_crit_edge, %do.body2.i344.cleanup.sink.split.i_crit_edge
  %.str.52.sink.i = phi ptr [ @.str.62, %do.body2.i344.cleanup.sink.split.i_crit_edge ], [ @.str.40, %do.body18.i.cleanup.sink.split.i_crit_edge ], [ @.str.44, %do.body40.i.cleanup.sink.split.i_crit_edge ], [ @.str.48, %do.body75.i.cleanup.sink.split.i_crit_edge ], [ @.str.52, %do.body99.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -1, %do.body2.i344.cleanup.sink.split.i_crit_edge ], [ %call14.i, %do.body18.i.cleanup.sink.split.i_crit_edge ], [ %retval.0.i137.i, %do.body40.i.cleanup.sink.split.i_crit_edge ], [ %call71.i, %do.body75.i.cleanup.sink.split.i_crit_edge ], [ %call95.i, %do.body99.i.cleanup.sink.split.i_crit_edge ]
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.52.sink.i, ptr noundef nonnull @__func__.CalcNTLMv2_response) #12
  br label %do.body112

do.body112:                                       ; preds = %cleanup.sink.split.i, %do.body99.i.do.body112_crit_edge, %do.body75.i.do.body112_crit_edge, %do.body40.i.do.body112_crit_edge, %do.body18.i.do.body112_crit_edge, %do.body2.i344.do.body112_crit_edge
  %retval.0.i355.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call95.i, %do.body99.i.do.body112_crit_edge ], [ %call71.i, %do.body75.i.do.body112_crit_edge ], [ %retval.0.i137.i, %do.body40.i.do.body112_crit_edge ], [ %call14.i, %do.body18.i.do.body112_crit_edge ], [ -1, %do.body2.i344.do.body112_crit_edge ]
  %call113 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.34, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body112.unlock_crit_edge, label %do.end118

do.body112.unlock_crit_edge:                      ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %retval.0.i355.ph) #12
  br label %unlock

if.end126:                                        ; preds = %if.end89.i
  %169 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %server, align 8
  %secmech128 = getelementptr inbounds %struct.TCP_Server_Info, ptr %170, i32 0, i32 50
  %171 = ptrtoint ptr %secmech128 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %secmech128, align 4
  %call131 = call i32 @crypto_shash_setkey(ptr noundef %172, ptr noundef nonnull %ntlmv2_hash, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end149, label %do.body135

do.body135:                                       ; preds = %if.end126
  %call136 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.38, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %do.body135.unlock_crit_edge, label %do.end141

do.body135.unlock_crit_edge:                      ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #12
  br label %unlock

if.end149:                                        ; preds = %if.end126
  %173 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %server, align 8
  %sdeschmacmd5152 = getelementptr inbounds %struct.TCP_Server_Info, ptr %174, i32 0, i32 50, i32 5
  %175 = ptrtoint ptr %sdeschmacmd5152 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sdeschmacmd5152, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i356 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i356, label %crypto_shash_init.exit, label %if.end149.do.body157_crit_edge

if.end149.do.body157_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body157

crypto_shash_init.exit:                           ; preds = %if.end149
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %178, i32 0, i32 2, i32 3
  %181 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %182, i32 -256
  %183 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %184(ptr noundef %176) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool154.not = icmp eq i32 %call3.i, 0
  br i1 %tobool154.not, label %if.end171, label %crypto_shash_init.exit.do.body157_crit_edge

crypto_shash_init.exit.do.body157_crit_edge:      ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body157

do.body157:                                       ; preds = %crypto_shash_init.exit.do.body157_crit_edge, %if.end149.do.body157_crit_edge
  %retval.0.i358375 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body157_crit_edge ], [ -126, %if.end149.do.body157_crit_edge ]
  %call158 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.42, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %do.body157.unlock_crit_edge, label %do.end163

do.body157.unlock_crit_edge:                      ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #11
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #12
  br label %unlock

if.end171:                                        ; preds = %crypto_shash_init.exit
  %185 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %server, align 8
  %sdeschmacmd5174 = getelementptr inbounds %struct.TCP_Server_Info, ptr %186, i32 0, i32 50, i32 5
  %187 = ptrtoint ptr %sdeschmacmd5174 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sdeschmacmd5174, align 4
  %call177 = call i32 @crypto_shash_update(ptr noundef %188, ptr noundef %add.ptr, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end195, label %do.body181

do.body181:                                       ; preds = %if.end171
  %call182 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.46, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %do.body181.unlock_crit_edge, label %do.end187

do.body181.unlock_crit_edge:                      ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end187:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #12
  br label %unlock

if.end195:                                        ; preds = %if.end171
  %189 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %server, align 8
  %sdeschmacmd5198 = getelementptr inbounds %struct.TCP_Server_Info, ptr %190, i32 0, i32 50, i32 5
  %191 = ptrtoint ptr %sdeschmacmd5198 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sdeschmacmd5198, align 4
  %193 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %response, align 4
  %call202 = call i32 @crypto_shash_final(ptr noundef %192, ptr noundef %194) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end195.unlock_crit_edge, label %do.body206

if.end195.unlock_crit_edge:                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.body206:                                       ; preds = %if.end195
  %call207 = call i32 @___ratelimit(ptr noundef nonnull @setup_ntlmv2_rsp._rs.50, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %do.body206.unlock_crit_edge, label %do.end212

do.body206.unlock_crit_edge:                      ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end212:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.setup_ntlmv2_rsp) #12
  br label %unlock

unlock:                                           ; preds = %do.end212, %do.body206.unlock_crit_edge, %if.end195.unlock_crit_edge, %do.end187, %do.body181.unlock_crit_edge, %do.end163, %do.body157.unlock_crit_edge, %do.end141, %do.body135.unlock_crit_edge, %do.end118, %do.body112.unlock_crit_edge, %do.end98, %do.body92.unlock_crit_edge, %if.end71.unlock_crit_edge
  %rc.0 = phi i32 [ %call84, %if.end71.unlock_crit_edge ], [ %retval.0.i336.ph, %do.end98 ], [ %retval.0.i336.ph, %do.body92.unlock_crit_edge ], [ %retval.0.i355.ph, %do.end118 ], [ %retval.0.i355.ph, %do.body112.unlock_crit_edge ], [ %call131, %do.end141 ], [ %call131, %do.body135.unlock_crit_edge ], [ %retval.0.i358375, %do.end163 ], [ %retval.0.i358375, %do.body157.unlock_crit_edge ], [ %call177, %do.end187 ], [ %call177, %do.body181.unlock_crit_edge ], [ %call202, %do.end212 ], [ %call202, %do.body206.unlock_crit_edge ], [ 0, %if.end195.unlock_crit_edge ]
  %195 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %server, align 8
  %srv_mutex222 = getelementptr inbounds %struct.TCP_Server_Info, ptr %196, i32 0, i32 25
  call void @mutex_unlock(ptr noundef %srv_mutex222) #9
  br label %setup_ntlmv2_rsp_ret

setup_ntlmv2_rsp_ret:                             ; preds = %unlock, %if.then68, %do.end50, %do.body44.setup_ntlmv2_rsp_ret_crit_edge, %do.end26, %do.body20.setup_ntlmv2_rsp_ret_crit_edge
  %tiblob.0 = phi ptr [ %48, %unlock ], [ %48, %if.then68 ], [ null, %do.end26 ], [ null, %do.body20.setup_ntlmv2_rsp_ret_crit_edge ], [ null, %do.end50 ], [ null, %do.body44.setup_ntlmv2_rsp_ret_crit_edge ]
  %rc.1 = phi i32 [ %rc.0, %unlock ], [ -12, %if.then68 ], [ -12, %do.end26 ], [ -12, %do.body20.setup_ntlmv2_rsp_ret_crit_edge ], [ -12, %do.end50 ], [ -12, %do.body44.setup_ntlmv2_rsp_ret_crit_edge ]
  call void @kfree(ptr noundef %tiblob.0) #9
  br label %cleanup

cleanup:                                          ; preds = %setup_ntlmv2_rsp_ret, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %setup_ntlmv2_rsp_ret ], [ -22, %do.end ], [ -22, %do.body1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ntlmv2_hash) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_alloc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calc_seckey(ptr nocapture noundef %ses) local_unnamed_addr #0 align 64 {
entry:
  %sec_key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sec_key) #9
  %0 = call ptr @memset(ptr %sec_key, i32 255, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %sec_key, i32 noundef 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 1032) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.body1, label %if.end11

do.body1:                                         ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @calc_seckey._rs, ptr noundef nonnull @__func__.calc_seckey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %auth_key = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %response, align 4
  %call12 = call i32 @cifs_arc4_setkey(ptr noundef nonnull %call7.i, ptr noundef %3, i32 noundef 16) #9
  %ntlmssp = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 22
  %4 = ptrtoint ptr %ntlmssp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ntlmssp, align 8
  %ciphertext = getelementptr inbounds %struct.ntlmssp_auth, ptr %5, i32 0, i32 3
  call void @cifs_arc4_crypt(ptr noundef nonnull %call7.i, ptr noundef %ciphertext, ptr noundef nonnull %sec_key, i32 noundef 16) #9
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %response, align 4
  %8 = call ptr @memcpy(ptr %7, ptr %sec_key, i32 16)
  %9 = ptrtoint ptr %auth_key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %auth_key, align 8
  %10 = call ptr @memset(ptr %sec_key, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %sec_key) #9, !srcloc !171
  call void @kfree_sensitive(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %do.end ], [ -12, %do.body1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sec_key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_crypto_secmech_release(ptr nocapture noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %secmech = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50
  %cmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 3
  %0 = ptrtoint ptr %cmacaes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmacaes, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #9
  %2 = ptrtoint ptr %cmacaes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cmacaes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 2
  %3 = ptrtoint ptr %hmacsha256 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmacsha256, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i104 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i104) #9
  %5 = ptrtoint ptr %hmacsha256 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hmacsha256, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %md5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 1
  %6 = ptrtoint ptr %md5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md5, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i105 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %7, ptr noundef %base.i.i105) #9
  %8 = ptrtoint ptr %md5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %md5, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %sha512 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 4
  %9 = ptrtoint ptr %sha512 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sha512, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i106 = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %10, ptr noundef %base.i.i106) #9
  %11 = ptrtoint ptr %sha512 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sha512, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end20.if.end28_crit_edge
  %12 = ptrtoint ptr %secmech to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %secmech, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %if.end28.if.end36_crit_edge, label %if.then31

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i107 = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %13, ptr noundef %base.i.i107) #9
  %14 = ptrtoint ptr %secmech to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %secmech, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28.if.end36_crit_edge
  %ccmaesencrypt = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 10
  %15 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ccmaesencrypt, align 4
  %tobool38.not = icmp eq ptr %16, null
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i108 = getelementptr inbounds %struct.crypto_aead, ptr %16, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %16, ptr noundef %base.i.i108) #9
  %17 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ccmaesencrypt, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %ccmaesdecrypt = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 11
  %18 = ptrtoint ptr %ccmaesdecrypt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccmaesdecrypt, align 4
  %tobool46.not = icmp eq ptr %19, null
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.then47

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i109 = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %19, ptr noundef %base.i.i109) #9
  %20 = ptrtoint ptr %ccmaesdecrypt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ccmaesdecrypt, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  %sdesccmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 8
  %21 = ptrtoint ptr %sdesccmacaes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdesccmacaes, align 4
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %sdesccmacaes to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sdesccmacaes, align 4
  %sdeschmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 7
  %24 = ptrtoint ptr %sdeschmacsha256 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdeschmacsha256, align 4
  tail call void @kfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %sdeschmacsha256 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sdeschmacsha256, align 4
  %sdeschmacmd5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 5
  %27 = ptrtoint ptr %sdeschmacmd5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdeschmacmd5, align 4
  tail call void @kfree(ptr noundef %28) #9
  %29 = ptrtoint ptr %sdeschmacmd5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sdeschmacmd5, align 4
  %sdescmd5 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 6
  %30 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdescmd5, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sdescmd5, align 4
  %sdescsha512 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 9
  %33 = ptrtoint ptr %sdescsha512 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdescsha512, align 4
  tail call void @kfree(ptr noundef %34) #9
  %35 = ptrtoint ptr %sdescsha512 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sdescsha512, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_from_utf16(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strtoUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cifs_UnixTimeToNT([2 x i64]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @E_md4hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifsencrypt.c", i32 52, i32 4}
!2 = !{ptr @__cifs_calc_signature._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.__cifs_calc_signature, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__cifs_calc_signature._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__cifs_calc_signature._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__cifs_calc_signature._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/cifsencrypt.c", i32 59, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__cifs_calc_signature._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @__cifs_calc_signature._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__cifs_calc_signature._rs.7, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/cifsencrypt.c", i32 76, i32 4}
!15 = !{ptr @__cifs_calc_signature._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @__cifs_calc_signature._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__cifs_calc_signature._rs.10, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/cifs/cifsencrypt.c", i32 87, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__cifs_calc_signature._entry.11, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @__cifs_calc_signature._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/cifs/cifsencrypt.c", i32 153, i32 49}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/cifs/cifsencrypt.c", i32 227, i32 52}
!26 = !{ptr @cifs_verify_signature._rs, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../fs/cifs/cifsencrypt.c", i32 228, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cifs_verify_signature.descriptor, !27, !"descriptor", i1 false, i1 false}
!32 = !{ptr @setup_ntlmv2_rsp._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../fs/cifs/cifsencrypt.c", i32 575, i32 3}
!34 = !{ptr @__func__.setup_ntlmv2_rsp, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @setup_ntlmv2_rsp._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @setup_ntlmv2_rsp._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @setup_ntlmv2_rsp._rs.20, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/cifsencrypt.c", i32 584, i32 6}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @setup_ntlmv2_rsp._entry.21, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @setup_ntlmv2_rsp._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/cifs/cifsencrypt.c", i32 589, i32 31}
!45 = !{ptr @setup_ntlmv2_rsp._rs.25, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../fs/cifs/cifsencrypt.c", i32 595, i32 4}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @setup_ntlmv2_rsp._entry.26, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @setup_ntlmv2_rsp._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/cifs/cifsencrypt.c", i32 631, i32 23}
!52 = !{ptr @setup_ntlmv2_rsp._rs.30, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../fs/cifs/cifsencrypt.c", i32 641, i32 3}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @setup_ntlmv2_rsp._entry.31, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @setup_ntlmv2_rsp._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @setup_ntlmv2_rsp._rs.34, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../fs/cifs/cifsencrypt.c", i32 648, i32 3}
!59 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @setup_ntlmv2_rsp._entry.35, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @setup_ntlmv2_rsp._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @setup_ntlmv2_rsp._rs.38, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../fs/cifs/cifsencrypt.c", i32 656, i32 3}
!64 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @setup_ntlmv2_rsp._entry.39, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @setup_ntlmv2_rsp._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @setup_ntlmv2_rsp._rs.42, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/cifsencrypt.c", i32 663, i32 3}
!69 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @setup_ntlmv2_rsp._entry.43, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @setup_ntlmv2_rsp._entry_ptr.45, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @setup_ntlmv2_rsp._rs.46, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../fs/cifs/cifsencrypt.c", i32 671, i32 3}
!74 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @setup_ntlmv2_rsp._entry.47, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @setup_ntlmv2_rsp._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @setup_ntlmv2_rsp._rs.50, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../fs/cifs/cifsencrypt.c", i32 678, i32 3}
!79 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @setup_ntlmv2_rsp._entry.51, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @setup_ntlmv2_rsp._entry_ptr.53, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @calc_seckey._rs, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../fs/cifs/cifsencrypt.c", i32 701, i32 3}
!84 = !{ptr @__func__.calc_seckey, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.54, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @calc_seckey._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @calc_seckey._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/cifs/cifsencrypt.c", i32 107, i32 23}
!92 = !{ptr @cifs_calc_signature._rs, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../fs/cifs/cifsencrypt.c", i32 114, i32 3}
!94 = !{ptr @__func__.cifs_calc_signature, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cifs_calc_signature._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @cifs_calc_signature._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @cifs_calc_signature._rs.58, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../fs/cifs/cifsencrypt.c", i32 121, i32 3}
!100 = !{ptr @cifs_calc_signature._entry.59, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cifs_calc_signature._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/cifs/cifsencrypt.c", i32 266, i32 20}
!104 = !{ptr @calc_ntlmv2_hash._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../fs/cifs/cifsencrypt.c", i32 417, i32 3}
!106 = !{ptr @__func__.calc_ntlmv2_hash, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @calc_ntlmv2_hash._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @calc_ntlmv2_hash._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @calc_ntlmv2_hash._rs.63, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../fs/cifs/cifsencrypt.c", i32 427, i32 3}
!112 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @calc_ntlmv2_hash._entry.64, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @calc_ntlmv2_hash._entry_ptr.66, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @calc_ntlmv2_hash._rs.67, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../fs/cifs/cifsencrypt.c", i32 433, i32 3}
!117 = !{ptr @calc_ntlmv2_hash._entry.68, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @calc_ntlmv2_hash._entry_ptr.69, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @calc_ntlmv2_hash._rs.70, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../fs/cifs/cifsencrypt.c", i32 456, i32 3}
!121 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @calc_ntlmv2_hash._entry.71, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @calc_ntlmv2_hash._entry_ptr.73, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @calc_ntlmv2_hash._rs.74, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/cifsencrypt.c", i32 476, i32 4}
!126 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @calc_ntlmv2_hash._entry.75, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @calc_ntlmv2_hash._entry_ptr.77, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @calc_ntlmv2_hash._rs.78, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../fs/cifs/cifsencrypt.c", i32 496, i32 4}
!131 = !{ptr @.str.80, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @calc_ntlmv2_hash._entry.79, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @calc_ntlmv2_hash._entry_ptr.81, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @calc_ntlmv2_hash._rs.82, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../fs/cifs/cifsencrypt.c", i32 505, i32 3}
!136 = !{ptr @calc_ntlmv2_hash._entry.83, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @calc_ntlmv2_hash._entry_ptr.84, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @CalcNTLMv2_response._rs, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../fs/cifs/cifsencrypt.c", i32 523, i32 3}
!140 = !{ptr @__func__.CalcNTLMv2_response, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @CalcNTLMv2_response._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @CalcNTLMv2_response._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @CalcNTLMv2_response._rs.85, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../fs/cifs/cifsencrypt.c", i32 530, i32 3}
!145 = !{ptr @CalcNTLMv2_response._entry.86, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @CalcNTLMv2_response._entry_ptr.87, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @CalcNTLMv2_response._rs.88, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../fs/cifs/cifsencrypt.c", i32 537, i32 3}
!149 = !{ptr @CalcNTLMv2_response._entry.89, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @CalcNTLMv2_response._entry_ptr.90, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @CalcNTLMv2_response._rs.91, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../fs/cifs/cifsencrypt.c", i32 550, i32 3}
!153 = !{ptr @CalcNTLMv2_response._entry.92, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @CalcNTLMv2_response._entry_ptr.93, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @CalcNTLMv2_response._rs.94, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/cifsencrypt.c", i32 558, i32 3}
!157 = !{ptr @CalcNTLMv2_response._entry.95, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @CalcNTLMv2_response._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{i8 0, i8 2}
!170 = !{i64 2148495521, i64 2148495526, i64 2148495539, i64 2148495583, i64 2148495617, i64 2148495638}
!171 = !{i64 2149251204}
