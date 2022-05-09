; ModuleID = '/llk/IR_all_yes/net/bluetooth/smp.c_pt.bc'
source_filename = "../net/bluetooth/smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.smp_dev = type { i8, [64 x i8], [16 x i8], i8, ptr, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.smp_chan = type { ptr, %struct.delayed_work, i32, [7 x i8], [7 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, %struct.bdaddr_t, i8, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [64 x i8], [64 x i8], [32 x i8], [16 x i8], ptr, ptr }
%struct.smp_cmd_pairing_confirm = type { [16 x i8] }
%struct.smp_cmd_pairing = type { i8, i8, i8, i8, i8, i8 }
%struct.smp_cmd_security_req = type { i8 }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.128, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.79, %union.anon.80 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { i64 }
%union.anon.128 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.smp_cmd_dhkey_check = type { [16 x i8] }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.smp_cmd_initiator_ident = type <{ i16, i64 }>
%struct.smp_cmd_ident_addr_info = type { i8, %struct.bdaddr_t }
%struct.smp_csrk = type { %struct.bdaddr_t, i8, i8, [16 x i8] }
%struct.smp_cmd_encrypt_info = type { [16 x i8] }
%struct.smp_cmd_ident_info = type { [16 x i8] }
%struct.smp_cmd_sign_info = type { [16 x i8] }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }

@smp_irk_matches.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp_irk_matches\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bluetooth/smp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RPA %pMR IRK %*phN\0A\00", [40 x i8] zeroinitializer }, align 32
@smp_generate_rpa.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smp_generate_rpa\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: RPA %pMR\0A\00", [18 x i8] zeroinitializer }, align 32
@smp_generate_oob.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smp_generate_oob\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Using debug keys\0A\00", [42 x i8] zeroinitializer }, align 32
@debug_sk = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\BD\1A<\CD\A6\B8\99X\99\B7@\EB{`\FFJP?\10\D2\E3\B3\C9t8_\C5\A3\D4\F6I?", [32 x i8] zeroinitializer }, align 32
@debug_pk = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\E6\9D5\0EH\01\03\CC\DB\FD\F4\AC\11\91\F4\EF\B9\A5\F9\E9\A7\83,^,\BE\97\F2\D2\03\B0 \8B\D2\89\15\D0\8E\1Ct$0\ED\8F\C2Ecv\\\15RZ\BF\9A2cm\EB*eI\9C\80\DC", [32 x i8] zeroinitializer }, align 32
@smp_user_confirm_reply.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smp_user_confirm_reply\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s: \0A\00", [26 x i8] zeroinitializer }, align 32
@smp_user_confirm_reply.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 1, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: PassKey: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@smp_conn_security.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 2, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smp_conn_security\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: conn %p hcon %p level 0x%2.2x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: security requested but not available\0A\00", [54 x i8] zeroinitializer }, align 32
@smp_register.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.9, i8 3, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smp_register\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create CMAC crypto context\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ecdh-nist-p256\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create ECDH crypto context\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Encrypt error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cipher setkey failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tfm %p\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hash computation error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sc_passkey_round.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc_passkey_round\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Starting passkey round %u\0A\00", [33 x i8] zeroinitializer }, align 32
@__const.smp_f5.salt = private unnamed_addr constant [16 x i8] c"\BE\83`Z\DB\0B7`8\A5\F5\AA\91\83\88l", align 1
@hci_conn_drop.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hcon %p orig refcnt %d\0A\00", [40 x i8] zeroinitializer }, align 32
@smp_confirm.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smp_confirm\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: conn %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Encrypt data error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unable to create CMAC crypto context\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unable to create ECDH crypto context\0A\00", [54 x i8] zeroinitializer }, align 32
@smp_chan_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&smp->security_timer)->work)\00", [47 x i8] zeroinitializer }, align 32
@smp_chan_create.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&smp->security_timer)->timer\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smp_timeout.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.29, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smp_timeout\00", [20 x i8] zeroinitializer }, align 32
@hci_conn_hold.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.26, ptr @.str.27, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_hold\00", [18 x i8] zeroinitializer }, align 32
@smp_send_cmd.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smp_send_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: code 0x%2.2x\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hci_conn_hash_lookup_le.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smp_root_chan_ops = internal constant { %struct.l2cap_ops, [36 x i8] } { %struct.l2cap_ops { ptr @.str.44, ptr @smp_new_conn_cb, ptr @l2cap_chan_no_recv, ptr @l2cap_chan_no_teardown, ptr @l2cap_chan_no_close, ptr @l2cap_chan_no_state_change, ptr @l2cap_chan_no_ready, ptr @l2cap_chan_no_defer, ptr @l2cap_chan_no_resume, ptr @l2cap_chan_no_suspend, ptr @l2cap_chan_no_set_shutdown, ptr @l2cap_chan_no_get_sndtimeo, ptr null, ptr @l2cap_chan_no_alloc_skb, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Security Manager Root\00", [42 x i8] zeroinitializer }, align 32
@smp_new_conn_cb.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 3, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp_new_conn_cb\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pchan %p\0A\00", [22 x i8] zeroinitializer }, align 32
@smp_chan_ops = internal constant { %struct.l2cap_ops, [36 x i8] } { %struct.l2cap_ops { ptr @.str.48, ptr @l2cap_chan_no_new_connection, ptr @smp_recv_cb, ptr @smp_teardown_cb, ptr @l2cap_chan_no_close, ptr @l2cap_chan_no_state_change, ptr @smp_ready_cb, ptr @l2cap_chan_no_defer, ptr @smp_resume_cb, ptr @l2cap_chan_no_suspend, ptr @l2cap_chan_no_set_shutdown, ptr @l2cap_chan_no_get_sndtimeo, ptr null, ptr @smp_alloc_skb_cb, ptr null }, [36 x i8] zeroinitializer }, align 32
@smp_new_conn_cb.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 3, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"created chan %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Security Manager\00", [47 x i8] zeroinitializer }, align 32
@smp_recv_cb.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 3, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smp_recv_cb\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: chan %p\0A\00", [19 x i8] zeroinitializer }, align 32
@smp_sig_channel.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp_sig_channel\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Unknown command code 0x%2.2x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unexpected SMP command 0x%02x from %pMR\0A\00", [51 x i8] zeroinitializer }, align 32
@smp_cmd_pairing_req.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.29, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_cmd_pairing_req\00", [44 x i8] zeroinitializer }, align 32
@smp_distribute_keys.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.29, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_distribute_keys\00", [44 x i8] zeroinitializer }, align 32
@smp_distribute_keys.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: keydist 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__const.sc_generate_link_key.salt = private unnamed_addr constant <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 49, i8 112, i8 109, i8 116, [12 x i8] zeroinitializer }>, align 1
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: no Link Key found to generate LTK\0A\00", [57 x i8] zeroinitializer }, align 32
@__const.sc_generate_ltk.salt = private unnamed_addr constant <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 50, i8 112, i8 109, i8 116, [12 x i8] zeroinitializer }>, align 1
@sc_method = internal constant { [5 x [5 x i8]], [39 x i8] } { [5 x [5 x i8]] [[5 x i8] c"\00\01\02\00\02", [5 x i8] c"\00\03\02\00\03", [5 x i8] c"\05\05\02\00\05", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\05\03\02\00\03"], [39 x i8] zeroinitializer }, align 32
@gen_method = internal constant { [5 x [5 x i8]], [39 x i8] } { [5 x [5 x i8]] [[5 x i8] c"\00\01\02\00\02", [5 x i8] c"\00\01\02\00\02", [5 x i8] c"\03\03\02\00\03", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\03\03\02\00\FF"], [39 x i8] zeroinitializer }, align 32
@tk_request.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tk_request\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: auth:%u lcl:%u rem:%u\0A\00", [37 x i8] zeroinitializer }, align 32
@tk_request.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.10, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smp_cmd_pairing_rsp.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.29, i8 1, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_cmd_pairing_rsp\00", [44 x i8] zeroinitializer }, align 32
@sc_send_public_key.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.9, i8 1, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc_send_public_key\00", [45 x i8] zeroinitializer }, align 32
@sc_send_public_key.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.7, i8 1, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smp_cmd_security_req.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.29, i8 2, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smp_cmd_security_req\00", [43 x i8] zeroinitializer }, align 32
@smp_cmd_pairing_confirm.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 2, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smp_cmd_pairing_confirm\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: conn %p %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"responder\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unexpected SMP Pairing Confirm\0A\00", [60 x i8] zeroinitializer }, align 32
@sc_check_confirm.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.9, i8 1, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc_check_confirm\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: refusing legacy fallback in SC-only mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: trying to fall back to legacy SMP\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to fall back to legacy SMP\0A\00", [57 x i8] zeroinitializer }, align 32
@smp_cmd_pairing_random.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.29, i8 2, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smp_cmd_pairing_random\00", [41 x i8] zeroinitializer }, align 32
@smp_random.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.64, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smp_random\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: pairing failed (confirmation values mismatch)\0A\00", [45 x i8] zeroinitializer }, align 32
@smp_cmd_encrypt_info.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.29, i8 2, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smp_cmd_encrypt_info\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: LTK blocked for %pMR\00", [39 x i8] zeroinitializer }, align 32
@smp_cmd_initiator_ident.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.29, i8 2, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smp_cmd_initiator_ident\00", [40 x i8] zeroinitializer }, align 32
@smp_cmd_ident_info.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.9, i8 2, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smp_cmd_ident_info\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Identity key blocked for %pMR\00", [62 x i8] zeroinitializer }, align 32
@smp_cmd_ident_addr_info.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.9, i8 2, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smp_cmd_ident_addr_info\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ignoring IRK with no identity address\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ignoring IRK with invalid identity address\0A\00", [48 x i8] zeroinitializer }, align 32
@smp_cmd_sign_info.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.29, i8 2, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smp_cmd_sign_info\00", [46 x i8] zeroinitializer }, align 32
@smp_cmd_public_key.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.29, i8 2, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smp_cmd_public_key\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Remote and local public keys are identical\0A\00", [48 x i8] zeroinitializer }, align 32
@smp_cmd_public_key.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.86, i8 2, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: selected method 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@smp_cmd_dhkey_check.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.29, i8 2, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_cmd_dhkey_check\00", [44 x i8] zeroinitializer }, align 32
@smp_cmd_keypress_notify.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 2, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smp_cmd_keypress_notify\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: value 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@smp_teardown_cb.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.50, i8 2, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp_teardown_cb\00", [16 x i8] zeroinitializer }, align 32
@smp_ready_cb.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.50, i8 3, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smp_ready_cb\00", [19 x i8] zeroinitializer }, align 32
@bredr_pairing.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.50, i8 3, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bredr_pairing\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unable to create SMP context for BR/EDR\0A\00", [51 x i8] zeroinitializer }, align 32
@bredr_pairing.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.94, i8 3, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: starting SMP over BR/EDR\0A\00", [34 x i8] zeroinitializer }, align 32
@smp_resume_cb.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.50, i8 3, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smp_resume_cb\00", [18 x i8] zeroinitializer }, align 32
@smp_del_chan.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 3, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smp_del_chan\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chan %p\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"debug_key test failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_ah test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_c1 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_s1 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_f4 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_f5 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_f6 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_g2 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_h6 test failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMP test passed in %llu usecs\0A\00", [33 x i8] zeroinitializer }, align 32
@test_smp_buffer = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PASS (%llu usecs)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAIL\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"selftest_smp\00", [19 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@test_smp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @test_smp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.test_ah.r = private unnamed_addr constant [3 x i8] c"\94\81p", align 1
@__const.test_ah.exp = private unnamed_addr constant [3 x i8] c"\AA\FB\0D", align 1
@__const.test_c1.r = private unnamed_addr constant [16 x i8] c"\E0.p\C6N'\88c\0Eo\ADV!\D5\83W", align 1
@__const.test_c1.preq = private unnamed_addr constant [7 x i8] c"\01\01\00\00\10\07\07", align 1
@__const.test_c1.pres = private unnamed_addr constant [7 x i8] c"\02\03\00\00\08\00\05", align 1
@__const.test_c1.ra = private unnamed_addr constant %struct.bdaddr_t { [6 x i8] c"\B6\B5\B4\B3\B2\B1" }, align 1
@__const.test_c1.ia = private unnamed_addr constant %struct.bdaddr_t { [6 x i8] c"\A6\A5\A4\A3\A2\A1" }, align 1
@__const.test_c1.exp = private unnamed_addr constant [16 x i8] c"\86;\F1\BE\C5M\A7\D2\EA\88\89\87\EF?\1E\1E", align 1
@__const.test_s1.exp = private unnamed_addr constant [16 x i8] c"b\A0my\AE\16B[\9B\F4\B0\E8\F0\E1\1F\9A", align 1
@__const.test_f4.exp = private unnamed_addr constant [16 x i8] c"-\87t\A9\BE\A1\ED\F1\1C\BD\A9\07\F1\16\C9\F2", align 1
@__const.test_f5.w = private unnamed_addr constant [32 x i8] c"\98\A6\BFs\F34\8D\86\F1f\F8\B4\13ky\99\9B}9\0A\A6\10\104\05\AD\C8W\A34\02\EC", align 1
@__const.test_f5.exp_ltk = private unnamed_addr constant [16 x i8] c"8\0Au\94\B5\22\05\98#\CD\D7i\11y\86i", align 1
@__const.test_f6.w = private unnamed_addr constant [16 x i8] c" nc\CE j?\FD\02J\08\A1v\F1e)", align 1
@__const.test_f6.r = private unnamed_addr constant [16 x i8] c"\C8\0F-\0C\D2B\DA\08T\BBS\B4;4\A3\12", align 1
@__const.test_f6.io_cap = private unnamed_addr constant [3 x i8] c"\02\01\01", align 1
@__const.test_f6.a1 = private unnamed_addr constant [7 x i8] c"\CE\BF77\12V\00", align 1
@__const.test_f6.a2 = private unnamed_addr constant [7 x i8] c"\C1\CF-p\13\A7\00", align 1
@__const.test_f6.exp = private unnamed_addr constant [16 x i8] c"a\8F\95\DA\09\0Bl\D2\C5\E8\D0\9C\98s\C4\E3", align 1
@__const.test_g2.u = private unnamed_addr constant [32 x i8] c"\E6\9D5\0EH\01\03\CC\DB\FD\F4\AC\11\91\F4\EF\B9\A5\F9\E9\A7\83,^,\BE\97\F2\D2\03\B0 ", align 1
@__const.test_g2.v = private unnamed_addr constant [32 x i8] c"\FD\C5\7F\F4I\DDOk\FB|\9D\F1\C2\9A\CBY*\E7\D4\EE\FB\FC\0A\90\9A\BB\F62=\8B\18U", align 1
@__const.test_g2.x = private unnamed_addr constant [16 x i8] c"\AB\AE+q\EC\B2\FF\FF>sw\D1T\84\CB\D5", align 1
@__const.test_g2.y = private unnamed_addr constant [16 x i8] c"\CF\C4=\FF\F7\83e!n_\A7%\CC\E7\E8\A6", align 1
@__const.test_h6.w = private unnamed_addr constant [16 x i8] c"\9B}9\0A\A6\10\104\05\AD\C8W\A34\02\EC", align 1
@__const.test_h6.exp = private unnamed_addr constant [16 x i8] c"\99c\B1\80\E2\A9\D3\E8\1C\C9m\E7\02\E1\9A-", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 16, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 128, i64 129]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 11]
@__sancov_gen_cov_switch_values.116 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 255]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 506, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 532, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 549, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"debug_sk\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 149, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"debug_pk\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 137, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1635, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1658, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2357, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2379, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3402, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3820, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3822, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3826, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3828, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 481, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 387, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 178, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 197, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1571, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1188, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 953, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 432, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1389, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1395, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1404, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1372, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1180, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 598, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1054, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 695, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 723, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"smp_root_chan_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3260, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3261, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3234, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"smp_chan_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3213, i32 31 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3255, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3214, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3182, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3034, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3049, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1740, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1241, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1271, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1206, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [10 x i8] c"sc_method\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 826, i32 17 }
@___asan_gen_.315 = private unnamed_addr constant [11 x i8] c"gen_method\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 818, i32 17 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 862, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1931, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1873, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2294, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2088, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2104, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2026, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2057, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2061, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2072, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2135, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 981, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 991, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2494, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2502, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2527, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2559, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2567, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2591, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2616, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2628, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2658, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2738, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2748, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2802, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2877, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2937, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3059, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3164, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3076, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3117, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3123, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3141, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3359, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3743, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3749, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3755, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3761, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3767, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3773, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3779, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3785, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3791, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3799, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [16 x i8] c"test_smp_buffer\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3717, i32 13 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3804, i32 5 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3806, i32 54 }
@___asan_gen_.477 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3808, i32 22 }
@___asan_gen_.480 = private unnamed_addr constant [14 x i8] c"test_smp_fops\00", align 1
@___asan_gen_.481 = private constant [23 x i8] c"../net/bluetooth/smp.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3726, i32 37 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @debug_sk, ptr @debug_pk, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @smp_chan_create.__key, ptr @.str.33, ptr @smp_chan_create.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @smp_root_chan_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @smp_chan_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @sc_method, ptr @gen_method, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @test_smp_buffer, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @test_smp_fops], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_sk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_pk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_chan_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_chan_create.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_root_chan_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_chan_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_method to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_method to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_smp_buffer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_smp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smp_irk_matches(ptr noundef %hdev, ptr noundef %irk, ptr noundef %bdaddr) local_unnamed_addr #0 align 64 {
entry:
  %_res.i = alloca [16 x i8], align 1
  %hash = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 168
  %0 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %hash) #14
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_irk_matches.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_irk_matches, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !275

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_irk_matches.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %bdaddr, i32 noundef 16, ptr noundef %irk) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx = getelementptr [6 x i8], ptr %bdaddr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_res.i) #14
  %4 = getelementptr inbounds [16 x i8], ptr %_res.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %_res.i, ptr %arrayidx, i32 3)
  %6 = call ptr @memset(ptr %4, i32 0, i32 13)
  %call.i = call fastcc i32 @smp_e(ptr noundef %irk, ptr noundef nonnull %_res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11, label %smp_ah.exit

smp_ah.exit:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %hash, ptr %_res.i, i32 3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  %call.i26 = call i32 @__crypto_memneq(ptr noundef %bdaddr, ptr noundef nonnull %hash, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.not.i.not = icmp eq i32 %call.i26, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %smp_ah.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.not.i.not, %if.end11 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %smp_ah.exit ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %hash) #14
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_generate_rpa(ptr noundef %hdev, ptr nocapture noundef readonly %irk, ptr noundef %rpa) local_unnamed_addr #0 align 64 {
entry:
  %_res.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 168
  %0 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [6 x i8], ptr %rpa, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %arrayidx, i32 noundef 3) #14
  %arrayidx3 = getelementptr [6 x i8], ptr %rpa, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = and i8 %5, 63
  %7 = or i8 %6, 64
  store i8 %7, ptr %arrayidx3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_res.i) #14
  %8 = getelementptr inbounds [16 x i8], ptr %_res.i, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %_res.i, ptr %arrayidx, i32 3)
  %10 = call ptr @memset(ptr %8, i32 0, i32 13)
  %call.i = call fastcc i32 @smp_e(ptr noundef %irk, ptr noundef nonnull %_res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %smp_ah.exit.thread, label %smp_ah.exit

smp_ah.exit.thread:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = call ptr @memcpy(ptr %rpa, ptr %_res.i, i32 3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  br label %do.body

smp_ah.exit:                                      ; preds = %if.end
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %smp_ah.exit.cleanup_crit_edge, label %smp_ah.exit.do.body_crit_edge

smp_ah.exit.do.body_crit_edge:                    ; preds = %smp_ah.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

smp_ah.exit.cleanup_crit_edge:                    ; preds = %smp_ah.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %smp_ah.exit.do.body_crit_edge, %smp_ah.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_generate_rpa.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_generate_rpa, %if.then19)) #14
          to label %cleanup [label %if.then19], !srcloc !275

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_generate_rpa.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %rpa) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body, %smp_ah.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %smp_ah.exit.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_generate_oob(ptr noundef %hdev, ptr nocapture noundef writeonly %hash, ptr nocapture noundef writeonly %rand) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 168
  %0 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %if.end
  %tfm_ecdh17 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 5
  %local_pk18 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 1
  br label %while.cond

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_generate_oob.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_generate_oob, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !275

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_generate_oob.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.7, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %tfm_ecdh = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %tfm_ecdh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm_ecdh, align 4
  %call12 = tail call i32 @set_ecdh_privkey(ptr noundef %8, ptr noundef nonnull @debug_sk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %local_pk = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %local_pk, ptr @debug_pk, i32 64)
  br label %if.end31

while.cond:                                       ; preds = %if.end23.while.cond_crit_edge, %while.cond.preheader
  %10 = ptrtoint ptr %tfm_ecdh17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm_ecdh17, align 4
  %call20 = tail call i32 @generate_ecdh_keys(ptr noundef %11, ptr noundef %local_pk18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %while.cond
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %local_pk18, ptr noundef nonnull @debug_pk, i32 noundef 64) #14
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end23.while.cond_crit_edge, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end23.while.cond_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end31:                                         ; preds = %if.end23.if.end31_crit_edge, %if.end15
  %.sink = phi i8 [ 1, %if.end15 ], [ 0, %if.end23.if.end31_crit_edge ]
  %debug_key30 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %debug_key30 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %debug_key30, align 1
  %local_rand = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 2
  tail call void @get_random_bytes(ptr noundef %local_rand, i32 noundef 16) #14
  %tfm_cmac = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm_cmac, align 4
  %local_pk35 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %15 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %m.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 1
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %local_pk35, i32 32)
  %add.ptr4.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %17 = call ptr @memcpy(ptr %add.ptr4.i, ptr %local_pk35, i32 32)
  %call.i71 = call fastcc i32 @aes_cmac(ptr noundef %14, ptr noundef %local_rand, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef %hash) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp = icmp slt i32 %call.i71, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end43

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %18 = call ptr @memcpy(ptr %rand, ptr %local_rand, i32 16)
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end31.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call12, %do.end.cleanup_crit_edge ], [ %call.i71, %if.end31.cleanup_crit_edge ], [ %call20, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_ecdh_privkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generate_ecdh_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_user_confirm_reply(ptr nocapture noundef readonly %hcon, i16 noundef zeroext %mgmt_op, i32 noundef %passkey) local_unnamed_addr #0 align 64 {
entry:
  %reason.addr.i87 = alloca i8, align 1
  %reason.addr.i = alloca i8, align 1
  %reason.addr.i35.i = alloca i8, align 1
  %reason.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %l2cap_data = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 66
  %0 = ptrtoint ptr %l2cap_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2cap_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_user_confirm_reply.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_user_confirm_reply, %if.then4)) #14
          to label %do.end [label %if.then4], !srcloc !275

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_user_confirm_reply.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %smp7 = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %smp7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smp7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %9) #14
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 84
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end10.unlock_crit_edge, label %if.end13

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end13:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #14
  %19 = zext i16 %mgmt_op to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %mgmt_op, label %sw.epilog.i [
    i16 31, label %sw.bb.i
    i16 29, label %sw.bb4.i
    i16 30, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.then17
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i.i) #14
  %22 = ptrtoint ptr %reason.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %reason.addr.i.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %21, align 4
  %smp.i.i = getelementptr inbounds %struct.l2cap_conn, ptr %21, i32 0, i32 17
  %25 = ptrtoint ptr %smp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smp.i.i, align 4
  call fastcc void @smp_send_cmd(ptr noundef %21, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i.i) #14
  call void @mgmt_auth_failed(ptr noundef %24, i8 noundef zeroext 5) #14
  %data.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %26, i32 0, i32 84
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i.i, label %sw.bb.i.smp_failure.exit.i_crit_edge, label %if.then3.i.i

sw.bb.i.smp_failure.exit.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit.i

if.then3.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef %21) #14
  br label %smp_failure.exit.i

smp_failure.exit.i:                               ; preds = %if.then3.i.i, %sw.bb.i.smp_failure.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i.i) #14
  br label %unlock

sw.bb4.i:                                         ; preds = %if.then17
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i35.i) #14
  %31 = ptrtoint ptr %reason.addr.i35.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 12, ptr %reason.addr.i35.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %30, align 4
  %smp.i36.i = getelementptr inbounds %struct.l2cap_conn, ptr %30, i32 0, i32 17
  %34 = ptrtoint ptr %smp.i36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smp.i36.i, align 4
  call fastcc void @smp_send_cmd(ptr noundef %30, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i35.i) #14
  call void @mgmt_auth_failed(ptr noundef %33, i8 noundef zeroext 5) #14
  %data.i37.i = getelementptr inbounds %struct.l2cap_chan, ptr %35, i32 0, i32 84
  %36 = ptrtoint ptr %data.i37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i37.i, align 4
  %tobool2.not.i38.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i38.i, label %sw.bb4.i.smp_failure.exit40.i_crit_edge, label %if.then3.i39.i

sw.bb4.i.smp_failure.exit40.i_crit_edge:          ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit40.i

if.then3.i39.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef %30) #14
  br label %smp_failure.exit40.i

smp_failure.exit40.i:                             ; preds = %if.then3.i39.i, %sw.bb4.i.smp_failure.exit40.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i35.i) #14
  br label %unlock

sw.bb6.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %38 = tail call i32 @llvm.bswap.i32(i32 %passkey) #14
  %passkey_notify.i = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 29
  %39 = ptrtoint ptr %passkey_notify.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %passkey_notify.i, align 4
  %passkey_round.i = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 24
  %40 = ptrtoint ptr %passkey_round.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %passkey_round.i, align 1
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i, i8 0, i8 3
  %call8.i = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef nonnull %11, i8 noundef zeroext %..i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i)
  %tobool9.not.i = icmp eq i8 %call8.i, 0
  %spec.select.i = select i1 %tobool9.not.i, i32 0, i32 -5
  br label %unlock

sw.epilog.i:                                      ; preds = %if.then17
  %out.i = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 16
  %41 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %out.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool12.not.i = icmp eq i8 %42, 0
  br i1 %tobool12.not.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sc_dhkey_check(ptr noundef nonnull %11) #14
  %allow_cmd.i = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd.i) #14
  br label %unlock

if.else14.i:                                      ; preds = %sw.epilog.i
  %call16.i = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else14.i.unlock_crit_edge, label %if.then18.i

if.else14.i.unlock_crit_edge:                     ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then18.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sc_dhkey_check(ptr noundef nonnull %11) #14
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %11, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %49 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  %..i.i = select i1 %tobool.not.i.i, i8 3, i8 4
  %pending_sec_level.i.i = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 25
  %50 = ptrtoint ptr %pending_sec_level.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pending_sec_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp.i.i = icmp eq i8 %51, 4
  %auth.0.i.i = zext i1 %cmp.i.i to i8
  %hdev.i.i = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 65
  %52 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hdev.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 2
  %dst_type.i.i = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 3
  %54 = ptrtoint ptr %dst_type.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dst_type.i.i, align 2
  %tk.i.i = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 8
  %enc_key_size.i.i = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 11
  %56 = ptrtoint ptr %enc_key_size.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %enc_key_size.i.i, align 2
  %call6.i.i = tail call ptr @hci_add_ltk(ptr noundef %53, ptr noundef %dst.i.i, i8 noundef zeroext %55, i8 noundef zeroext %..i.i, i8 noundef zeroext %auth.0.i.i, ptr noundef %tk.i.i, i8 noundef zeroext %57, i16 noundef zeroext 0, i64 noundef 0) #14
  %ltk.i.i = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 18
  %58 = ptrtoint ptr %ltk.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call6.i.i, ptr %ltk.i.i, align 4
  br label %unlock

if.end19:                                         ; preds = %if.end13
  %59 = zext i16 %mgmt_op to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %mgmt_op, label %sw.default [
    i16 30, label %sw.bb
    i16 28, label %if.end19.sw.bb43_crit_edge
    i16 31, label %if.end19.sw.bb45_crit_edge
    i16 29, label %if.end19.sw.bb45_crit_edge96
  ]

if.end19.sw.bb45_crit_edge96:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb45

if.end19.sw.bb45_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb45

if.end19.sw.bb43_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb43

sw.bb:                                            ; preds = %if.end19
  %tk = getelementptr inbounds %struct.smp_chan, ptr %11, i32 0, i32 8
  %60 = call ptr @memset(ptr %tk, i32 0, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_user_confirm_reply.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_user_confirm_reply, %if.then33)) #14
          to label %do.end40 [label %if.then33], !srcloc !275

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %61 = tail call i32 @llvm.bswap.i32(i32 %passkey)
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %hdev35 = getelementptr inbounds %struct.hci_conn, ptr %63, i32 0, i32 65
  %64 = ptrtoint ptr %hdev35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hdev35, align 4
  %name36 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_user_confirm_reply.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.10, ptr noundef %name36, i32 noundef %61) #14
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %sw.bb
  %66 = ptrtoint ptr %tk to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %passkey, ptr %tk, align 1
  br label %sw.bb43

sw.bb43:                                          ; preds = %do.end40, %if.end19.sw.bb43_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool48.not = icmp eq i32 %69, 0
  br i1 %tobool48.not, label %sw.bb43.unlock_crit_edge, label %if.then49

sw.bb43.unlock_crit_edge:                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

sw.bb45:                                          ; preds = %if.end19.sw.bb45_crit_edge, %if.end19.sw.bb45_crit_edge96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i)
  %70 = ptrtoint ptr %reason.addr.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %reason.addr.i, align 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %smp7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %smp7, align 4
  call fastcc void @smp_send_cmd(ptr noundef nonnull %1, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i) #14
  call void @mgmt_auth_failed(ptr noundef %72, i8 noundef zeroext 5) #14
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %74, i32 0, i32 84
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %76, null
  br i1 %tobool2.not.i, label %sw.bb45.smp_failure.exit_crit_edge, label %if.then3.i

sw.bb45.smp_failure.exit_crit_edge:               ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit

if.then3.i:                                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef nonnull %1) #14
  br label %smp_failure.exit

smp_failure.exit:                                 ; preds = %if.then3.i, %sw.bb45.smp_failure.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i)
  br label %unlock

sw.default:                                       ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i87)
  %77 = ptrtoint ptr %reason.addr.i87 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %reason.addr.i87, align 1
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %smp7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %smp7, align 4
  call fastcc void @smp_send_cmd(ptr noundef nonnull %1, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i87) #14
  call void @mgmt_auth_failed(ptr noundef %79, i8 noundef zeroext 5) #14
  %data.i89 = getelementptr inbounds %struct.l2cap_chan, ptr %81, i32 0, i32 84
  %82 = ptrtoint ptr %data.i89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i89, align 4
  %tobool2.not.i90 = icmp eq ptr %83, null
  br i1 %tobool2.not.i90, label %sw.default.smp_failure.exit92_crit_edge, label %if.then3.i91

sw.default.smp_failure.exit92_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit92

if.then3.i91:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef nonnull %1) #14
  br label %smp_failure.exit92

smp_failure.exit92:                               ; preds = %if.then3.i91, %sw.default.smp_failure.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i87)
  br label %unlock

if.then49:                                        ; preds = %sw.bb43
  %call50 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef nonnull %11)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call50)
  %tobool51.not = icmp eq i8 %call50, 0
  br i1 %tobool51.not, label %if.then49.unlock_crit_edge, label %if.then52

if.then49.unlock_crit_edge:                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_failure(ptr noundef nonnull %1, i8 noundef zeroext %call50)
  br label %unlock

unlock:                                           ; preds = %if.then52, %if.then49.unlock_crit_edge, %smp_failure.exit92, %smp_failure.exit, %sw.bb43.unlock_crit_edge, %if.then18.i, %if.else14.i.unlock_crit_edge, %if.then13.i, %sw.bb6.i, %smp_failure.exit40.i, %smp_failure.exit.i, %if.end10.unlock_crit_edge
  %err.0 = phi i32 [ -95, %smp_failure.exit92 ], [ 0, %smp_failure.exit ], [ 0, %sw.bb43.unlock_crit_edge ], [ -107, %if.end10.unlock_crit_edge ], [ 0, %if.then52 ], [ 0, %if.then49.unlock_crit_edge ], [ 0, %smp_failure.exit40.i ], [ 0, %smp_failure.exit.i ], [ 0, %if.else14.i.unlock_crit_edge ], [ 0, %if.then18.i ], [ 0, %if.then13.i ], [ %spec.select.i, %sw.bb6.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -107, %entry.cleanup_crit_edge ], [ -107, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_failure(ptr nocapture noundef readonly %conn, i8 noundef zeroext %reason) unnamed_addr #0 align 64 {
entry:
  %reason.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reason.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reason, ptr %reason.addr, align 1
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %3 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reason)
  %tobool.not = icmp eq i8 %reason, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mgmt_auth_failed(ptr noundef %2, i8 noundef zeroext 5) #14
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 84
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef %conn)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_confirm(ptr noundef %smp) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.smp_cmd_pairing_confirm, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cp) #14
  %2 = call ptr @memset(ptr %cp, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_confirm.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_confirm, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 65
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_confirm.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  %preq = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 3
  %prsp = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %init_addr_type = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %init_addr_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %init_addr_type, align 8
  %init_addr = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 6
  %resp_addr_type = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %resp_addr_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resp_addr_type, align 1
  %resp_addr = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 8
  %call13 = call fastcc i32 @smp_c1(ptr noundef %tk, ptr noundef %prnd, ptr noundef %preq, ptr noundef %prsp, i8 noundef zeroext %10, ptr noundef %init_addr, i8 noundef zeroext %12, ptr noundef %resp_addr, ptr noundef nonnull %cp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  %13 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smp, align 4
  call fastcc void @smp_send_cmd(ptr noundef %14, i8 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %cp)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  %allow_cmd21 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  %. = select i1 %tobool19.not, i32 4, i32 3
  call void @_set_bit(i32 noundef %., ptr noundef %allow_cmd21) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.cleanup_crit_edge
  %retval.0 = phi i8 [ 8, %do.end.cleanup_crit_edge ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cp) #14
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smp_sufficient_security(ptr noundef %hcon, i8 noundef zeroext %sec_level, i32 noundef %key_pref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %sec_level)
  %cmp = icmp eq i8 %sec_level, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %key_pref)
  %cmp2 = icmp eq i32 %key_pref, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 47
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true4:                                   ; preds = %land.lhs.true
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 65
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 3
  %5 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dst_type, align 2
  %role = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 15
  %7 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %role, align 8
  %call5 = tail call ptr @hci_find_ltk(ptr noundef %4, ptr noundef %dst, i8 noundef zeroext %6, i8 noundef zeroext %8) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %land.lhs.true4.if.end8_crit_edge, label %land.lhs.true4.return_crit_edge

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %sec_level9 = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 24
  %9 = ptrtoint ptr %sec_level9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sec_level9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %sec_level)
  %cmp12.not = icmp uge i8 %10, %sec_level
  br label %return

return:                                           ; preds = %if.end8, %land.lhs.true4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ false, %land.lhs.true4.return_crit_edge ], [ %cmp12.not, %if.end8 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_conn_security(ptr noundef %hcon, i8 noundef zeroext %sec_level) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.smp_cmd_pairing, align 1
  %cp90 = alloca %struct.smp_cmd_security_req, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %l2cap_data = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 66
  %0 = ptrtoint ptr %l2cap_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2cap_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_conn_security.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_conn_security, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 65
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  %conv = zext i8 %sec_level to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_conn_security.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %1, ptr noundef %hcon, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %hdev6 = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 65
  %4 = ptrtoint ptr %hdev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev6, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %sec_level)
  %cmp.i = icmp eq i8 %sec_level, 1
  %or.cond = or i1 %cmp.i, %tobool9.not
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 47
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i.smp_sufficient_security.exit_crit_edge, label %land.lhs.true4.i

if.end.i.smp_sufficient_security.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_sufficient_security.exit

land.lhs.true4.i:                                 ; preds = %if.end.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 2
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 3
  %12 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dst_type.i, align 2
  %role.i = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 15
  %14 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %role.i, align 8
  %call5.i = tail call ptr @hci_find_ltk(ptr noundef %5, ptr noundef %dst.i, i8 noundef zeroext %13, i8 noundef zeroext %15) #14
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %land.lhs.true4.i.smp_sufficient_security.exit_crit_edge, label %land.lhs.true4.i.if.end14_crit_edge

land.lhs.true4.i.if.end14_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true4.i.smp_sufficient_security.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_sufficient_security.exit

smp_sufficient_security.exit:                     ; preds = %land.lhs.true4.i.smp_sufficient_security.exit_crit_edge, %if.end.i.smp_sufficient_security.exit_crit_edge
  %sec_level9.i = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 24
  %16 = ptrtoint ptr %sec_level9.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sec_level9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %sec_level)
  %cmp12.not.i.not = icmp ult i8 %17, %sec_level
  br i1 %cmp12.not.i.not, label %smp_sufficient_security.exit.if.end14_crit_edge, label %smp_sufficient_security.exit.cleanup_crit_edge

smp_sufficient_security.exit.cleanup_crit_edge:   ; preds = %smp_sufficient_security.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

smp_sufficient_security.exit.if.end14_crit_edge:  ; preds = %smp_sufficient_security.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %smp_sufficient_security.exit.if.end14_crit_edge, %land.lhs.true4.i.if.end14_crit_edge
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 25
  %18 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %sec_level)
  %cmp = icmp ult i8 %19, %sec_level
  br i1 %cmp, label %if.then18, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %sec_level, ptr %pending_sec_level, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %role = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 15
  %21 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp22 = icmp eq i8 %22, 0
  br i1 %cmp22, label %if.then24, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24:                                        ; preds = %if.end20
  %23 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pending_sec_level, align 1
  %call26 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef nonnull %1, i8 noundef zeroext %24)
  br i1 %call26, label %if.then24.cleanup_crit_edge, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %smp30 = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %25 = ptrtoint ptr %smp30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smp30, align 4
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %hdev6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev6, align 4
  %name34 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13, ptr noundef %name34) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %26, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %26, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #14
  %29 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %30) #14
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %26, i32 0, i32 84
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %tobool37.not = icmp eq ptr %32, null
  br i1 %tobool37.not, label %if.end39, label %if.end36.unlock_crit_edge

if.end36.unlock_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end39:                                         ; preds = %if.end36
  %call40 = tail call fastcc ptr @smp_chan_create(ptr noundef nonnull %1)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.unlock_crit_edge, label %if.end43

if.end39.unlock_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end43:                                         ; preds = %if.end39
  %switch.tableidx = add i8 %sec_level, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %33 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 328961, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %retval.0.i143 = select i1 %33, i8 %switch.masked, i8 0
  %34 = ptrtoint ptr %hdev6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev6, align 4
  %dev_flags46 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 206
  %36 = ptrtoint ptr %dev_flags46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dev_flags46, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool49.not = icmp eq i32 %38, 0
  br i1 %tobool49.not, label %if.end43.if.end63_crit_edge, label %if.then50

if.end43.if.end63_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %dev_flags46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dev_flags46, align 4
  %41 = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool57.not = icmp eq i32 %41, 0
  %spec.select.v = select i1 %tobool57.not, i8 8, i8 40
  %spec.select = or i8 %spec.select.v, %retval.0.i143
  br label %if.end63

if.end63:                                         ; preds = %if.then50, %if.end43.if.end63_crit_edge
  %authreq.0 = phi i8 [ %retval.0.i143, %if.end43.if.end63_crit_edge ], [ %spec.select, %if.then50 ]
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %35, i32 0, i32 206, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %44 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool68.not = icmp eq i32 %44, 0
  br i1 %tobool68.not, label %if.then69, label %if.end63.if.end82_crit_edge

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then69:                                        ; preds = %if.end63
  %io_capability = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 28
  %45 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %io_capability, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp71.not = icmp eq i8 %46, 3
  br i1 %cmp71.not, label %lor.lhs.false, label %if.then69.if.then77_crit_edge

if.then69.if.then77_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.then69
  %47 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp75 = icmp ugt i8 %48, 2
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %lor.lhs.false.if.end82_crit_edge

lor.lhs.false.if.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.then69.if.then77_crit_edge
  %49 = or i8 %authreq.0, 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %lor.lhs.false.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %authreq.1 = phi i8 [ %authreq.0, %if.end63.if.end82_crit_edge ], [ %49, %if.then77 ], [ %authreq.0, %lor.lhs.false.if.end82_crit_edge ]
  %50 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp85 = icmp eq i8 %51, 0
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cp) #14
  %52 = call ptr @memset(ptr %cp, i32 255, i32 6)
  call fastcc void @build_pairing_cmd(ptr noundef nonnull %1, ptr noundef nonnull %cp, ptr noundef null, i8 noundef zeroext %authreq.1)
  %preq = getelementptr inbounds %struct.smp_chan, ptr %call40, i32 0, i32 3
  %53 = ptrtoint ptr %preq to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %preq, align 4
  %arrayidx89 = getelementptr %struct.smp_chan, ptr %call40, i32 0, i32 3, i32 1
  %54 = call ptr @memcpy(ptr %arrayidx89, ptr %cp, i32 6)
  call fastcc void @smp_send_cmd(ptr noundef nonnull %1, i8 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef nonnull %cp)
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %call40, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %allow_cmd) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cp) #14
  br label %if.end92

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cp90) #14
  %55 = ptrtoint ptr %cp90 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %authreq.1, ptr %cp90, align 1
  call fastcc void @smp_send_cmd(ptr noundef nonnull %1, i8 noundef zeroext 11, i16 noundef zeroext 1, ptr noundef nonnull %cp90)
  %allow_cmd91 = getelementptr inbounds %struct.smp_chan, ptr %call40, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %allow_cmd91) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cp90) #14
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then87
  %flags = getelementptr inbounds %struct.smp_chan, ptr %call40, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %flags) #14
  br label %unlock

unlock:                                           ; preds = %if.end92, %if.end39.unlock_crit_edge, %if.end36.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end92 ], [ 0, %if.end36.unlock_crit_edge ], [ 1, %if.end39.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then32, %if.then24.cleanup_crit_edge, %smp_sufficient_security.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ 1, %if.then32 ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %smp_sufficient_security.exit.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smp_ltk_encrypt(ptr nocapture noundef readonly %conn, i8 noundef zeroext %sec_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dst_type, align 2
  %role = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %role, align 8
  %call = tail call ptr @hci_find_ltk(ptr noundef %3, ptr noundef %dst, i8 noundef zeroext %5, i8 noundef zeroext %7) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %authenticated.i = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %authenticated.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.smp_ltk_sec_level.exit_crit_edge, label %if.then.i

if.end.smp_ltk_sec_level.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_ltk_sec_level.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %type.i.i = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i.i, align 8
  %.off.i.i = add i8 %11, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %..i = select i1 %switch.i.i, i8 4, i8 3
  br label %smp_ltk_sec_level.exit

smp_ltk_sec_level.exit:                           ; preds = %if.then.i, %if.end.smp_ltk_sec_level.exit_crit_edge
  %retval.0.i = phi i8 [ %..i, %if.then.i ], [ 2, %if.end.smp_ltk_sec_level.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %sec_level)
  %cmp = icmp ult i8 %retval.0.i, %sec_level
  br i1 %cmp, label %smp_ltk_sec_level.exit.cleanup_crit_edge, label %if.end6

smp_ltk_sec_level.exit.cleanup_crit_edge:         ; preds = %smp_ltk_sec_level.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %smp_ltk_sec_level.exit
  %flags = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 47
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %ediv = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %ediv to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ediv, align 2
  %rand = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %rand to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rand, align 8
  %val = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 9
  %enc_size = getelementptr inbounds %struct.smp_ltk, ptr %call, i32 0, i32 6
  %16 = ptrtoint ptr %enc_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enc_size, align 1
  tail call void @hci_le_start_enc(ptr noundef %1, i16 noundef zeroext %13, i64 noundef %15, ptr noundef %val, i8 noundef zeroext %17) #14
  %18 = ptrtoint ptr %enc_size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enc_size, align 1
  %enc_key_size = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %enc_key_size, align 1
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %smp_ltk_sec_level.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %entry.cleanup_crit_edge ], [ false, %smp_ltk_sec_level.exit.cleanup_crit_edge ], [ true, %if.end6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smp_chan_create(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 460) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #14
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 29
  %5 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %tfm_cmac, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name) #14
  br label %zfree_smp

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0) #14
  %tfm_ecdh = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 30
  %8 = ptrtoint ptr %tfm_ecdh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %tfm_ecdh, align 8
  %cmp.i57 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %hdev12 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %9 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev12, align 4
  %name13 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name13) #14
  %11 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm_cmac, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %12, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %12, ptr noundef %base.i.i) #14
  br label %zfree_smp

if.end15:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %conn, ptr %call7.i.i, align 8
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %data, align 4
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 5, ptr noundef %allow_cmd) #14
  %security_timer = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %security_timer, i32 noundef 0) #14
  %15 = ptrtoint ptr %security_timer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %security_timer, align 4
  %lockdep_map = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @smp_chan_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry25 = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry25, ptr %entry25, align 8
  %prev.i = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @smp_timeout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.smp_chan, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @smp_chan_create.__key.34) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_chan_create, %if.then.i)) #14
          to label %hci_conn_hold.exit [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %20) #14
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i, %if.end15
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #14, !srcloc !277
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #14
  br label %cleanup

zfree_smp:                                        ; preds = %if.then11, %if.then6
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %zfree_smp, %hci_conn_hold.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %zfree_smp ], [ %call7.i.i, %hci_conn_hold.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_pairing_cmd(ptr nocapture noundef readonly %conn, ptr nocapture noundef %req, ptr noundef %rsp, i8 noundef zeroext %authreq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev3, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %8 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dev_flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = and i8 %authreq, -2
  %remote_dist.0 = select i1 %tobool.not, i8 0, i8 5
  %not.tobool.not = xor i1 %tobool.not, true
  %masksel = zext i1 %not.tobool.not to i8
  %authreq.addr.0 = or i8 %11, %masksel
  %12 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dev_flags, align 4
  %14 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  %15 = or i8 %remote_dist.0, 2
  %remote_dist.1 = select i1 %tobool10.not, i8 %remote_dist.0, i8 %15
  %16 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_flags, align 4
  %18 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  %local_dist.1 = select i1 %tobool19.not, i8 %remote_dist.0, i8 %15
  %19 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dev_flags, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  %22 = and i8 %authreq, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  %or.cond = or i1 %tobool31.not, %tobool28.not
  br i1 %or.cond, label %if.else62, label %if.then32

if.then32:                                        ; preds = %entry
  %23 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dev_flags, align 4
  %25 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool36.not = icmp eq i32 %25, 0
  %26 = or i8 %local_dist.1, 8
  %27 = or i8 %remote_dist.1, 8
  %local_dist.2 = select i1 %tobool36.not, i8 %local_dist.1, i8 %26
  %remote_dist.2 = select i1 %tobool36.not, i8 %remote_dist.1, i8 %27
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dst_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp eq i8 %29, 0
  %bdaddr_type.0 = select i1 %cmp, i8 1, i8 2
  %dst = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 2
  %call50 = tail call ptr @hci_find_remote_oob_data(ptr noundef %7, ptr noundef %dst, i8 noundef zeroext %bdaddr_type.0) #14
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then32.if.end66_crit_edge, label %land.lhs.true52

if.then32.if.end66_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true52:                                  ; preds = %if.then32
  %present = getelementptr inbounds %struct.oob_data, ptr %call50, i32 0, i32 3
  %30 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool54.not = icmp eq i8 %31, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end66_crit_edge, label %if.then55

land.lhs.true52.if.end66_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #14
  %rr = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 9
  %rand256 = getelementptr inbounds %struct.oob_data, ptr %call50, i32 0, i32 7
  %32 = call ptr @memcpy(ptr %rr, ptr %rand256, i32 16)
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 7
  %hash256 = getelementptr inbounds %struct.oob_data, ptr %call50, i32 0, i32 6
  %33 = call ptr @memcpy(ptr %pcnf, ptr %hash256, i32 16)
  br label %if.end66

if.else62:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %34 = and i8 %authreq.addr.0, -9
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then55, %land.lhs.true52.if.end66_crit_edge, %if.then32.if.end66_crit_edge
  %local_dist.3 = phi i8 [ %local_dist.1, %if.else62 ], [ %local_dist.2, %if.then55 ], [ %local_dist.2, %land.lhs.true52.if.end66_crit_edge ], [ %local_dist.2, %if.then32.if.end66_crit_edge ]
  %remote_dist.3 = phi i8 [ %remote_dist.1, %if.else62 ], [ %remote_dist.2, %if.then55 ], [ %remote_dist.2, %land.lhs.true52.if.end66_crit_edge ], [ %remote_dist.2, %if.then32.if.end66_crit_edge ]
  %oob_flag.1 = phi i8 [ 0, %if.else62 ], [ 1, %if.then55 ], [ 0, %land.lhs.true52.if.end66_crit_edge ], [ 0, %if.then32.if.end66_crit_edge ]
  %authreq.addr.1 = phi i8 [ %34, %if.else62 ], [ %authreq.addr.0, %if.then55 ], [ %authreq.addr.0, %land.lhs.true52.if.end66_crit_edge ], [ %authreq.addr.0, %if.then32.if.end66_crit_edge ]
  %cmp67 = icmp eq ptr %rsp, null
  %35 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %conn, align 4
  %io_capability = getelementptr inbounds %struct.hci_conn, ptr %36, i32 0, i32 28
  %37 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %io_capability, align 8
  br i1 %cmp67, label %if.then69, label %if.end80

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %req, align 1
  %oob_flag72 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 1
  %40 = ptrtoint ptr %oob_flag72 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %oob_flag.1, ptr %oob_flag72, align 1
  %le_max_key_size = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 67
  %41 = ptrtoint ptr %le_max_key_size to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %le_max_key_size, align 2
  %max_key_size = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 3
  %43 = ptrtoint ptr %max_key_size to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %max_key_size, align 1
  %init_key_dist = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 4
  %44 = ptrtoint ptr %init_key_dist to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %local_dist.3, ptr %init_key_dist, align 1
  br label %cleanup

if.end80:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %38, ptr %rsp, align 1
  %oob_flag84 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 1
  %46 = ptrtoint ptr %oob_flag84 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %oob_flag.1, ptr %oob_flag84, align 1
  %le_max_key_size85 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 67
  %47 = ptrtoint ptr %le_max_key_size85 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %le_max_key_size85, align 2
  %max_key_size86 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 3
  %49 = ptrtoint ptr %max_key_size86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %max_key_size86, align 1
  %init_key_dist87 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 4
  %50 = ptrtoint ptr %init_key_dist87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %init_key_dist87, align 1
  %and90164 = and i8 %51, %remote_dist.3
  %init_key_dist92 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 4
  %52 = ptrtoint ptr %init_key_dist92 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %and90164, ptr %init_key_dist92, align 1
  %resp_key_dist93 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 5
  %53 = ptrtoint ptr %resp_key_dist93 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %resp_key_dist93, align 1
  %and96165 = and i8 %54, %local_dist.3
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then69
  %rsp.sink179 = phi ptr [ %rsp, %if.end80 ], [ %req, %if.then69 ]
  %and96165.sink = phi i8 [ %and96165, %if.end80 ], [ %remote_dist.3, %if.then69 ]
  %and90164.sink = phi i8 [ %and90164, %if.end80 ], [ %remote_dist.3, %if.then69 ]
  %resp_key_dist98 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp.sink179, i32 0, i32 5
  %55 = ptrtoint ptr %resp_key_dist98 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %and96165.sink, ptr %resp_key_dist98, align 1
  %56 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %dev_flags, align 4
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool103.not = icmp eq i32 %58, 0
  %cond104 = select i1 %tobool103.not, i8 7, i8 63
  %and105 = and i8 %cond104, %authreq.addr.1
  %auth_req107 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp.sink179, i32 0, i32 2
  %59 = ptrtoint ptr %auth_req107 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and105, ptr %auth_req107, align 1
  %60 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 12
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %and90164.sink, ptr %60, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_send_cmd(ptr nocapture noundef readonly %conn, i8 noundef zeroext %code, i16 noundef zeroext %len, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %code.addr = alloca i8, align 1
  %iv = alloca [2 x %struct.kvec], align 4
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %code, ptr %code.addr, align 1
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %1 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #14
  %3 = getelementptr inbounds %struct.kvec, ptr %iv, i32 0, i32 1
  %4 = getelementptr inbounds [2 x %struct.kvec], ptr %iv, i32 0, i32 1
  %5 = getelementptr inbounds [2 x %struct.kvec], ptr %iv, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_send_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_send_cmd, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !275

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %code.addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %code.addr, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_send_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %code.addr, ptr %iv, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %4, align 4
  %conv10 = zext i16 %len to i32
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv10, ptr %5, align 4
  %16 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %add = add nuw nsw i32 %conv10, 1
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef nonnull %iv, i32 noundef 2, i32 noundef %add) #14
  %call17 = call i32 @l2cap_chan_send(ptr noundef nonnull %2, ptr noundef nonnull %msg, i32 noundef %add) #14
  %data18 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 84
  %17 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data18, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %do.end.cleanup_crit_edge, label %if.end21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %security_timer = getelementptr inbounds %struct.smp_chan, ptr %18, i32 0, i32 1
  %call23 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %security_timer) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %security_timer, i32 noundef 3000) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_cancel_and_remove_pairing(ptr noundef %hdev, ptr noundef %bdaddr, i8 noundef zeroext %addr_type) local_unnamed_addr #0 align 64 {
entry:
  %reason.addr.i36 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hci_remove_ltk(ptr noundef %hdev, ptr noundef %bdaddr, i8 noundef zeroext %addr_type) #14
  tail call void @hci_remove_irk(ptr noundef %hdev, ptr noundef %bdaddr, i8 noundef zeroext %addr_type) #14
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !278
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b40.i = load i1, ptr @hci_conn_hash_lookup_le.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @hci_conn_hash_lookup_le.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1054, ptr noundef nonnull @.str.40) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.063.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not64.i = icmp eq ptr %c.063.i, %conn_hash.i
  br i1 %cmp.not64.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.065.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.063.i, %do.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 14
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp11.not.i = icmp eq i8 %6, -128
  br i1 %cmp11.not.i, label %if.end14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 3
  %7 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dst_type.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %addr_type)
  %cmp17.i = icmp eq i8 %8, %addr_type
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %if.end14.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %bdaddr, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool21.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %land.lhs.true19.i.for.inc.i_crit_edge

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  %call.i42.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i42.i, label %if.then22.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i45.i

if.then22.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i45.i:                              ; preds = %if.then22.i
  %call1.i43.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call1.i43.i, 0
  br i1 %tobool.not.i44.i, label %land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i47.i

land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i47.i:                             ; preds = %land.lhs.true.i45.i
  %.b4.i46.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46.i, label %land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i48.i

land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i48.i:                                    ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i48.i, %land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge, %if.then22.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  br label %hci_conn_hash_lookup_le.exit

for.inc.i:                                        ; preds = %land.lhs.true19.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %c.065.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %c.0.i = load volatile ptr, ptr %c.065.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i51.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i51.i, label %for.end.i.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true.i54.i

for.end.i.rcu_read_unlock.exit61.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit61.i

land.lhs.true.i54.i:                              ; preds = %for.end.i
  %call1.i52.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit61.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit61.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #14
  br label %rcu_read_unlock.exit61.i

rcu_read_unlock.exit61.i:                         ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, %for.end.i.rcu_read_unlock.exit61.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  br label %hci_conn_hash_lookup_le.exit

hci_conn_hash_lookup_le.exit:                     ; preds = %rcu_read_unlock.exit61.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %c.065.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit61.i ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !265) #14
  %and.i.i.i.i.i58.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i60.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i60.i, ptr %preempt_count.i.i.i.i59.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %hci_conn_hash_lookup_le.exit.done_crit_edge, label %if.end

hci_conn_hash_lookup_le.exit.done_crit_edge:      ; preds = %hci_conn_hash_lookup_le.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end:                                           ; preds = %hci_conn_hash_lookup_le.exit
  %l2cap_data = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i, i32 0, i32 66
  %14 = ptrtoint ptr %l2cap_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l2cap_data, align 8
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end4:                                          ; preds = %if.end
  %smp5 = getelementptr inbounds %struct.l2cap_conn, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %smp5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smp5, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end4.done_crit_edge, label %if.end8

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end8:                                          ; preds = %if.end4
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #14
  %18 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %19) #14
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 84
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %ltk = getelementptr inbounds %struct.smp_chan, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %ltk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ltk, align 4
  %responder_ltk = getelementptr inbounds %struct.smp_chan, ptr %21, i32 0, i32 19
  %23 = ptrtoint ptr %responder_ltk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %responder_ltk, align 4
  %remote_irk = getelementptr inbounds %struct.smp_chan, ptr %21, i32 0, i32 20
  %24 = ptrtoint ptr %remote_irk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %remote_irk, align 4
  %flags = getelementptr inbounds %struct.smp_chan, ptr %21, i32 0, i32 22
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 4
  %30 = ptrtoint ptr %smp5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smp5, align 4
  tail call void @mgmt_auth_failed(ptr noundef %29, i8 noundef zeroext 5) #14
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 84
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %tobool2.not.i35 = icmp eq ptr %33, null
  br i1 %tobool2.not.i35, label %if.then13.if.end15_crit_edge, label %if.then3.i

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then3.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_chan_destroy(ptr noundef nonnull %15) #14
  br label %if.end15

if.else:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i36)
  %34 = ptrtoint ptr %reason.addr.i36 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %reason.addr.i36, align 1
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %15, align 4
  %37 = ptrtoint ptr %smp5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smp5, align 4
  call fastcc void @smp_send_cmd(ptr noundef nonnull %15, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i36) #14
  call void @mgmt_auth_failed(ptr noundef %36, i8 noundef zeroext 5) #14
  %data.i39 = getelementptr inbounds %struct.l2cap_chan, ptr %38, i32 0, i32 84
  %39 = ptrtoint ptr %data.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i39, align 4
  %tobool2.not.i40 = icmp eq ptr %40, null
  br i1 %tobool2.not.i40, label %if.else.smp_failure.exit42_crit_edge, label %if.then3.i41

if.else.smp_failure.exit42_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit42

if.then3.i41:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef nonnull %15) #14
  br label %smp_failure.exit42

smp_failure.exit42:                               ; preds = %if.then3.i41, %if.else.smp_failure.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i36)
  br label %if.end15

if.end15:                                         ; preds = %smp_failure.exit42, %if.then3.i, %if.then13.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %err.0 = phi i32 [ %call, %if.end8.if.end15_crit_edge ], [ 0, %smp_failure.exit42 ], [ 0, %if.then13.if.end15_crit_edge ], [ 0, %if.then3.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %done

done:                                             ; preds = %if.end15, %if.end4.done_crit_edge, %if.end.done_crit_edge, %hci_conn_hash_lookup_le.exit.done_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end15 ], [ %call, %if.end4.done_crit_edge ], [ %call, %if.end.done_crit_edge ], [ %call, %hci_conn_hash_lookup_le.exit.done_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_ltk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_remove_irk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_force_bredr(ptr noundef %hdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp = xor i1 %3, %enable
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call1984.i = tail call ptr @l2cap_chan_create() #14
  %tobool20.not85.i = icmp eq ptr %call1984.i, null
  br i1 %tobool20.not85.i, label %if.then3.cleanup_crit_edge, label %smp_add_cid.exit

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

smp_add_cid.exit:                                 ; preds = %if.then3
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 84
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data.i, align 4
  %call29.i = tail call i32 @l2cap_add_scid(ptr noundef nonnull %call1984.i, i16 noundef zeroext 7) #14
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call1984.i) #14
  %src41.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 8
  %bdaddr.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %5 = call ptr @memcpy(ptr %src41.i, ptr %bdaddr.i, i32 6)
  %src_type42.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 9
  %6 = ptrtoint ptr %src_type42.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %src_type42.i, align 2
  %state.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 5
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %state.i, align 4
  %mode.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 17
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mode.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 14
  %9 = ptrtoint ptr %imtu.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 672, ptr %imtu.i, align 4
  %ops.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 85
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smp_root_chan_ops, ptr %ops.i, align 4
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nesting.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %nesting.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 2, ptr %nesting.i, align 4
  %cmp.i = icmp ugt ptr %call1984.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %smp_add_cid.exit.cleanup_crit_edge, label %cleanup.thread

smp_add_cid.exit.cleanup_crit_edge:               ; preds = %smp_add_cid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.thread:                                   ; preds = %smp_add_cid.exit
  call void @__sanitizer_cov_trace_pc() #16
  %smp_bredr_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 169
  %12 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1984.i, ptr %smp_bredr_data, align 8
  br label %if.end12

cleanup:                                          ; preds = %smp_add_cid.exit.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0.i26 = phi ptr [ %call1984.i, %smp_add_cid.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.cleanup_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i26 to i32
  br label %return

if.else:                                          ; preds = %if.end
  %smp_bredr_data10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 169
  %14 = ptrtoint ptr %smp_bredr_data10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smp_bredr_data10, align 8
  store ptr null, ptr %smp_bredr_data10, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_del_chan.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_force_bredr, %if.then.i)) #14
          to label %do.end.i [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_del_chan.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.97, ptr noundef %15) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else
  %data.i23 = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 84
  %16 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i23, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %do.end.i.smp_del_chan.exit_crit_edge, label %if.then4.i

do.end.i.smp_del_chan.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_del_chan.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data.i23, align 4
  %tfm_cmac.i = getelementptr inbounds %struct.smp_dev, ptr %17, i32 0, i32 4
  %19 = ptrtoint ptr %tfm_cmac.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm_cmac.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %20, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %20, ptr noundef %base.i.i.i) #14
  %tfm_ecdh.i = getelementptr inbounds %struct.smp_dev, ptr %17, i32 0, i32 5
  %21 = ptrtoint ptr %tfm_ecdh.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm_ecdh.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %22, ptr noundef %22) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %17) #14
  br label %smp_del_chan.exit

smp_del_chan.exit:                                ; preds = %if.then4.i, %do.end.i.smp_del_chan.exit_crit_edge
  tail call void @l2cap_chan_put(ptr noundef %15) #14
  br label %if.end12

if.end12:                                         ; preds = %smp_del_chan.exit, %cleanup.thread
  tail call void @_change_bit(i32 noundef 38, ptr noundef %dev_flags) #14
  br label %return

return:                                           ; preds = %if.end12, %cleanup, %entry.return_crit_edge
  %retval.1 = phi i32 [ %13, %cleanup ], [ 0, %if.end12 ], [ -114, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smp_add_cid(ptr noundef %hdev, i16 noundef zeroext %cid) unnamed_addr #0 align 64 {
entry:
  %bdaddr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %cid)
  %cmp = icmp eq i16 %cid, 7
  br i1 %cmp, label %create_chan.thread, label %if.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0) #14
  %cmp.i81 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then12, label %create_chan

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %name13 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name13) #14
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call5, ptr noundef %base.i.i) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

create_chan:                                      ; preds = %if.end9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call7.i.i, align 8
  %tfm_cmac17 = getelementptr inbounds %struct.smp_dev, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %tfm_cmac17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %tfm_cmac17, align 4
  %tfm_ecdh18 = getelementptr inbounds %struct.smp_dev, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %tfm_ecdh18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %tfm_ecdh18, align 8
  %call19 = tail call ptr @l2cap_chan_create() #14
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then23, label %create_chan.if.end28_crit_edge

create_chan.if.end28_crit_edge:                   ; preds = %create_chan
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

create_chan.thread:                               ; preds = %entry
  %call1984 = tail call ptr @l2cap_chan_create() #14
  %tobool20.not85 = icmp eq ptr %call1984, null
  br i1 %tobool20.not85, label %create_chan.thread.cleanup_crit_edge, label %create_chan.thread.if.end28_crit_edge

create_chan.thread.if.end28_crit_edge:            ; preds = %create_chan.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

create_chan.thread.cleanup_crit_edge:             ; preds = %create_chan.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %create_chan
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %tfm_cmac17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm_cmac17, align 4
  %base.i.i82 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i82) #14
  %6 = ptrtoint ptr %tfm_ecdh18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm_ecdh18, align 8
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %7) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end28:                                         ; preds = %create_chan.thread.if.end28_crit_edge, %create_chan.if.end28_crit_edge
  %call1988 = phi ptr [ %call1984, %create_chan.thread.if.end28_crit_edge ], [ %call19, %create_chan.if.end28_crit_edge ]
  %smp.086 = phi ptr [ null, %create_chan.thread.if.end28_crit_edge ], [ %call7.i.i, %create_chan.if.end28_crit_edge ]
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 84
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %smp.086, ptr %data, align 4
  %call29 = tail call i32 @l2cap_add_scid(ptr noundef nonnull %call1988, i16 noundef zeroext %cid) #14
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call1988) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %cid)
  %cmp31 = icmp eq i16 %cid, 6
  br i1 %cmp31, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bdaddr_type) #14
  %9 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %bdaddr_type, align 1, !annotation !280
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 8
  call void @hci_copy_identity_address(ptr noundef %hdev, ptr noundef %src, ptr noundef nonnull %bdaddr_type) #14
  %10 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bdaddr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp35 = icmp eq i8 %11, 0
  %spec.select = select i1 %cmp35, i8 1, i8 2
  %12 = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %12, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bdaddr_type) #14
  br label %if.end43

if.else40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %src41 = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 8
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %src41, ptr %bdaddr, i32 6)
  %src_type42 = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 9
  %15 = ptrtoint ptr %src_type42 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %src_type42, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then33
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %state, align 4
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 17
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mode, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 14
  %18 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 672, ptr %imtu, align 4
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 85
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @smp_root_chan_ops, ptr %ops, align 4
  %nesting = getelementptr inbounds %struct.l2cap_chan, ptr %call1988, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nesting, i32 noundef 4) #14
  %20 = ptrtoint ptr %nesting to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %nesting, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then23, %create_chan.thread.cleanup_crit_edge, %if.then12, %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1988, %if.end43 ], [ %call5, %if.then7 ], [ %call10, %if.then12 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then23 ], [ inttoptr (i32 -12 to ptr), %create_chan.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_del_chan(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_del_chan.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_del_chan, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_del_chan.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.97, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  %tfm_cmac = getelementptr inbounds %struct.smp_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm_cmac, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %base.i.i) #14
  %tfm_ecdh = getelementptr inbounds %struct.smp_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %tfm_ecdh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm_ecdh, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %6) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  tail call void @l2cap_chan_put(ptr noundef %chan) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_register(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_register.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_register, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_register.__UNIQUE_ID_ddebug529, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx3, align 2
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 168
  %3 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smp_data, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.end6.if.end41_crit_edge, label %do.end23, !prof !281

if.end6.if.end41_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

do.end23:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3410, i32 noundef 9, ptr noundef null) #14
  %5 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smp_data, align 4
  store ptr null, ptr %smp_data, align 4
  tail call fastcc void @smp_del_chan(ptr noundef %6)
  br label %if.end41

if.end41:                                         ; preds = %do.end23, %if.end6.if.end41_crit_edge
  %call42 = tail call fastcc ptr @smp_add_cid(ptr noundef %hdev, i16 noundef zeroext 6)
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call42 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %8 = ptrtoint ptr %smp_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call42, ptr %smp_data, align 4
  %arrayidx50 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx50, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool53.not = icmp eq i8 %11, 0
  br i1 %tobool53.not, label %if.then54, label %if.end46.if.end60_crit_edge

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then54:                                        ; preds = %if.end46
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool57.not = icmp eq i32 %14, 0
  br i1 %tobool57.not, label %if.then54.cleanup_crit_edge, label %if.then54.if.end60_crit_edge

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end60:                                         ; preds = %if.then54.if.end60_crit_edge, %if.end46.if.end60_crit_edge
  %smp_bredr_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 169
  %15 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smp_bredr_data, align 8
  %tobool62.not = icmp eq ptr %16, null
  br i1 %tobool62.not, label %if.end60.if.end96_crit_edge, label %do.end78, !prof !281

if.end60.if.end96_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

do.end78:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3428, i32 noundef 9, ptr noundef null) #14
  %17 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smp_bredr_data, align 8
  store ptr null, ptr %smp_bredr_data, align 8
  tail call fastcc void @smp_del_chan(ptr noundef %18)
  br label %if.end96

if.end96:                                         ; preds = %do.end78, %if.end60.if.end96_crit_edge
  %call1984.i = tail call ptr @l2cap_chan_create() #14
  %tobool20.not85.i = icmp eq ptr %call1984.i, null
  br i1 %tobool20.not85.i, label %if.end96.if.then99_crit_edge, label %smp_add_cid.exit

if.end96.if.then99_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

smp_add_cid.exit:                                 ; preds = %if.end96
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 84
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data.i, align 4
  %call29.i = tail call i32 @l2cap_add_scid(ptr noundef nonnull %call1984.i, i16 noundef zeroext 7) #14
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call1984.i) #14
  %src41.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 8
  %bdaddr.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %20 = call ptr @memcpy(ptr %src41.i, ptr %bdaddr.i, i32 6)
  %src_type42.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 9
  %21 = ptrtoint ptr %src_type42.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %src_type42.i, align 2
  %state.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 5
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %state.i, align 4
  %mode.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 17
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %mode.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 14
  %24 = ptrtoint ptr %imtu.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 672, ptr %imtu.i, align 4
  %ops.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 85
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @smp_root_chan_ops, ptr %ops.i, align 4
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %call1984.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nesting.i, i32 noundef 4) #14
  %26 = ptrtoint ptr %nesting.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 2, ptr %nesting.i, align 4
  %cmp.i131 = icmp ugt ptr %call1984.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %smp_add_cid.exit.if.then99_crit_edge, label %if.end103

smp_add_cid.exit.if.then99_crit_edge:             ; preds = %smp_add_cid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

if.then99:                                        ; preds = %smp_add_cid.exit.if.then99_crit_edge, %if.end96.if.then99_crit_edge
  %retval.0.i130136 = phi ptr [ %call1984.i, %smp_add_cid.exit.if.then99_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end96.if.then99_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i130136 to i32
  %28 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smp_data, align 4
  store ptr null, ptr %smp_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_del_chan.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_register, %if.then.i)) #14
          to label %do.end.i [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_del_chan.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.97, ptr noundef %29) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then99
  %data.i132 = getelementptr inbounds %struct.l2cap_chan, ptr %29, i32 0, i32 84
  %30 = ptrtoint ptr %data.i132 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i132, align 4
  %tobool3.not.i = icmp eq ptr %31, null
  br i1 %tobool3.not.i, label %do.end.i.smp_del_chan.exit_crit_edge, label %if.then4.i

do.end.i.smp_del_chan.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_del_chan.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %data.i132 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %data.i132, align 4
  %tfm_cmac.i = getelementptr inbounds %struct.smp_dev, ptr %31, i32 0, i32 4
  %33 = ptrtoint ptr %tfm_cmac.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfm_cmac.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %34, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %34, ptr noundef %base.i.i.i) #14
  %tfm_ecdh.i = getelementptr inbounds %struct.smp_dev, ptr %31, i32 0, i32 5
  %35 = ptrtoint ptr %tfm_ecdh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tfm_ecdh.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %36, ptr noundef %36) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %31) #14
  br label %smp_del_chan.exit

smp_del_chan.exit:                                ; preds = %if.then4.i, %do.end.i.smp_del_chan.exit_crit_edge
  tail call void @l2cap_chan_put(ptr noundef %29) #14
  br label %cleanup

if.end103:                                        ; preds = %smp_add_cid.exit
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1984.i, ptr %smp_bredr_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %smp_del_chan.exit, %if.then54.cleanup_crit_edge, %if.then44, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then44 ], [ %27, %smp_del_chan.exit ], [ 0, %if.end103 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_unregister(ptr nocapture noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp_bredr_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 169
  %0 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp_bredr_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %smp_bredr_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %smp_bredr_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_del_chan.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_unregister, %if.then.i)) #14
          to label %do.end.i [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_del_chan.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.97, ptr noundef nonnull %1) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %do.end.i.smp_del_chan.exit_crit_edge, label %if.then4.i

do.end.i.smp_del_chan.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_del_chan.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data.i, align 4
  %tfm_cmac.i = getelementptr inbounds %struct.smp_dev, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %tfm_cmac.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm_cmac.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i.i) #14
  %tfm_ecdh.i = getelementptr inbounds %struct.smp_dev, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %tfm_ecdh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm_ecdh.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %9) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %4) #14
  br label %smp_del_chan.exit

smp_del_chan.exit:                                ; preds = %if.then4.i, %do.end.i.smp_del_chan.exit_crit_edge
  tail call void @l2cap_chan_put(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %smp_del_chan.exit, %entry.if.end_crit_edge
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 168
  %10 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smp_data, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %smp_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %smp_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_del_chan.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_unregister, %if.then.i15)) #14
          to label %do.end.i18 [label %if.then.i15], !srcloc !275

if.then.i15:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_del_chan.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.97, ptr noundef nonnull %11) #14
  br label %do.end.i18

do.end.i18:                                       ; preds = %if.then.i15, %if.then4
  %data.i16 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 84
  %13 = ptrtoint ptr %data.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i16, align 4
  %tobool3.not.i17 = icmp eq ptr %14, null
  br i1 %tobool3.not.i17, label %do.end.i18.smp_del_chan.exit23_crit_edge, label %if.then4.i22

do.end.i18.smp_del_chan.exit23_crit_edge:         ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_del_chan.exit23

if.then4.i22:                                     ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %data.i16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data.i16, align 4
  %tfm_cmac.i19 = getelementptr inbounds %struct.smp_dev, ptr %14, i32 0, i32 4
  %16 = ptrtoint ptr %tfm_cmac.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm_cmac.i19, align 4
  %base.i.i.i20 = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %17, ptr noundef %base.i.i.i20) #14
  %tfm_ecdh.i21 = getelementptr inbounds %struct.smp_dev, ptr %14, i32 0, i32 5
  %18 = ptrtoint ptr %tfm_ecdh.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm_ecdh.i21, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %19, ptr noundef %19) #14
  tail call void @kfree_sensitive(ptr noundef nonnull %14) #14
  br label %smp_del_chan.exit23

smp_del_chan.exit23:                              ; preds = %if.then4.i22, %do.end.i18.smp_del_chan.exit23_crit_edge
  tail call void @l2cap_chan_put(ptr noundef nonnull %11) #14
  br label %if.end7

if.end7:                                          ; preds = %smp_del_chan.exit23, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bt_selftest_smp() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16) #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0) #14
  %cmp.i18 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18) #14
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #14
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call fastcc i32 @run_selftests(ptr noundef %call, ptr noundef %call3) #19
  %base.i.i19 = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i19) #14
  tail call void @crypto_destroy_tfm(ptr noundef %call3, ptr noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then5 ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_kpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_selftests(ptr noundef %tfm_cmac, ptr noundef %tfm_ecdh) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #14
  %call1 = tail call fastcc i32 @test_debug_key(ptr noundef %tfm_ecdh) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @test_ah() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @test_c1() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @test_s1() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @test_f4(ptr noundef %tfm_cmac) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @test_f5(ptr noundef %tfm_cmac) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @test_f6(ptr noundef %tfm_cmac) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.if.else_crit_edge

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @test_g2(ptr noundef %tfm_cmac) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.if.else_crit_edge

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc i32 @test_h6(ptr noundef %tfm_cmac) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then37, label %if.end29.if.else_crit_edge

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = tail call i64 @ktime_get() #14
  %sub = sub i64 %call34, %call
  %shr = lshr i64 %sub, 10
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.107, i64 noundef %shr) #14
  %call38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @test_smp_buffer, i32 noundef 32, ptr noundef nonnull @.str.108, i64 noundef %shr)
  br label %if.end40

if.else:                                          ; preds = %if.end29.if.else_crit_edge, %if.end25.if.else_crit_edge, %if.end21.if.else_crit_edge, %if.end17.if.else_crit_edge, %if.end13.if.else_crit_edge, %if.end9.if.else_crit_edge, %if.end5.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %.str.98.sink = phi ptr [ @.str.98, %entry.if.else_crit_edge ], [ @.str.99, %if.end.if.else_crit_edge ], [ @.str.100, %if.end5.if.else_crit_edge ], [ @.str.101, %if.end9.if.else_crit_edge ], [ @.str.102, %if.end13.if.else_crit_edge ], [ @.str.103, %if.end17.if.else_crit_edge ], [ @.str.104, %if.end21.if.else_crit_edge ], [ @.str.105, %if.end25.if.else_crit_edge ], [ @.str.106, %if.end29.if.else_crit_edge ]
  %err.0.ph = phi i32 [ %call1, %entry.if.else_crit_edge ], [ %call2, %if.end.if.else_crit_edge ], [ %call6, %if.end5.if.else_crit_edge ], [ %call10, %if.end9.if.else_crit_edge ], [ %call14, %if.end13.if.else_crit_edge ], [ %call18, %if.end17.if.else_crit_edge ], [ %call22, %if.end21.if.else_crit_edge ], [ %call26, %if.end25.if.else_crit_edge ], [ %call30, %if.end29.if.else_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.98.sink) #14
  %0 = call ptr @memcpy(ptr @test_smp_buffer, ptr @.str.109, i32 6)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %err.060 = phi i32 [ %err.0.ph, %if.else ], [ 0, %if.then37 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %1 = load ptr, ptr @bt_debugfs, align 4
  %call41 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.110, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @test_smp_fops) #14
  ret i32 %err.060
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_e(ptr nocapture noundef readonly %k, ptr nocapture noundef %r) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.crypto_aes_ctx, align 4
  %tmp = alloca [16 x i8], align 1
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx) #14
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 484)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  %1 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 4
  %5 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 5
  %6 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 6
  %7 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 7
  %8 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 8
  %9 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 9
  %10 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 10
  %11 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 11
  %12 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 12
  %13 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 13
  %14 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 14
  %15 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #14
  %16 = call ptr @memset(ptr %data, i32 255, i32 16)
  %17 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %k, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %15, align 1
  %arrayidx.i.1 = getelementptr i8, ptr %k, i32 1
  %20 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.1, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %14, align 1
  %arrayidx.i.2 = getelementptr i8, ptr %k, i32 2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.2, align 1
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %13, align 1
  %arrayidx.i.3 = getelementptr i8, ptr %k, i32 3
  %26 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.3, align 1
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %12, align 1
  %arrayidx.i.4 = getelementptr i8, ptr %k, i32 4
  %29 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.4, align 1
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %11, align 1
  %arrayidx.i.5 = getelementptr i8, ptr %k, i32 5
  %32 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.5, align 1
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %10, align 1
  %arrayidx.i.6 = getelementptr i8, ptr %k, i32 6
  %35 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.6, align 1
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %9, align 1
  %arrayidx.i.7 = getelementptr i8, ptr %k, i32 7
  %38 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.7, align 1
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %8, align 1
  %arrayidx.i.8 = getelementptr i8, ptr %k, i32 8
  %41 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.8, align 1
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %7, align 1
  %arrayidx.i.9 = getelementptr i8, ptr %k, i32 9
  %44 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.9, align 1
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %6, align 1
  %arrayidx.i.10 = getelementptr i8, ptr %k, i32 10
  %47 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.10, align 1
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %5, align 1
  %arrayidx.i.11 = getelementptr i8, ptr %k, i32 11
  %50 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.11, align 1
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %4, align 1
  %arrayidx.i.12 = getelementptr i8, ptr %k, i32 12
  %53 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.12, align 1
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %3, align 1
  %arrayidx.i.13 = getelementptr i8, ptr %k, i32 13
  %56 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.13, align 1
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %2, align 1
  %arrayidx.i.14 = getelementptr i8, ptr %k, i32 14
  %59 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.14, align 1
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %1, align 1
  %arrayidx.i.15 = getelementptr i8, ptr %k, i32 15
  %62 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.15, align 1
  %64 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %tmp, align 1
  %call = call i32 @aes_expandkey(ptr noundef nonnull %ctx, ptr noundef nonnull %tmp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.i21.preheader, label %if.then

for.body.i21.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %65 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 15
  %66 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 14
  %67 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 13
  %68 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 12
  %69 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 11
  %70 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 10
  %71 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 9
  %72 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 8
  %73 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 7
  %74 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 6
  %75 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %76 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %77 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %78 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %79 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %80 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %r, align 1
  %82 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %65, align 1
  %arrayidx.i16.1 = getelementptr i8, ptr %r, i32 1
  %83 = ptrtoint ptr %arrayidx.i16.1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i16.1, align 1
  %85 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %66, align 1
  %arrayidx.i16.2 = getelementptr i8, ptr %r, i32 2
  %86 = ptrtoint ptr %arrayidx.i16.2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i16.2, align 1
  %88 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %67, align 1
  %arrayidx.i16.3 = getelementptr i8, ptr %r, i32 3
  %89 = ptrtoint ptr %arrayidx.i16.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i16.3, align 1
  %91 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %68, align 1
  %arrayidx.i16.4 = getelementptr i8, ptr %r, i32 4
  %92 = ptrtoint ptr %arrayidx.i16.4 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i16.4, align 1
  %94 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %69, align 1
  %arrayidx.i16.5 = getelementptr i8, ptr %r, i32 5
  %95 = ptrtoint ptr %arrayidx.i16.5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i16.5, align 1
  %97 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %70, align 1
  %arrayidx.i16.6 = getelementptr i8, ptr %r, i32 6
  %98 = ptrtoint ptr %arrayidx.i16.6 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i16.6, align 1
  %100 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %71, align 1
  %arrayidx.i16.7 = getelementptr i8, ptr %r, i32 7
  %101 = ptrtoint ptr %arrayidx.i16.7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i16.7, align 1
  %103 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %72, align 1
  %arrayidx.i16.8 = getelementptr i8, ptr %r, i32 8
  %104 = ptrtoint ptr %arrayidx.i16.8 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i16.8, align 1
  %106 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %73, align 1
  %arrayidx.i16.9 = getelementptr i8, ptr %r, i32 9
  %107 = ptrtoint ptr %arrayidx.i16.9 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i16.9, align 1
  %109 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %74, align 1
  %arrayidx.i16.10 = getelementptr i8, ptr %r, i32 10
  %110 = ptrtoint ptr %arrayidx.i16.10 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i16.10, align 1
  %112 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %75, align 1
  %arrayidx.i16.11 = getelementptr i8, ptr %r, i32 11
  %113 = ptrtoint ptr %arrayidx.i16.11 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i16.11, align 1
  %115 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %76, align 1
  %arrayidx.i16.12 = getelementptr i8, ptr %r, i32 12
  %116 = ptrtoint ptr %arrayidx.i16.12 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i16.12, align 1
  %118 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %77, align 1
  %arrayidx.i16.13 = getelementptr i8, ptr %r, i32 13
  %119 = ptrtoint ptr %arrayidx.i16.13 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i16.13, align 1
  %121 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %78, align 1
  %arrayidx.i16.14 = getelementptr i8, ptr %r, i32 14
  %122 = ptrtoint ptr %arrayidx.i16.14 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i16.14, align 1
  %124 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %79, align 1
  %arrayidx.i16.15 = getelementptr i8, ptr %r, i32 15
  %125 = ptrtoint ptr %arrayidx.i16.15 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i16.15, align 1
  %127 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %data, align 1
  call void @aes_encrypt(ptr noundef nonnull %ctx, ptr noundef nonnull %data, ptr noundef nonnull %data) #14
  %128 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %data, align 1
  %130 = ptrtoint ptr %arrayidx.i16.15 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx.i16.15, align 1
  %131 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %79, align 1
  %133 = ptrtoint ptr %arrayidx.i16.14 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx.i16.14, align 1
  %134 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %78, align 1
  %136 = ptrtoint ptr %arrayidx.i16.13 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx.i16.13, align 1
  %137 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %77, align 1
  %139 = ptrtoint ptr %arrayidx.i16.12 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx.i16.12, align 1
  %140 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %76, align 1
  %142 = ptrtoint ptr %arrayidx.i16.11 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx.i16.11, align 1
  %143 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %75, align 1
  %145 = ptrtoint ptr %arrayidx.i16.10 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx.i16.10, align 1
  %146 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %74, align 1
  %148 = ptrtoint ptr %arrayidx.i16.9 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx.i16.9, align 1
  %149 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %73, align 1
  %151 = ptrtoint ptr %arrayidx.i16.8 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx.i16.8, align 1
  %152 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %72, align 1
  %154 = ptrtoint ptr %arrayidx.i16.7 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %arrayidx.i16.7, align 1
  %155 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %71, align 1
  %157 = ptrtoint ptr %arrayidx.i16.6 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx.i16.6, align 1
  %158 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %70, align 1
  %160 = ptrtoint ptr %arrayidx.i16.5 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx.i16.5, align 1
  %161 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %69, align 1
  %163 = ptrtoint ptr %arrayidx.i16.4 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx.i16.4, align 1
  %164 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %68, align 1
  %166 = ptrtoint ptr %arrayidx.i16.3 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx.i16.3, align 1
  %167 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %67, align 1
  %169 = ptrtoint ptr %arrayidx.i16.2 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx.i16.2, align 1
  %170 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %66, align 1
  %172 = ptrtoint ptr %arrayidx.i16.1 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %arrayidx.i16.1, align 1
  %173 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %65, align 1
  %175 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %r, align 1
  %176 = call ptr @memset(ptr %ctx, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx) #14, !srcloc !282
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.body.i21.preheader
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aes_cmac(ptr noundef %tfm, ptr nocapture noundef readonly %k, ptr nocapture noundef readonly %m, i32 noundef %len, ptr nocapture noundef writeonly %mac) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [16 x i8], align 1
  %mac_msb = alloca [16 x i8], align 1
  %msg_msb = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_msb) #14
  %0 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %mac_msb, i32 0, i32 15
  %15 = call ptr @memset(ptr %mac_msb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %msg_msb) #14
  %16 = call ptr @memset(ptr %msg_msb, i32 255, i32 80)
  %tobool.not = icmp eq ptr %tfm, null
  br i1 %tobool.not, label %if.then1, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  %17 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 15
  %18 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 14
  %19 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 13
  %20 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 12
  %21 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 11
  %22 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 10
  %23 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 9
  %24 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 8
  %25 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 7
  %26 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 6
  %27 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 5
  %28 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 4
  %29 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 3
  %30 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 2
  %31 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 1
  %32 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %k, align 1
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %17, align 1
  %arrayidx.i.1 = getelementptr i8, ptr %k, i32 1
  %35 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.1, align 1
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %18, align 1
  %arrayidx.i.2 = getelementptr i8, ptr %k, i32 2
  %38 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.2, align 1
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %19, align 1
  %arrayidx.i.3 = getelementptr i8, ptr %k, i32 3
  %41 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.3, align 1
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %20, align 1
  %arrayidx.i.4 = getelementptr i8, ptr %k, i32 4
  %44 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.4, align 1
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %21, align 1
  %arrayidx.i.5 = getelementptr i8, ptr %k, i32 5
  %47 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.5, align 1
  %49 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %22, align 1
  %arrayidx.i.6 = getelementptr i8, ptr %k, i32 6
  %50 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.6, align 1
  %52 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %23, align 1
  %arrayidx.i.7 = getelementptr i8, ptr %k, i32 7
  %53 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.7, align 1
  %55 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %24, align 1
  %arrayidx.i.8 = getelementptr i8, ptr %k, i32 8
  %56 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.8, align 1
  %58 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %25, align 1
  %arrayidx.i.9 = getelementptr i8, ptr %k, i32 9
  %59 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.9, align 1
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %26, align 1
  %arrayidx.i.10 = getelementptr i8, ptr %k, i32 10
  %62 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.10, align 1
  %64 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %27, align 1
  %arrayidx.i.11 = getelementptr i8, ptr %k, i32 11
  %65 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.11, align 1
  %67 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %28, align 1
  %arrayidx.i.12 = getelementptr i8, ptr %k, i32 12
  %68 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.12, align 1
  %70 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %29, align 1
  %arrayidx.i.13 = getelementptr i8, ptr %k, i32 13
  %71 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.13, align 1
  %73 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %30, align 1
  %arrayidx.i.14 = getelementptr i8, ptr %k, i32 14
  %74 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.14, align 1
  %76 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %31, align 1
  %arrayidx.i.15 = getelementptr i8, ptr %k, i32 15
  %77 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.15, align 1
  %79 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp7.not.i = icmp eq i32 %len, 0
  br i1 %cmp7.not.i, label %for.body.i.preheader.swap_buf.exit38_crit_edge, label %for.body.i.preheader.for.body.i37_crit_edge

for.body.i.preheader.for.body.i37_crit_edge:      ; preds = %for.body.i.preheader
  br label %for.body.i37

for.body.i.preheader.swap_buf.exit38_crit_edge:   ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %swap_buf.exit38

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef null) #14
  br label %cleanup

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %for.body.i.preheader.for.body.i37_crit_edge
  %i.08.i31 = phi i32 [ %inc.i35, %for.body.i37.for.body.i37_crit_edge ], [ 0, %for.body.i.preheader.for.body.i37_crit_edge ]
  %arrayidx.i32 = getelementptr i8, ptr %m, i32 %i.08.i31
  %80 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i32, align 1
  %82 = xor i32 %i.08.i31, -1
  %sub1.i33 = add i32 %82, %len
  %arrayidx2.i34 = getelementptr i8, ptr %msg_msb, i32 %sub1.i33
  %83 = ptrtoint ptr %arrayidx2.i34 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %81, ptr %arrayidx2.i34, align 1
  %inc.i35 = add nuw i32 %i.08.i31, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, %len
  br i1 %exitcond.not.i36, label %for.body.i37.swap_buf.exit38_crit_edge, label %for.body.i37.for.body.i37_crit_edge

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i37

for.body.i37.swap_buf.exit38_crit_edge:           ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %swap_buf.exit38

swap_buf.exit38:                                  ; preds = %for.body.i37.swap_buf.exit38_crit_edge, %for.body.i.preheader.swap_buf.exit38_crit_edge
  %call = call i32 @crypto_shash_setkey(ptr noundef nonnull %tfm, ptr noundef nonnull %tmp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %swap_buf.exit38
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, i32 noundef %call) #14
  br label %cleanup

if.end9:                                          ; preds = %swap_buf.exit38
  %call12 = call i32 @crypto_shash_tfm_digest(ptr noundef nonnull %tfm, ptr noundef nonnull %msg_msb, i32 noundef %len, ptr noundef nonnull %mac_msb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body.i45.preheader, label %if.then14

for.body.i45.preheader:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %mac_msb to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %mac_msb, align 1
  %arrayidx2.i42 = getelementptr i8, ptr %mac, i32 15
  %86 = ptrtoint ptr %arrayidx2.i42 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx2.i42, align 1
  %87 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %0, align 1
  %arrayidx2.i42.1 = getelementptr i8, ptr %mac, i32 14
  %89 = ptrtoint ptr %arrayidx2.i42.1 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx2.i42.1, align 1
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %1, align 1
  %arrayidx2.i42.2 = getelementptr i8, ptr %mac, i32 13
  %92 = ptrtoint ptr %arrayidx2.i42.2 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx2.i42.2, align 1
  %93 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %2, align 1
  %arrayidx2.i42.3 = getelementptr i8, ptr %mac, i32 12
  %95 = ptrtoint ptr %arrayidx2.i42.3 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx2.i42.3, align 1
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %3, align 1
  %arrayidx2.i42.4 = getelementptr i8, ptr %mac, i32 11
  %98 = ptrtoint ptr %arrayidx2.i42.4 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx2.i42.4, align 1
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %4, align 1
  %arrayidx2.i42.5 = getelementptr i8, ptr %mac, i32 10
  %101 = ptrtoint ptr %arrayidx2.i42.5 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx2.i42.5, align 1
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %5, align 1
  %arrayidx2.i42.6 = getelementptr i8, ptr %mac, i32 9
  %104 = ptrtoint ptr %arrayidx2.i42.6 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx2.i42.6, align 1
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %6, align 1
  %arrayidx2.i42.7 = getelementptr i8, ptr %mac, i32 8
  %107 = ptrtoint ptr %arrayidx2.i42.7 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx2.i42.7, align 1
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %7, align 1
  %arrayidx2.i42.8 = getelementptr i8, ptr %mac, i32 7
  %110 = ptrtoint ptr %arrayidx2.i42.8 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx2.i42.8, align 1
  %111 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %8, align 1
  %arrayidx2.i42.9 = getelementptr i8, ptr %mac, i32 6
  %113 = ptrtoint ptr %arrayidx2.i42.9 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx2.i42.9, align 1
  %114 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %9, align 1
  %arrayidx2.i42.10 = getelementptr i8, ptr %mac, i32 5
  %116 = ptrtoint ptr %arrayidx2.i42.10 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx2.i42.10, align 1
  %117 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %10, align 1
  %arrayidx2.i42.11 = getelementptr i8, ptr %mac, i32 4
  %119 = ptrtoint ptr %arrayidx2.i42.11 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx2.i42.11, align 1
  %120 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %11, align 1
  %arrayidx2.i42.12 = getelementptr i8, ptr %mac, i32 3
  %122 = ptrtoint ptr %arrayidx2.i42.12 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx2.i42.12, align 1
  %123 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %12, align 1
  %arrayidx2.i42.13 = getelementptr i8, ptr %mac, i32 2
  %125 = ptrtoint ptr %arrayidx2.i42.13 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx2.i42.13, align 1
  %126 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %13, align 1
  %arrayidx2.i42.14 = getelementptr i8, ptr %mac, i32 1
  %128 = ptrtoint ptr %arrayidx2.i42.14 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx2.i42.14, align 1
  %129 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %14, align 1
  %131 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %mac, align 1
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, i32 noundef %call12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %for.body.i45.preheader, %if.then8, %if.then1
  %retval.0 = phi i32 [ %call, %if.then8 ], [ %call12, %if.then14 ], [ -22, %if.then1 ], [ 0, %for.body.i45.preheader ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %msg_msb) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_msb) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sc_passkey_round(ptr noundef %smp, i8 noundef zeroext %smp_op) unnamed_addr #0 align 64 {
entry:
  %m.i.i126 = alloca [65 x i8], align 1
  %cfm.i127 = alloca %struct.smp_cmd_pairing_confirm, align 1
  %m.i.i = alloca [65 x i8], align 1
  %cfm.i = alloca %struct.smp_cmd_pairing_confirm, align 1
  %m.i = alloca [65 x i8], align 1
  %cfm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfm) #14
  %passkey_round = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 24
  %6 = call ptr @memset(ptr %cfm, i32 255, i32 16)
  %7 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %passkey_round, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %8)
  %cmp = icmp ugt i8 %8, 19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i8 %smp_op to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %smp_op, label %sw.default [
    i8 4, label %sw.bb
    i8 3, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end
  %passkey_notify = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %passkey_notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %passkey_notify, align 4
  %shr = lshr i32 %11, %conv
  %12 = trunc i32 %shr to i8
  %13 = and i8 %12, 1
  %conv10 = or i8 %13, -128
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %14 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm_cmac, align 4
  %remote_pk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 26
  %local_pk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %16 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %m.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 1
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %local_pk, i32 32)
  %add.ptr4.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %18 = call ptr @memcpy(ptr %add.ptr4.i, ptr %remote_pk, i32 32)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %15, ptr noundef %rrnd, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %cfm) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end15, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 7
  %call.i123 = call i32 @__crypto_memneq(ptr noundef %pcnf, ptr noundef nonnull %cfm, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.not.i.not = icmp eq i32 %call.i123, 0
  br i1 %cmp.not.i.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %passkey_round, align 1
  %inc = add i8 %20, 1
  store i8 %inc, ptr %passkey_round, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %inc)
  %cmp25 = icmp eq i8 %inc, 20
  br i1 %cmp25, label %if.then27, label %if.end21.if.end34_crit_edge

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then27:                                        ; preds = %if.end21
  %mackey = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 28
  %tk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call30 = call fastcc i32 @sc_mackey_and_ltk(ptr noundef %smp, ptr noundef %mackey, ptr noundef %tk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then27.if.end34_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %if.end21.if.end34_crit_edge
  %out = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end34
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd)
  %23 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %passkey_round, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %24)
  %cmp40 = icmp eq i8 %24, 20
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd) #14
  br label %cleanup

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %25 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %passkey_round, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %26)
  %cmp48.not = icmp eq i8 %26, 20
  br i1 %cmp48.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %call51 = call fastcc zeroext i8 @sc_passkey_round(ptr noundef %smp, i8 noundef zeroext 0)
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sc_dhkey_check(ptr noundef %smp)
  %allow_cmd53 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd53) #14
  br label %cleanup

sw.bb54:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 22
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool56.not = icmp eq i32 %29, 0
  br i1 %tobool56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %cleanup

if.end59:                                         ; preds = %sw.bb54
  %allow_cmd60 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %allow_cmd60) #14
  %out61 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %out61 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %out61, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool62.not = icmp eq i8 %31, 0
  br i1 %tobool62.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %prnd64 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  tail call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd64)
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %32 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smp, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfm.i) #14
  %passkey_notify.i = getelementptr inbounds %struct.hci_conn, ptr %35, i32 0, i32 29
  %36 = call ptr @memset(ptr %cfm.i, i32 255, i32 16)
  %37 = ptrtoint ptr %passkey_notify.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %passkey_notify.i, align 4
  %39 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %passkey_round, align 1
  %conv.i = zext i8 %40 to i32
  %shr.i124 = lshr i32 %38, %conv.i
  %41 = trunc i32 %shr.i124 to i8
  %42 = and i8 %41, 1
  %conv5.i = or i8 %42, -128
  %prnd.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %prnd.i, i32 noundef 16) #14
  %tfm_cmac.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %43 = ptrtoint ptr %tfm_cmac.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tfm_cmac.i, align 4
  %local_pk.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  %remote_pk.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i.i) #14
  %45 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv5.i, ptr %m.i.i, align 1
  %add.ptr.i.i = getelementptr inbounds i8, ptr %m.i.i, i32 1
  %46 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %remote_pk.i, i32 32)
  %add.ptr4.i.i = getelementptr inbounds i8, ptr %m.i.i, i32 33
  %47 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %local_pk.i, i32 32)
  %call.i.i = call fastcc i32 @aes_cmac(ptr noundef %44, ptr noundef %prnd.i, ptr noundef nonnull %m.i.i, i32 noundef 65, ptr noundef nonnull %cfm.i) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.sc_passkey_send_confirm.exit_crit_edge

if.end66.sc_passkey_send_confirm.exit_crit_edge:  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_passkey_send_confirm.exit

if.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_send_cmd(ptr noundef %33, i8 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %cfm.i) #14
  br label %sc_passkey_send_confirm.exit

sc_passkey_send_confirm.exit:                     ; preds = %if.end.i, %if.end66.sc_passkey_send_confirm.exit_crit_edge
  %retval.0.i125 = phi i8 [ 0, %if.end.i ], [ 8, %if.end66.sc_passkey_send_confirm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm.i) #14
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %out69 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %48 = ptrtoint ptr %out69 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %out69, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool70.not = icmp eq i8 %49, 0
  br i1 %tobool70.not, label %sw.default.cleanup_crit_edge, label %do.body

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %sw.default
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_passkey_round.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sc_passkey_round, %if.then77)) #14
          to label %do.end [label %if.then77], !srcloc !275

if.then77:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  %50 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %passkey_round, align 1
  %conv80 = zext i8 %51 to i32
  %add = add nuw nsw i32 %conv80, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sc_passkey_round.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %add) #14
  br label %do.end

do.end:                                           ; preds = %if.then77, %do.body
  %allow_cmd82 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd82) #14
  %52 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smp, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfm.i127) #14
  %passkey_notify.i128 = getelementptr inbounds %struct.hci_conn, ptr %55, i32 0, i32 29
  %56 = call ptr @memset(ptr %cfm.i127, i32 255, i32 16)
  %57 = ptrtoint ptr %passkey_notify.i128 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %passkey_notify.i128, align 4
  %59 = ptrtoint ptr %passkey_round to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %passkey_round, align 1
  %conv.i130 = zext i8 %60 to i32
  %shr.i131 = lshr i32 %58, %conv.i130
  %61 = trunc i32 %shr.i131 to i8
  %62 = and i8 %61, 1
  %conv5.i132 = or i8 %62, -128
  %prnd.i133 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %prnd.i133, i32 noundef 16) #14
  %tfm_cmac.i134 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %63 = ptrtoint ptr %tfm_cmac.i134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tfm_cmac.i134, align 4
  %local_pk.i135 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  %remote_pk.i136 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i.i126) #14
  %65 = ptrtoint ptr %m.i.i126 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv5.i132, ptr %m.i.i126, align 1
  %add.ptr.i.i137 = getelementptr inbounds i8, ptr %m.i.i126, i32 1
  %66 = call ptr @memcpy(ptr %add.ptr.i.i137, ptr %remote_pk.i136, i32 32)
  %add.ptr4.i.i138 = getelementptr inbounds i8, ptr %m.i.i126, i32 33
  %67 = call ptr @memcpy(ptr %add.ptr4.i.i138, ptr %local_pk.i135, i32 32)
  %call.i.i139 = call fastcc i32 @aes_cmac(ptr noundef %64, ptr noundef %prnd.i133, ptr noundef nonnull %m.i.i126, i32 noundef 65, ptr noundef nonnull %cfm.i127) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i.i126) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %tobool.not.i140 = icmp eq i32 %call.i.i139, 0
  br i1 %tobool.not.i140, label %if.end.i141, label %do.end.sc_passkey_send_confirm.exit143_crit_edge

do.end.sc_passkey_send_confirm.exit143_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_passkey_send_confirm.exit143

if.end.i141:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_send_cmd(ptr noundef %53, i8 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %cfm.i127) #14
  br label %sc_passkey_send_confirm.exit143

sc_passkey_send_confirm.exit143:                  ; preds = %if.end.i141, %do.end.sc_passkey_send_confirm.exit143_crit_edge
  %retval.0.i142 = phi i8 [ 0, %if.end.i141 ], [ 8, %do.end.sc_passkey_send_confirm.exit143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm.i127) #14
  br label %cleanup

cleanup:                                          ; preds = %sc_passkey_send_confirm.exit143, %sw.default.cleanup_crit_edge, %sc_passkey_send_confirm.exit, %if.then63, %if.then57, %if.end52, %if.then50, %if.else, %if.then42, %if.then27.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %retval.0.i142, %sc_passkey_send_confirm.exit143 ], [ 0, %if.then57 ], [ 0, %if.then63 ], [ %retval.0.i125, %sc_passkey_send_confirm.exit ], [ %call51, %if.then50 ], [ 0, %if.end52 ], [ 0, %entry.cleanup_crit_edge ], [ 8, %sw.bb.cleanup_crit_edge ], [ 4, %if.end15.cleanup_crit_edge ], [ 8, %if.then27.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then42 ], [ 0, %sw.default.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm) #14
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc_dhkey_check(ptr nocapture noundef readonly %smp) unnamed_addr #0 align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  %check = alloca %struct.smp_cmd_dhkey_check, align 1
  %a = alloca [7 x i8], align 1
  %b = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %check) #14
  %4 = call ptr @memset(ptr %check, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %a) #14
  %5 = getelementptr inbounds [7 x i8], ptr %a, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %b) #14
  %6 = getelementptr inbounds [7 x i8], ptr %b, i32 0, i32 6
  %init_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %a, ptr %init_addr, i32 6)
  %resp_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %b, ptr %resp_addr, i32 6)
  %init_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %init_addr_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %init_addr_type, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %5, align 1
  %resp_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %resp_addr_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %resp_addr_type, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %6, align 1
  %out = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx7 = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 3, i32 1
  %io_cap.sroa.6.0.arrayidx7.sroa_idx = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 3, i32 2
  %io_cap.sroa.7.0.arrayidx7.sroa_idx = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 3, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx11 = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 4, i32 1
  %io_cap.sroa.6.0.arrayidx11.sroa_idx = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 4, i32 2
  %io_cap.sroa.7.0.arrayidx11.sroa_idx = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 4, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %io_cap.sroa.7.0.in = phi ptr [ %io_cap.sroa.7.0.arrayidx11.sroa_idx, %if.else ], [ %io_cap.sroa.7.0.arrayidx7.sroa_idx, %if.then ]
  %io_cap.sroa.6.0.in = phi ptr [ %io_cap.sroa.6.0.arrayidx11.sroa_idx, %if.else ], [ %io_cap.sroa.6.0.arrayidx7.sroa_idx, %if.then ]
  %io_cap.sroa.0.0.in = phi ptr [ %arrayidx11, %if.else ], [ %arrayidx7, %if.then ]
  %local_addr.0 = phi ptr [ %b, %if.else ], [ %a, %if.then ]
  %remote_addr.0 = phi ptr [ %a, %if.else ], [ %b, %if.then ]
  %17 = ptrtoint ptr %io_cap.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %17)
  %io_cap.sroa.0.0 = load i8, ptr %io_cap.sroa.0.0.in, align 1
  %18 = ptrtoint ptr %io_cap.sroa.6.0.in to i32
  call void @__asan_load1_noabort(i32 %18)
  %io_cap.sroa.6.0 = load i8, ptr %io_cap.sroa.6.0.in, align 1
  %19 = ptrtoint ptr %io_cap.sroa.7.0.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %io_cap.sroa.7.0 = load i8, ptr %io_cap.sroa.7.0.in, align 1
  %method = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 23
  %20 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %method, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %21, label %if.end.if.end20_crit_edge [
    i8 2, label %if.end.if.then18_crit_edge
    i8 5, label %if.end.if.then18_crit_edge78
  ]

if.end.if.then18_crit_edge78:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %if.end.if.then18_crit_edge78
  %passkey_notify = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 29
  %23 = ptrtoint ptr %passkey_notify to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %passkey_notify, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %r.sroa.0.sroa.0.0.extract.shift = and i32 %25, -16777216
  %r.sroa.0.sroa.7.0.extract.shift = and i32 %25, -65536
  %r.sroa.0.sroa.8.0.extract.shift = and i32 %25, -256
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %r.sroa.0.sroa.0.0 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ %r.sroa.0.sroa.0.0.extract.shift, %if.then18 ]
  %r.sroa.0.sroa.7.0 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ %r.sroa.0.sroa.7.0.extract.shift, %if.then18 ]
  %r.sroa.0.sroa.8.0 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ %r.sroa.0.sroa.8.0.extract.shift, %if.then18 ]
  %r.sroa.0.sroa.9.0 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ %25, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp23 = icmp eq i8 %21, 4
  br i1 %cmp23, label %if.then25, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %rr = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9
  %26 = ptrtoint ptr %rr to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %r.sroa.0.0.copyload = load i32, ptr %rr, align 2
  %r.sroa.0.sroa.0.0.extract.shift65 = and i32 %r.sroa.0.0.copyload, -16777216
  %r.sroa.0.sroa.7.0.extract.shift67 = and i32 %r.sroa.0.0.copyload, -65536
  %r.sroa.0.sroa.8.0.extract.shift69 = and i32 %r.sroa.0.0.copyload, -256
  %r.sroa.10.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %r.sroa.10.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %r.sroa.10.0.copyload = load i8, ptr %r.sroa.10.0.rr.sroa_idx, align 2
  %r.sroa.11.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 5
  %28 = ptrtoint ptr %r.sroa.11.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %r.sroa.11.0.copyload = load i8, ptr %r.sroa.11.0.rr.sroa_idx, align 1
  %r.sroa.12.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 6
  %29 = ptrtoint ptr %r.sroa.12.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %r.sroa.12.0.copyload = load i8, ptr %r.sroa.12.0.rr.sroa_idx, align 2
  %r.sroa.13.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 7
  %30 = ptrtoint ptr %r.sroa.13.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %r.sroa.13.0.copyload = load i8, ptr %r.sroa.13.0.rr.sroa_idx, align 1
  %r.sroa.14.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %r.sroa.14.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %r.sroa.14.0.copyload = load i8, ptr %r.sroa.14.0.rr.sroa_idx, align 2
  %r.sroa.15.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 9
  %32 = ptrtoint ptr %r.sroa.15.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %r.sroa.15.0.copyload = load i8, ptr %r.sroa.15.0.rr.sroa_idx, align 1
  %r.sroa.16.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 10
  %33 = ptrtoint ptr %r.sroa.16.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %r.sroa.16.0.copyload = load i8, ptr %r.sroa.16.0.rr.sroa_idx, align 2
  %r.sroa.17.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 11
  %34 = ptrtoint ptr %r.sroa.17.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %r.sroa.17.0.copyload = load i8, ptr %r.sroa.17.0.rr.sroa_idx, align 1
  %r.sroa.18.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 12
  %35 = ptrtoint ptr %r.sroa.18.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %r.sroa.18.0.copyload = load i8, ptr %r.sroa.18.0.rr.sroa_idx, align 2
  %r.sroa.19.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 13
  %36 = ptrtoint ptr %r.sroa.19.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %r.sroa.19.0.copyload = load i8, ptr %r.sroa.19.0.rr.sroa_idx, align 1
  %r.sroa.20.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 14
  %37 = ptrtoint ptr %r.sroa.20.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %r.sroa.20.0.copyload = load i8, ptr %r.sroa.20.0.rr.sroa_idx, align 2
  %r.sroa.21.0.rr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 9, i32 15
  %38 = ptrtoint ptr %r.sroa.21.0.rr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %r.sroa.21.0.copyload = load i8, ptr %r.sroa.21.0.rr.sroa_idx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end20.if.end28_crit_edge
  %r.sroa.0.sroa.0.1 = phi i32 [ %r.sroa.0.sroa.0.0.extract.shift65, %if.then25 ], [ %r.sroa.0.sroa.0.0, %if.end20.if.end28_crit_edge ]
  %r.sroa.0.sroa.7.1 = phi i32 [ %r.sroa.0.sroa.7.0.extract.shift67, %if.then25 ], [ %r.sroa.0.sroa.7.0, %if.end20.if.end28_crit_edge ]
  %r.sroa.0.sroa.8.1 = phi i32 [ %r.sroa.0.sroa.8.0.extract.shift69, %if.then25 ], [ %r.sroa.0.sroa.8.0, %if.end20.if.end28_crit_edge ]
  %r.sroa.0.sroa.9.1 = phi i32 [ %r.sroa.0.0.copyload, %if.then25 ], [ %r.sroa.0.sroa.9.0, %if.end20.if.end28_crit_edge ]
  %r.sroa.10.0 = phi i8 [ %r.sroa.10.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.11.0 = phi i8 [ %r.sroa.11.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.12.0 = phi i8 [ %r.sroa.12.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.13.0 = phi i8 [ %r.sroa.13.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.14.0 = phi i8 [ %r.sroa.14.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.15.0 = phi i8 [ %r.sroa.15.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.16.0 = phi i8 [ %r.sroa.16.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.17.0 = phi i8 [ %r.sroa.17.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.18.0 = phi i8 [ %r.sroa.18.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.19.0 = phi i8 [ %r.sroa.19.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.20.0 = phi i8 [ %r.sroa.20.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %r.sroa.21.0 = phi i8 [ %r.sroa.21.0.copyload, %if.then25 ], [ 0, %if.end20.if.end28_crit_edge ]
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %39 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tfm_cmac, align 4
  %mackey = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 28
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %41 = call ptr @memcpy(ptr %m.i, ptr %remote_addr.0, i32 7)
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 7
  %42 = call ptr @memcpy(ptr %add.ptr.i, ptr %local_addr.0, i32 7)
  %add.ptr5.i = getelementptr inbounds i8, ptr %m.i, i32 14
  %43 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %io_cap.sroa.0.0, ptr %add.ptr5.i, align 1
  %io_cap.sroa.6.0.add.ptr5.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 15
  %44 = ptrtoint ptr %io_cap.sroa.6.0.add.ptr5.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %io_cap.sroa.6.0, ptr %io_cap.sroa.6.0.add.ptr5.i.sroa_idx, align 1
  %io_cap.sroa.7.0.add.ptr5.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 16
  %45 = ptrtoint ptr %io_cap.sroa.7.0.add.ptr5.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %io_cap.sroa.7.0, ptr %io_cap.sroa.7.0.add.ptr5.i.sroa_idx, align 1
  %add.ptr7.i = getelementptr inbounds i8, ptr %m.i, i32 17
  %r.sroa.0.sroa.9.0.insert.ext = and i32 %r.sroa.0.sroa.9.1, 255
  %r.sroa.0.sroa.8.0.insert.ext = and i32 %r.sroa.0.sroa.8.1, 65280
  %r.sroa.0.sroa.7.0.insert.ext = and i32 %r.sroa.0.sroa.7.1, 16711680
  %r.sroa.0.sroa.0.0.insert.ext = and i32 %r.sroa.0.sroa.0.1, -16777216
  %r.sroa.0.sroa.8.0.insert.insert = or i32 %r.sroa.0.sroa.7.0.insert.ext, %r.sroa.0.sroa.0.0.insert.ext
  %r.sroa.0.sroa.7.0.insert.insert = or i32 %r.sroa.0.sroa.8.0.insert.insert, %r.sroa.0.sroa.8.0.insert.ext
  %r.sroa.0.sroa.0.0.insert.insert = or i32 %r.sroa.0.sroa.7.0.insert.insert, %r.sroa.0.sroa.9.0.insert.ext
  %46 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %r.sroa.0.sroa.0.0.insert.insert, ptr %add.ptr7.i, align 1
  %r.sroa.10.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 21
  %47 = ptrtoint ptr %r.sroa.10.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %r.sroa.10.0, ptr %r.sroa.10.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.11.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 22
  %48 = ptrtoint ptr %r.sroa.11.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %r.sroa.11.0, ptr %r.sroa.11.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.12.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 23
  %49 = ptrtoint ptr %r.sroa.12.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %r.sroa.12.0, ptr %r.sroa.12.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.13.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 24
  %50 = ptrtoint ptr %r.sroa.13.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %r.sroa.13.0, ptr %r.sroa.13.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.14.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 25
  %51 = ptrtoint ptr %r.sroa.14.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %r.sroa.14.0, ptr %r.sroa.14.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.15.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 26
  %52 = ptrtoint ptr %r.sroa.15.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %r.sroa.15.0, ptr %r.sroa.15.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.16.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 27
  %53 = ptrtoint ptr %r.sroa.16.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %r.sroa.16.0, ptr %r.sroa.16.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.17.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 28
  %54 = ptrtoint ptr %r.sroa.17.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %r.sroa.17.0, ptr %r.sroa.17.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.18.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 29
  %55 = ptrtoint ptr %r.sroa.18.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %r.sroa.18.0, ptr %r.sroa.18.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.19.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 30
  %56 = ptrtoint ptr %r.sroa.19.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %r.sroa.19.0, ptr %r.sroa.19.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.20.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 31
  %57 = ptrtoint ptr %r.sroa.20.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %r.sroa.20.0, ptr %r.sroa.20.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.21.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 32
  %58 = ptrtoint ptr %r.sroa.21.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %r.sroa.21.0, ptr %r.sroa.21.0.add.ptr7.i.sroa_idx, align 1
  %add.ptr9.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %59 = call ptr @memcpy(ptr %add.ptr9.i, ptr %rrnd, i32 16)
  %add.ptr11.i = getelementptr inbounds i8, ptr %m.i, i32 49
  %60 = call ptr @memcpy(ptr %add.ptr11.i, ptr %prnd, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %40, ptr noundef %mackey, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %check) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  %61 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %smp, align 4
  call fastcc void @smp_send_cmd(ptr noundef %62, i8 noundef zeroext 13, i16 noundef zeroext 16, ptr noundef nonnull %check)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %b) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %a) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %check) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc_mackey_and_ltk(ptr nocapture noundef readonly %smp, ptr nocapture noundef writeonly %mackey, ptr nocapture noundef writeonly %ltk) unnamed_addr #0 align 64 {
entry:
  %salt.i = alloca [16 x i8], align 1
  %m.i = alloca [53 x i8], align 2
  %t.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %out, align 1, !range !276
  %init_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %init_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %a.sroa.0.0.copyload29 = load i8, ptr %init_addr, align 2
  %a.sroa.5.0.init_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %a.sroa.5.0.init_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %a.sroa.5.0.copyload30 = load i8, ptr %a.sroa.5.0.init_addr.sroa_idx, align 1
  %a.sroa.6.0.init_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %a.sroa.6.0.init_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %a.sroa.6.0.copyload31 = load i8, ptr %a.sroa.6.0.init_addr.sroa_idx, align 2
  %a.sroa.7.0.init_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6, i32 0, i32 3
  %9 = ptrtoint ptr %a.sroa.7.0.init_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %a.sroa.7.0.copyload32 = load i8, ptr %a.sroa.7.0.init_addr.sroa_idx, align 1
  %a.sroa.8.0.init_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6, i32 0, i32 4
  %10 = ptrtoint ptr %a.sroa.8.0.init_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %a.sroa.8.0.copyload33 = load i8, ptr %a.sroa.8.0.init_addr.sroa_idx, align 2
  %a.sroa.9.0.init_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6, i32 0, i32 5
  %11 = ptrtoint ptr %a.sroa.9.0.init_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %a.sroa.9.0.copyload34 = load i8, ptr %a.sroa.9.0.init_addr.sroa_idx, align 1
  %resp_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %resp_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %b.sroa.0.0.copyload23 = load i8, ptr %resp_addr, align 1
  %b.sroa.5.0.resp_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8, i32 0, i32 1
  %13 = ptrtoint ptr %b.sroa.5.0.resp_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %b.sroa.5.0.copyload24 = load i8, ptr %b.sroa.5.0.resp_addr.sroa_idx, align 1
  %b.sroa.6.0.resp_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %b.sroa.6.0.resp_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %b.sroa.6.0.copyload25 = load i8, ptr %b.sroa.6.0.resp_addr.sroa_idx, align 1
  %b.sroa.7.0.resp_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8, i32 0, i32 3
  %15 = ptrtoint ptr %b.sroa.7.0.resp_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %b.sroa.7.0.copyload26 = load i8, ptr %b.sroa.7.0.resp_addr.sroa_idx, align 1
  %b.sroa.8.0.resp_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8, i32 0, i32 4
  %16 = ptrtoint ptr %b.sroa.8.0.resp_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %b.sroa.8.0.copyload27 = load i8, ptr %b.sroa.8.0.resp_addr.sroa_idx, align 1
  %b.sroa.9.0.resp_addr.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8, i32 0, i32 5
  %17 = ptrtoint ptr %b.sroa.9.0.resp_addr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %b.sroa.9.0.copyload28 = load i8, ptr %b.sroa.9.0.resp_addr.sroa_idx, align 1
  %init_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %init_addr_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %init_addr_type, align 8
  %resp_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %resp_addr_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %resp_addr_type, align 1
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %22 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm_cmac, align 4
  %dhkey = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %salt.i) #14
  %24 = call ptr @memcpy(ptr %salt.i, ptr @__const.smp_f5.salt, i32 16)
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %m.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #14
  %25 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %23, ptr noundef nonnull %salt.i, ptr noundef %dhkey, i32 noundef 32, ptr noundef nonnull %t.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.smp_f5.exit_crit_edge

entry.smp_f5.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_f5.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 6
  %nb.0 = select i1 %tobool.not, ptr %prnd, ptr %rrnd
  %na.0 = select i1 %tobool.not, ptr %rrnd, ptr %prnd
  %26 = ptrtoint ptr %m.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %m.i, align 2
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 2
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %b.sroa.0.0.copyload23, ptr %add.ptr.i, align 2
  %b.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 3
  %28 = ptrtoint ptr %b.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %b.sroa.5.0.copyload24, ptr %b.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %b.sroa.6.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 4
  %29 = ptrtoint ptr %b.sroa.6.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %b.sroa.6.0.copyload25, ptr %b.sroa.6.0.add.ptr.i.sroa_idx, align 2
  %b.sroa.7.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 5
  %30 = ptrtoint ptr %b.sroa.7.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %b.sroa.7.0.copyload26, ptr %b.sroa.7.0.add.ptr.i.sroa_idx, align 1
  %b.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 6
  %31 = ptrtoint ptr %b.sroa.8.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %b.sroa.8.0.copyload27, ptr %b.sroa.8.0.add.ptr.i.sroa_idx, align 2
  %b.sroa.9.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 7
  %32 = ptrtoint ptr %b.sroa.9.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %b.sroa.9.0.copyload28, ptr %b.sroa.9.0.add.ptr.i.sroa_idx, align 1
  %b.sroa.10.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 8
  %33 = ptrtoint ptr %b.sroa.10.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %21, ptr %b.sroa.10.0.add.ptr.i.sroa_idx, align 2
  %add.ptr9.i = getelementptr inbounds i8, ptr %m.i, i32 9
  %34 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %a.sroa.0.0.copyload29, ptr %add.ptr9.i, align 1
  %a.sroa.5.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 10
  %35 = ptrtoint ptr %a.sroa.5.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %a.sroa.5.0.copyload30, ptr %a.sroa.5.0.add.ptr9.i.sroa_idx, align 2
  %a.sroa.6.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 11
  %36 = ptrtoint ptr %a.sroa.6.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %a.sroa.6.0.copyload31, ptr %a.sroa.6.0.add.ptr9.i.sroa_idx, align 1
  %a.sroa.7.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 12
  %37 = ptrtoint ptr %a.sroa.7.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %a.sroa.7.0.copyload32, ptr %a.sroa.7.0.add.ptr9.i.sroa_idx, align 2
  %a.sroa.8.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 13
  %38 = ptrtoint ptr %a.sroa.8.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %a.sroa.8.0.copyload33, ptr %a.sroa.8.0.add.ptr9.i.sroa_idx, align 1
  %a.sroa.9.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 14
  %39 = ptrtoint ptr %a.sroa.9.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %a.sroa.9.0.copyload34, ptr %a.sroa.9.0.add.ptr9.i.sroa_idx, align 2
  %a.sroa.10.0.add.ptr9.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 15
  %40 = ptrtoint ptr %a.sroa.10.0.add.ptr9.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %19, ptr %a.sroa.10.0.add.ptr9.i.sroa_idx, align 1
  %add.ptr11.i = getelementptr inbounds i8, ptr %m.i, i32 16
  %41 = call ptr @memcpy(ptr %add.ptr11.i, ptr %nb.0, i32 16)
  %add.ptr13.i = getelementptr inbounds i8, ptr %m.i, i32 32
  %42 = call ptr @memcpy(ptr %add.ptr13.i, ptr %na.0, i32 16)
  %add.ptr15.i = getelementptr inbounds i8, ptr %m.i, i32 48
  %43 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 1701606498, ptr %add.ptr15.i, align 2
  %arrayidx.i = getelementptr inbounds [53 x i8], ptr %m.i, i32 0, i32 52
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.i, align 2
  %call19.i = call fastcc i32 @aes_cmac(ptr noundef %23, ptr noundef nonnull %t.i, ptr noundef nonnull %m.i, i32 noundef 53, ptr noundef %mackey) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end.i.smp_f5.exit_crit_edge

if.end.i.smp_f5.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_f5.exit

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx.i, align 2
  %call27.i = call fastcc i32 @aes_cmac(ptr noundef %23, ptr noundef nonnull %t.i, ptr noundef nonnull %m.i, i32 noundef 53, ptr noundef %ltk) #14
  br label %smp_f5.exit

smp_f5.exit:                                      ; preds = %if.end22.i, %if.end.i.smp_f5.exit_crit_edge, %entry.smp_f5.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.smp_f5.exit_crit_edge ], [ %call19.i, %if.end.i.smp_f5.exit_crit_edge ], [ %call27.i, %if.end22.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #14
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %m.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_auth_failed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_chan_destroy(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !283

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #14, !srcloc !284
  unreachable

do.end11:                                         ; preds = %entry
  %security_timer = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %security_timer) #14
  %flags = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13 = icmp ne i32 %8, 0
  tail call void @mgmt_smp_complete(ptr noundef %5, i1 noundef zeroext %tobool13) #14
  %csrk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %csrk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csrk, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #14
  %responder_csrk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %responder_csrk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %responder_csrk, align 4
  tail call void @kfree_sensitive(ptr noundef %12) #14
  %link_key = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %link_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link_key, align 4
  tail call void @kfree_sensitive(ptr noundef %14) #14
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 29
  %15 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tfm_cmac, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %16, ptr noundef %base.i.i) #14
  %tfm_ecdh = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 30
  %17 = ptrtoint ptr %tfm_ecdh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfm_ecdh, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %18, ptr noundef %18) #14
  %ltk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %ltk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ltk, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %do.end11.if.end34_crit_edge, label %land.lhs.true

do.end11.if.end34_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end11
  %type = getelementptr inbounds %struct.smp_ltk, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp = icmp eq i8 %22, 4
  br i1 %cmp, label %land.lhs.true18, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true18:                                  ; preds = %land.lhs.true
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %23 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 206
  %25 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dev_flags, align 4
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not = icmp eq i32 %27, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true18.if.end34_crit_edge

land.lhs.true18.if.end34_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then21:                                        ; preds = %land.lhs.true18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %20) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del_rcu.exit_crit_edge

if.then21.list_del_rcu.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then21.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %35 = ptrtoint ptr %ltk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ltk, align 4
  %tobool25.not = icmp eq ptr %36, null
  br i1 %tobool25.not, label %list_del_rcu.exit.if.end30_crit_edge, label %do.end29

list_del_rcu.exit.if.end30_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.end29:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rcu = getelementptr inbounds %struct.smp_ltk, ptr %36, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %list_del_rcu.exit.if.end30_crit_edge
  %37 = ptrtoint ptr %ltk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ltk, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %land.lhs.true18.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %do.end11.if.end34_crit_edge
  br i1 %tobool13, label %if.end34.if.end89_crit_edge, label %if.then36

if.end34.if.end89_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then36:                                        ; preds = %if.end34
  %38 = ptrtoint ptr %ltk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ltk, align 4
  %tobool38.not = icmp eq ptr %39, null
  br i1 %tobool38.not, label %if.then36.if.end54_crit_edge, label %if.then39

if.then36.if.end54_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then39:                                        ; preds = %if.then36
  %call.i.i131 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %39) #14
  br i1 %call.i.i131, label %if.end.i.i134, label %if.then39.list_del_rcu.exit136_crit_edge

if.then39.list_del_rcu.exit136_crit_edge:         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit136

if.end.i.i134:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i132 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i132, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i133 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i133, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_rcu.exit136

list_del_rcu.exit136:                             ; preds = %if.end.i.i134, %if.then39.list_del_rcu.exit136_crit_edge
  %prev.i135 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i135, align 4
  %47 = ptrtoint ptr %ltk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ltk, align 4
  %tobool45.not = icmp eq ptr %48, null
  br i1 %tobool45.not, label %list_del_rcu.exit136.if.end54_crit_edge, label %do.end49

list_del_rcu.exit136.if.end54_crit_edge:          ; preds = %list_del_rcu.exit136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end49:                                         ; preds = %list_del_rcu.exit136
  call void @__sanitizer_cov_trace_pc() #16
  %rcu50 = getelementptr inbounds %struct.smp_ltk, ptr %48, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu50, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end49, %list_del_rcu.exit136.if.end54_crit_edge, %if.then36.if.end54_crit_edge
  %responder_ltk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 19
  %49 = ptrtoint ptr %responder_ltk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %responder_ltk, align 4
  %tobool55.not = icmp eq ptr %50, null
  br i1 %tobool55.not, label %if.end54.if.end71_crit_edge, label %if.then56

if.end54.if.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then56:                                        ; preds = %if.end54
  %call.i.i137 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %50) #14
  br i1 %call.i.i137, label %if.end.i.i140, label %if.then56.list_del_rcu.exit142_crit_edge

if.then56.list_del_rcu.exit142_crit_edge:         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit142

if.end.i.i140:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i138 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i138, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i139, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_rcu.exit142

list_del_rcu.exit142:                             ; preds = %if.end.i.i140, %if.then56.list_del_rcu.exit142_crit_edge
  %prev.i141 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i141, align 4
  %58 = ptrtoint ptr %responder_ltk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %responder_ltk, align 4
  %tobool62.not = icmp eq ptr %59, null
  br i1 %tobool62.not, label %list_del_rcu.exit142.if.end71_crit_edge, label %do.end66

list_del_rcu.exit142.if.end71_crit_edge:          ; preds = %list_del_rcu.exit142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

do.end66:                                         ; preds = %list_del_rcu.exit142
  call void @__sanitizer_cov_trace_pc() #16
  %rcu67 = getelementptr inbounds %struct.smp_ltk, ptr %59, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu67, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %if.end71

if.end71:                                         ; preds = %do.end66, %list_del_rcu.exit142.if.end71_crit_edge, %if.end54.if.end71_crit_edge
  %remote_irk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 20
  %60 = ptrtoint ptr %remote_irk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %remote_irk, align 4
  %tobool72.not = icmp eq ptr %61, null
  br i1 %tobool72.not, label %if.end71.if.end89_crit_edge, label %if.then73

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then73:                                        ; preds = %if.end71
  %call.i.i143 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %61) #14
  br i1 %call.i.i143, label %if.end.i.i146, label %if.then73.list_del_rcu.exit148_crit_edge

if.then73.list_del_rcu.exit148_crit_edge:         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit148

if.end.i.i146:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i144 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i144, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %prev1.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i145, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_rcu.exit148

list_del_rcu.exit148:                             ; preds = %if.end.i.i146, %if.then73.list_del_rcu.exit148_crit_edge
  %prev.i147 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i147, align 4
  %69 = ptrtoint ptr %remote_irk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %remote_irk, align 4
  %tobool79.not = icmp eq ptr %70, null
  br i1 %tobool79.not, label %list_del_rcu.exit148.if.end89_crit_edge, label %do.end83

list_del_rcu.exit148.if.end89_crit_edge:          ; preds = %list_del_rcu.exit148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.end83:                                         ; preds = %list_del_rcu.exit148
  call void @__sanitizer_cov_trace_pc() #16
  %rcu84 = getelementptr inbounds %struct.smp_irk, ptr %70, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu84, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %list_del_rcu.exit148.if.end89_crit_edge, %if.end71.if.end89_crit_edge, %if.end34.if.end89_crit_edge
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %data, align 4
  tail call void @kfree_sensitive(ptr noundef nonnull %3) #14
  tail call fastcc void @hci_conn_drop(ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_smp_complete(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_conn_drop(ptr noundef %conn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_drop, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #14
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_drop.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.27, ptr noundef %conn, i32 noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %refcnt4 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %refcnt4, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4, ptr %refcnt4, i32 1, ptr elementtype(i32) %refcnt4) #14, !srcloc !286
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then6:                                         ; preds = %do.end
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %4, label %if.then6.sw.epilog_crit_edge [
    i8 1, label %if.then6.sw.bb_crit_edge
    i8 -128, label %if.then6.sw.bb_crit_edge37
    i8 -127, label %sw.bb16
  ]

if.then6.sw.bb_crit_edge37:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge37
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 60
  %call7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %idle_work) #14
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %if.then10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %disc_timeout = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %8 = ptrtoint ptr %disc_timeout to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %disc_timeout, align 2
  %conv11 = zext i16 %9 to i32
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out, align 1, !range !276
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %spec.select = shl nuw nsw i32 %conv11, %13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %disc_timeout17 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %14 = ptrtoint ptr %disc_timeout17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %disc_timeout17, align 2
  %conv18 = zext i16 %15 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.then10, %sw.bb.sw.epilog_crit_edge, %if.then6.sw.epilog_crit_edge
  %timeo.0 = phi i32 [ %conv18, %sw.bb16 ], [ %spec.select, %if.then10 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %disc_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 58
  %call19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work) #14
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 4
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 138
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %disc_work, i32 noundef %timeo.0) #14
  br label %if.end22

if.end22:                                         ; preds = %sw.epilog, %do.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_c1(ptr nocapture noundef readonly %k, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %preq, ptr nocapture noundef readonly %pres, i8 noundef zeroext %_iat, ptr nocapture noundef readonly %ia, i8 noundef zeroext %_rat, ptr nocapture noundef readonly %ra, ptr nocapture noundef %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %preq to i32
  call void @__asan_load1_noabort(i32 %0)
  %p1.sroa.0.sroa.8.2.copyload = load i8, ptr %preq, align 1
  %p1.sroa.0.sroa.10.2.preq.sroa_idx = getelementptr inbounds i8, ptr %preq, i32 1
  %1 = ptrtoint ptr %p1.sroa.0.sroa.10.2.preq.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %p1.sroa.0.sroa.10.2.copyload = load i8, ptr %p1.sroa.0.sroa.10.2.preq.sroa_idx, align 1
  %p1.sroa.11.2.preq.sroa_idx = getelementptr inbounds i8, ptr %preq, i32 2
  %2 = ptrtoint ptr %p1.sroa.11.2.preq.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %p1.sroa.11.2.copyload = load i32, ptr %p1.sroa.11.2.preq.sroa_idx, align 1
  %p1.sroa.16.2.preq.sroa_idx = getelementptr inbounds i8, ptr %preq, i32 6
  %3 = ptrtoint ptr %p1.sroa.16.2.preq.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %p1.sroa.16.sroa.0.0.copyload = load i8, ptr %p1.sroa.16.2.preq.sroa_idx, align 1
  %4 = ptrtoint ptr %pres to i32
  call void @__asan_load1_noabort(i32 %4)
  %p1.sroa.16.sroa.6.1.copyload = load i8, ptr %pres, align 1
  %p1.sroa.16.sroa.8.1.pres.sroa_idx = getelementptr inbounds i8, ptr %pres, i32 1
  %5 = ptrtoint ptr %p1.sroa.16.sroa.8.1.pres.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %p1.sroa.16.sroa.8.1.copyload = load i8, ptr %p1.sroa.16.sroa.8.1.pres.sroa_idx, align 1
  %p1.sroa.16.sroa.9.1.pres.sroa_idx = getelementptr inbounds i8, ptr %pres, i32 2
  %6 = ptrtoint ptr %p1.sroa.16.sroa.9.1.pres.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %p1.sroa.16.sroa.9.1.copyload = load i8, ptr %p1.sroa.16.sroa.9.1.pres.sroa_idx, align 1
  %p1.sroa.22.9.pres.sroa_idx = getelementptr inbounds i8, ptr %pres, i32 3
  %7 = ptrtoint ptr %p1.sroa.22.9.pres.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %p1.sroa.22.9.copyload = load i32, ptr %p1.sroa.22.9.pres.sroa_idx, align 1
  %incdec.ptr.i = getelementptr i32, ptr %r, i32 1
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r, align 4
  %p1.sroa.0.sroa.10.0.insert.ext = zext i8 %p1.sroa.0.sroa.10.2.copyload to i32
  %p1.sroa.0.sroa.8.0.insert.ext = zext i8 %p1.sroa.0.sroa.8.2.copyload to i32
  %p1.sroa.0.sroa.8.0.insert.shift = shl nuw nsw i32 %p1.sroa.0.sroa.8.0.insert.ext, 8
  %p1.sroa.0.sroa.8.0.insert.insert = or i32 %p1.sroa.0.sroa.8.0.insert.shift, %p1.sroa.0.sroa.10.0.insert.ext
  %p1.sroa.0.sroa.6.0.insert.ext = zext i8 %_rat to i32
  %p1.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %p1.sroa.0.sroa.6.0.insert.ext, 16
  %p1.sroa.0.sroa.6.0.insert.insert = or i32 %p1.sroa.0.sroa.8.0.insert.insert, %p1.sroa.0.sroa.6.0.insert.shift
  %p1.sroa.0.sroa.0.0.insert.ext = zext i8 %_iat to i32
  %p1.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %p1.sroa.0.sroa.0.0.insert.ext, 24
  %p1.sroa.0.sroa.0.0.insert.insert = or i32 %p1.sroa.0.sroa.6.0.insert.insert, %p1.sroa.0.sroa.0.0.insert.shift
  %xor.i = xor i32 %9, %p1.sroa.0.sroa.0.0.insert.insert
  %incdec.ptr3.i = getelementptr i32, ptr %res, i32 1
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor.i, ptr %res, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %r, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  %xor.1.i = xor i32 %12, %p1.sroa.11.2.copyload
  %incdec.ptr3.1.i = getelementptr i32, ptr %res, i32 2
  %13 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %xor.1.i, ptr %incdec.ptr3.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %r, i32 3
  %14 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.1.i, align 4
  %p1.sroa.16.sroa.9.0.insert.ext = zext i8 %p1.sroa.16.sroa.9.1.copyload to i32
  %p1.sroa.16.sroa.8.0.insert.ext = zext i8 %p1.sroa.16.sroa.8.1.copyload to i32
  %p1.sroa.16.sroa.8.0.insert.shift = shl nuw nsw i32 %p1.sroa.16.sroa.8.0.insert.ext, 8
  %p1.sroa.16.sroa.6.0.insert.ext = zext i8 %p1.sroa.16.sroa.6.1.copyload to i32
  %p1.sroa.16.sroa.6.0.insert.shift = shl nuw nsw i32 %p1.sroa.16.sroa.6.0.insert.ext, 16
  %p1.sroa.16.sroa.0.0.insert.ext = zext i8 %p1.sroa.16.sroa.0.0.copyload to i32
  %p1.sroa.16.sroa.0.0.insert.shift = shl nuw i32 %p1.sroa.16.sroa.0.0.insert.ext, 24
  %p1.sroa.16.sroa.8.0.insert.insert = or i32 %p1.sroa.16.sroa.6.0.insert.shift, %p1.sroa.16.sroa.0.0.insert.shift
  %p1.sroa.16.sroa.6.0.insert.insert = or i32 %p1.sroa.16.sroa.8.0.insert.insert, %p1.sroa.16.sroa.9.0.insert.ext
  %p1.sroa.16.sroa.0.0.insert.insert = or i32 %p1.sroa.16.sroa.6.0.insert.insert, %p1.sroa.16.sroa.8.0.insert.shift
  %xor.2.i = xor i32 %15, %p1.sroa.16.sroa.0.0.insert.insert
  %incdec.ptr3.2.i = getelementptr i32, ptr %res, i32 3
  %16 = ptrtoint ptr %incdec.ptr3.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %xor.2.i, ptr %incdec.ptr3.1.i, align 4
  %17 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.2.i, align 4
  %xor.3.i = xor i32 %18, %p1.sroa.22.9.copyload
  %19 = ptrtoint ptr %incdec.ptr3.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %xor.3.i, ptr %incdec.ptr3.2.i, align 4
  %call = tail call fastcc i32 @smp_e(ptr noundef %k, ptr noundef %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %ra to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %p2.sroa.0.0.copyload = load i32, ptr %ra, align 1
  %p2.sroa.8.0.ra.sroa_idx = getelementptr inbounds i8, ptr %ra, i32 4
  %21 = ptrtoint ptr %p2.sroa.8.0.ra.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %p2.sroa.8.sroa.0.0.copyload = load i8, ptr %p2.sroa.8.0.ra.sroa_idx, align 1
  %p2.sroa.8.sroa.5.0.p2.sroa.8.0.ra.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %ra, i32 5
  %22 = ptrtoint ptr %p2.sroa.8.sroa.5.0.p2.sroa.8.0.ra.sroa_idx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %p2.sroa.8.sroa.5.0.copyload = load i8, ptr %p2.sroa.8.sroa.5.0.p2.sroa.8.0.ra.sroa_idx.sroa_idx, align 1
  %23 = ptrtoint ptr %ia to i32
  call void @__asan_load1_noabort(i32 %23)
  %p2.sroa.8.sroa.6.2.copyload = load i8, ptr %ia, align 1
  %p2.sroa.8.sroa.8.2.ia.sroa_idx = getelementptr inbounds i8, ptr %ia, i32 1
  %24 = ptrtoint ptr %p2.sroa.8.sroa.8.2.ia.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %p2.sroa.8.sroa.8.2.copyload = load i8, ptr %p2.sroa.8.sroa.8.2.ia.sroa_idx, align 1
  %p2.sroa.14.6.ia.sroa_idx = getelementptr inbounds i8, ptr %ia, i32 2
  %25 = ptrtoint ptr %p2.sroa.14.6.ia.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %p2.sroa.14.6.copyload = load i32, ptr %p2.sroa.14.6.ia.sroa_idx, align 1
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  %xor.i31 = xor i32 %27, %p2.sroa.0.0.copyload
  store i32 %xor.i31, ptr %res, align 4
  %p2.sroa.8.sroa.8.0.insert.ext = zext i8 %p2.sroa.8.sroa.8.2.copyload to i32
  %p2.sroa.8.sroa.6.0.insert.ext = zext i8 %p2.sroa.8.sroa.6.2.copyload to i32
  %p2.sroa.8.sroa.6.0.insert.shift = shl nuw nsw i32 %p2.sroa.8.sroa.6.0.insert.ext, 8
  %p2.sroa.8.sroa.5.0.insert.ext = zext i8 %p2.sroa.8.sroa.5.0.copyload to i32
  %p2.sroa.8.sroa.5.0.insert.shift = shl nuw nsw i32 %p2.sroa.8.sroa.5.0.insert.ext, 16
  %p2.sroa.8.sroa.0.0.insert.ext = zext i8 %p2.sroa.8.sroa.0.0.copyload to i32
  %p2.sroa.8.sroa.0.0.insert.shift = shl nuw i32 %p2.sroa.8.sroa.0.0.insert.ext, 24
  %p2.sroa.8.sroa.6.0.insert.insert = or i32 %p2.sroa.8.sroa.5.0.insert.shift, %p2.sroa.8.sroa.0.0.insert.shift
  %p2.sroa.8.sroa.5.0.insert.insert = or i32 %p2.sroa.8.sroa.6.0.insert.insert, %p2.sroa.8.sroa.8.0.insert.ext
  %p2.sroa.8.sroa.0.0.insert.insert = or i32 %p2.sroa.8.sroa.5.0.insert.insert, %p2.sroa.8.sroa.6.0.insert.shift
  %28 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr3.i, align 4
  %xor.1.i34 = xor i32 %29, %p2.sroa.8.sroa.0.0.insert.insert
  store i32 %xor.1.i34, ptr %incdec.ptr3.i, align 4
  %30 = ptrtoint ptr %incdec.ptr3.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr3.1.i, align 4
  %xor.2.i37 = xor i32 %31, %p2.sroa.14.6.copyload
  store i32 %xor.2.i37, ptr %incdec.ptr3.1.i, align 4
  %call16 = tail call fastcc i32 @smp_e(ptr noundef %k, ptr noundef %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call16, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_le_start_enc(ptr noundef, i16 noundef zeroext, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_timeout(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_timeout.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_timeout, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_timeout.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @hci_disconnect(ptr noundef %7, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_remote_oob_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_scid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smp_new_conn_cb(ptr noundef %pchan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_new_conn_cb.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_new_conn_cb, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_new_conn_cb.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.46, ptr noundef %pchan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @l2cap_chan_create() #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 18
  %0 = ptrtoint ptr %chan_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chan_type, align 1
  %chan_type7 = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 18
  %2 = ptrtoint ptr %chan_type7 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %chan_type7, align 1
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 85
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smp_chan_ops, ptr %ops, align 4
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 13
  %4 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %scid, align 2
  %scid8 = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 13
  %6 = ptrtoint ptr %scid8 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %scid8, align 2
  %dcid = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 12
  %7 = ptrtoint ptr %dcid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %5, ptr %dcid, align 4
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 14
  %8 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %imtu, align 4
  %imtu10 = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 14
  %10 = ptrtoint ptr %imtu10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %imtu10, align 4
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 15
  %11 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %omtu, align 2
  %omtu11 = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 15
  %13 = ptrtoint ptr %omtu11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %omtu11, align 2
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 17
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 2
  %mode12 = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 17
  %16 = ptrtoint ptr %mode12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %mode12, align 2
  %nesting = getelementptr inbounds %struct.l2cap_chan, ptr %call3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nesting, i32 noundef 4) #14
  %17 = ptrtoint ptr %nesting to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %nesting, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_new_conn_cb.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_new_conn_cb, %if.then25)) #14
          to label %cleanup [label %if.then25], !srcloc !275

if.then25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_new_conn_cb.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.47, ptr noundef nonnull %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end6, %do.end.cleanup_crit_edge
  ret ptr %call3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_chan_no_recv(ptr nocapture noundef readnone %chan, ptr nocapture noundef readnone %skb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 -38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_teardown(ptr nocapture noundef %chan, i32 noundef %err) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_close(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_state_change(ptr nocapture noundef %chan, i32 noundef %state, i32 noundef %err) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_ready(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_defer(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_resume(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_suspend(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_set_shutdown(ptr nocapture noundef %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_chan_no_get_sndtimeo(ptr nocapture noundef readnone %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @l2cap_chan_no_alloc_skb(ptr nocapture noundef readnone %chan, i32 noundef %hdr_len, i32 noundef %len, i32 noundef %nb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret ptr inttoptr (i32 -38 to ptr)
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @l2cap_chan_no_new_connection(ptr nocapture noundef readnone %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp_recv_cb(ptr noundef %chan, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_recv_cb.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_recv_cb, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_recv_cb.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @smp_sig_channel(ptr noundef %chan, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then5:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then7

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %security_timer = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 1
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %security_timer) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5.if.end9_crit_edge
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call12 = tail call i32 @hci_disconnect(ptr noundef %11, i8 noundef zeroext 5) #14
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %do.end.if.end13_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_teardown_cb(ptr noundef %chan, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_teardown_cb.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_teardown_cb, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_teardown_cb.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_chan_destroy(ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %smp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %smp, align 4
  tail call void @l2cap_chan_put(ptr noundef %chan) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_ready_cb(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_ready_cb.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_ready_cb, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_ready_cb.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %smp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chan, ptr %smp, align 4
  %type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %if.then8

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @bredr_pairing(ptr noundef %chan)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_resume_cb(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_resume_cb.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_resume_cb, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_resume_cb.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @bredr_pairing(ptr noundef %chan)
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 47
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %security_timer = getelementptr inbounds %struct.smp_chan, ptr %1, i32 0, i32 1
  %call15 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %security_timer) #14
  tail call fastcc void @smp_distribute_keys(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smp_alloc_skb_cb(ptr noundef %chan, i32 noundef %hdr_len, i32 noundef %len, i32 noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hdr_len, 8
  %add.i = add i32 %add, %len
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %priority, align 4
  %chan2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %5 = ptrtoint ptr %chan2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan, ptr %chan2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_sig_channel(ptr nocapture noundef readonly %chan, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %reason.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %8 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dev_flags, align 4
  %10 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end.i_crit_edge, label %if.end4

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #14
  %data6 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %15 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data6, align 4
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %14)
  %cmp7 = icmp ugt i8 %14, 14
  br i1 %cmp7, label %if.end4.drop_crit_edge, label %if.end10

if.end4.drop_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end10:                                         ; preds = %if.end4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true18.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %16, i32 0, i32 2
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef %allow_cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.drop_crit_edge, label %if.end27

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

land.lhs.true18.critedge:                         ; preds = %if.end10
  %17 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %14, label %land.lhs.true18.critedge.drop_crit_edge [
    i8 1, label %land.lhs.true18.critedge.sw.bb_crit_edge
    i8 11, label %land.lhs.true18.critedge.sw.bb33_crit_edge
  ]

land.lhs.true18.critedge.sw.bb33_crit_edge:       ; preds = %land.lhs.true18.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

land.lhs.true18.critedge.sw.bb_crit_edge:         ; preds = %land.lhs.true18.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

land.lhs.true18.critedge.drop_crit_edge:          ; preds = %land.lhs.true18.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end27:                                         ; preds = %land.lhs.true
  %18 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %14, label %do.body [
    i8 1, label %if.end27.sw.bb_crit_edge
    i8 5, label %done.thread139
    i8 2, label %sw.bb31
    i8 11, label %if.end27.sw.bb33_crit_edge
    i8 3, label %sw.bb35
    i8 4, label %sw.bb37
    i8 6, label %sw.bb39
    i8 7, label %sw.bb42
    i8 8, label %sw.bb45
    i8 9, label %sw.bb48
    i8 10, label %sw.bb51
    i8 12, label %sw.bb54
    i8 13, label %sw.bb57
    i8 14, label %if.then73.thread149
  ]

if.end27.sw.bb33_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %land.lhs.true18.critedge.sw.bb_crit_edge
  %call29 = tail call fastcc zeroext i8 @smp_cmd_pairing_req(ptr noundef %1, ptr noundef %skb)
  br label %if.then73

done.thread139:                                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_failure(ptr noundef %1, i8 noundef zeroext 0)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = tail call fastcc zeroext i8 @smp_cmd_pairing_rsp(ptr noundef %1, ptr noundef %skb)
  br label %if.then73

sw.bb33:                                          ; preds = %if.end27.sw.bb33_crit_edge, %land.lhs.true18.critedge.sw.bb33_crit_edge
  %call34 = tail call fastcc zeroext i8 @smp_cmd_security_req(ptr noundef %1, ptr noundef %skb)
  br label %if.then73

sw.bb35:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call fastcc zeroext i8 @smp_cmd_pairing_confirm(ptr noundef %1, ptr noundef %skb)
  br label %if.then73

sw.bb37:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call fastcc zeroext i8 @smp_cmd_pairing_random(ptr noundef %1, ptr noundef %skb)
  br label %if.then73

sw.bb39:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call fastcc i32 @smp_cmd_encrypt_info(ptr noundef %1, ptr noundef %skb)
  %conv41 = trunc i32 %call40 to i8
  br label %if.then73

sw.bb42:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = tail call fastcc i32 @smp_cmd_initiator_ident(ptr noundef %1, ptr noundef %skb)
  %conv44 = trunc i32 %call43 to i8
  br label %if.then73

sw.bb45:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call fastcc i32 @smp_cmd_ident_info(ptr noundef %1, ptr noundef %skb)
  %conv47 = trunc i32 %call46 to i8
  br label %if.then73

sw.bb48:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call49 = tail call fastcc i32 @smp_cmd_ident_addr_info(ptr noundef %1, ptr noundef %skb)
  %conv50 = trunc i32 %call49 to i8
  br label %if.then73

sw.bb51:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call52 = tail call fastcc i32 @smp_cmd_sign_info(ptr noundef %1, ptr noundef %skb)
  %conv53 = trunc i32 %call52 to i8
  br label %if.then73

sw.bb54:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = tail call fastcc i32 @smp_cmd_public_key(ptr noundef %1, ptr noundef %skb)
  %conv56 = trunc i32 %call55 to i8
  br label %if.then73

sw.bb57:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call58 = tail call fastcc i32 @smp_cmd_dhkey_check(ptr noundef %1, ptr noundef %skb)
  %conv59 = trunc i32 %call58 to i8
  br label %if.then73

if.then73.thread149:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_cmd_keypress_notify(ptr noundef %1, ptr noundef %skb)
  br label %if.end76

do.body:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_sig_channel.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_sig_channel, %if.then67)) #14
          to label %if.then73 [label %if.then67], !srcloc !275

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_sig_channel.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %conv) #14
  br label %if.end.i

if.then73:                                        ; preds = %do.body, %sw.bb57, %sw.bb54, %sw.bb51, %sw.bb48, %sw.bb45, %sw.bb42, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb
  %reason.0137 = phi i8 [ 7, %do.body ], [ %call29, %sw.bb ], [ %call32, %sw.bb31 ], [ %call34, %sw.bb33 ], [ %call36, %sw.bb35 ], [ %call38, %sw.bb37 ], [ %conv41, %sw.bb39 ], [ %conv44, %sw.bb42 ], [ %conv47, %sw.bb45 ], [ %conv50, %sw.bb48 ], [ %conv53, %sw.bb51 ], [ %conv56, %sw.bb54 ], [ %conv59, %sw.bb57 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reason.0137)
  %tobool74.not = icmp eq i8 %reason.0137, 0
  br i1 %tobool74.not, label %if.then73.if.end76_crit_edge, label %if.then73.if.end.i_crit_edge

if.then73.if.end.i_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then73.if.end76_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.end.i:                                         ; preds = %if.then73.if.end.i_crit_edge, %if.then67, %if.end.if.end.i_crit_edge
  %reason.0137148 = phi i8 [ %reason.0137, %if.then73.if.end.i_crit_edge ], [ 5, %if.end.if.end.i_crit_edge ], [ 7, %if.then67 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reason.addr.i)
  %21 = ptrtoint ptr %reason.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %reason.0137148, ptr %reason.addr.i, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %smp.i = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %smp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smp.i, align 4
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %reason.addr.i) #14
  call void @mgmt_auth_failed(ptr noundef %23, i8 noundef zeroext 5) #14
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %25, i32 0, i32 84
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %if.end.i.smp_failure.exit_crit_edge, label %if.then3.i

if.end.i.smp_failure.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_failure.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_chan_destroy(ptr noundef %1) #14
  br label %smp_failure.exit

smp_failure.exit:                                 ; preds = %if.then3.i, %if.end.i.smp_failure.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reason.addr.i)
  br label %if.end76

if.end76:                                         ; preds = %smp_failure.exit, %if.then73.if.end76_crit_edge, %if.then73.thread149
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

drop:                                             ; preds = %land.lhs.true18.critedge.drop_crit_edge, %land.lhs.true.drop_crit_edge, %if.end4.drop_crit_edge
  %28 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev, align 4
  %name79 = getelementptr inbounds %struct.hci_dev, ptr %29, i32 0, i32 2
  %dst = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.53, ptr noundef %name79, i32 noundef %conv, ptr noundef %dst) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end76, %done.thread139, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drop ], [ -84, %entry.cleanup_crit_edge ], [ 0, %if.end76 ], [ -1, %done.thread139 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_cmd_pairing_req(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rsp = alloca %struct.smp_cmd_pairing, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rsp) #14
  %0 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = call ptr @memset(ptr %rsp, i32 255, i32 6)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %5 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smp, align 4
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 65
  %9 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_pairing_req.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_pairing_req, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_pairing_req.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp = icmp ult i32 %12, 6
  br i1 %cmp, label %do.end.cleanup192_crit_edge, label %if.end6

do.end.cleanup192_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end6:                                          ; preds = %do.end
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 4
  %role = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp8.not = icmp eq i8 %16, 1
  br i1 %cmp8.not, label %if.end11, label %if.end6.cleanup192_crit_edge

if.end6.cleanup192_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end11:                                         ; preds = %if.end6
  %data12 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 84
  %17 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data12, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end17, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end17:                                         ; preds = %if.end11
  %call15 = tail call fastcc ptr @smp_chan_create(ptr noundef %conn)
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.end17.cleanup192_crit_edge, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end17.cleanup192_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %smp2.0307 = phi ptr [ %call15, %if.end17.if.end20_crit_edge ], [ %18, %if.end11.if.end20_crit_edge ]
  %auth_req = getelementptr inbounds %struct.smp_cmd_pairing, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %auth_req to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %auth_req, align 1
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 206
  %21 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dev_flags, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool24.not, i8 7, i8 63
  %and = and i8 %cond, %20
  %24 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dev_flags, align 4
  %26 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp ne i32 %26, 0
  %27 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool32.not = icmp eq i8 %27, 0
  %or.cond = select i1 %tobool29.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %if.end34, label %if.end20.cleanup192_crit_edge

if.end20.cleanup192_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end34:                                         ; preds = %if.end20
  %28 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dev_flags, align 4
  %30 = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool38.not = icmp ne i32 %30, 0
  %31 = and i8 %and, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  %or.cond268 = select i1 %tobool38.not, i1 %tobool42.not, i1 false
  br i1 %or.cond268, label %if.end34.cleanup192_crit_edge, label %if.end44

if.end34.cleanup192_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end44:                                         ; preds = %if.end34
  %preq = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 3
  %32 = ptrtoint ptr %preq to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %preq, align 4
  %arrayidx46 = getelementptr %struct.smp_chan, ptr %smp2.0307, i32 0, i32 3, i32 1
  %33 = call ptr @memcpy(ptr %arrayidx46, ptr %4, i32 6)
  %call47 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #14
  %oob_flag = getelementptr inbounds %struct.smp_cmd_pairing, ptr %4, i32 0, i32 1
  %34 = ptrtoint ptr %oob_flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %oob_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp49 = icmp eq i8 %35, 1
  br i1 %cmp49, label %land.lhs.true51, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true51:                                  ; preds = %if.end44
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 168
  %36 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smp_data, align 4
  %data52 = getelementptr inbounds %struct.l2cap_chan, ptr %37, i32 0, i32 84
  %38 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data52, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool53.not = icmp eq i8 %41, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.end56_crit_edge, label %if.then55

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true51.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %42 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn, align 4
  %type = getelementptr inbounds %struct.hci_conn, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp59 = icmp eq i8 %45, 1
  br i1 %cmp59, label %if.then61, label %if.end101

if.then61:                                        ; preds = %if.end56
  %flags63 = getelementptr inbounds %struct.hci_conn, ptr %43, i32 0, i32 47
  %46 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags63, align 4
  %48 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool65.not = icmp eq i32 %48, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.then61.if.end72_crit_edge

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

land.lhs.true66:                                  ; preds = %if.then61
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %10, i32 0, i32 206, i32 1
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i, align 4
  %51 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool70.not = icmp eq i32 %51, 0
  br i1 %tobool70.not, label %land.lhs.true66.cleanup192_crit_edge, label %land.lhs.true66.if.end72_crit_edge

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

land.lhs.true66.cleanup192_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end72:                                         ; preds = %land.lhs.true66.if.end72_crit_edge, %if.then61.if.end72_crit_edge
  %flags73 = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags73) #14
  call fastcc void @build_bredr_pairing_cmd(ptr noundef nonnull %smp2.0307, ptr noundef %4, ptr noundef nonnull %rsp)
  %52 = ptrtoint ptr %auth_req to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %auth_req, align 1
  %54 = and i8 %53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool77.not = icmp eq i8 %54, 0
  br i1 %tobool77.not, label %if.end72.if.end80_crit_edge, label %if.then78

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 12, ptr noundef %flags73) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end72.if.end80_crit_edge
  %max_key_size = getelementptr inbounds %struct.smp_cmd_pairing, ptr %4, i32 0, i32 3
  %55 = ptrtoint ptr %max_key_size to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_key_size, align 1
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %1, align 1
  %59 = call i8 @llvm.umin.i8(i8 %56, i8 %58)
  %60 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smp, align 4
  %62 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conn, align 4
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %61, i32 0, i32 84
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %pending_sec_level.i = getelementptr inbounds %struct.hci_conn, ptr %63, i32 0, i32 25
  %66 = ptrtoint ptr %pending_sec_level.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pending_sec_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp.i = icmp ne i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp6.not.i = icmp eq i8 %59, 16
  %or.cond.i = or i1 %cmp6.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %if.end80.cleanup192_crit_edge

if.end80.cleanup192_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end.i:                                         ; preds = %if.end80
  %hdev1.i = getelementptr inbounds %struct.hci_conn, ptr %63, i32 0, i32 65
  %68 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hdev1.i, align 4
  %le_max_key_size.i = getelementptr inbounds %struct.hci_dev, ptr %69, i32 0, i32 67
  %70 = ptrtoint ptr %le_max_key_size.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %le_max_key_size.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %59)
  %cmp10.i = icmp ult i8 %71, %59
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %cmp13.i = icmp ult i8 %59, 7
  %or.cond24.i = or i1 %cmp13.i, %cmp10.i
  br i1 %or.cond24.i, label %if.end.i.cleanup192_crit_edge, label %if.end94

if.end.i.cleanup192_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end94:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %enc_key_size.i = getelementptr inbounds %struct.smp_chan, ptr %65, i32 0, i32 11
  %72 = ptrtoint ptr %enc_key_size.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %59, ptr %enc_key_size.i, align 2
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 12
  %73 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %remote_key_dist, align 1
  %75 = and i8 %74, -10
  store i8 %75, ptr %remote_key_dist, align 1
  %prsp = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 4
  %76 = ptrtoint ptr %prsp to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %prsp, align 1
  %arrayidx100 = getelementptr %struct.smp_chan, ptr %smp2.0307, i32 0, i32 4, i32 1
  %77 = call ptr @memcpy(ptr %arrayidx100, ptr %rsp, i32 6)
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 2, i16 noundef zeroext 6, ptr noundef nonnull %rsp)
  call fastcc void @smp_distribute_keys(ptr noundef nonnull %smp2.0307)
  br label %cleanup192

if.end101:                                        ; preds = %if.end56
  call fastcc void @build_pairing_cmd(ptr noundef %conn, ptr noundef %4, ptr noundef nonnull %rsp, i8 noundef zeroext %and)
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %0, align 1
  %80 = and i8 %79, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool105.not = icmp eq i8 %80, 0
  br i1 %tobool105.not, label %if.end101.if.end115_crit_edge, label %if.then106

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then106:                                       ; preds = %if.end101
  %flags107 = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 22
  call void @_set_bit(i32 noundef 5, ptr noundef %flags107) #14
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %0, align 1
  %83 = and i8 %82, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool111.not = icmp eq i8 %83, 0
  br i1 %tobool111.not, label %if.then106.if.end115_crit_edge, label %if.then112

if.then106.if.end115_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 12, ptr noundef %flags107) #14
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then106.if.end115_crit_edge, %if.end101.if.end115_crit_edge
  %84 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %conn, align 4
  %io_capability = getelementptr inbounds %struct.hci_conn, ptr %85, i32 0, i32 28
  %86 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %io_capability, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp118 = icmp eq i8 %87, 3
  br i1 %cmp118, label %if.end115.if.end123_crit_edge, label %if.else121

if.end115.if.end123_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.else121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i8 %and to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 3, i8 4
  %retval.0.i282 = select i1 %tobool.not.i, i8 2, i8 %..i
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.end115.if.end123_crit_edge
  %sec_level.0 = phi i8 [ %retval.0.i282, %if.else121 ], [ 2, %if.end115.if.end123_crit_edge ]
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %85, i32 0, i32 25
  %88 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sec_level.0, i8 %89)
  %cmp127 = icmp ugt i8 %sec_level.0, %89
  br i1 %cmp127, label %if.then129, label %if.end123.if.end132_crit_edge

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132

if.then129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %sec_level.0, ptr %pending_sec_level, align 1
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end123.if.end132_crit_edge
  %91 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %conn, align 4
  %pending_sec_level134 = getelementptr inbounds %struct.hci_conn, ptr %92, i32 0, i32 25
  %93 = ptrtoint ptr %pending_sec_level134 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pending_sec_level134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp136 = icmp ugt i8 %94, 2
  br i1 %cmp136, label %if.then138, label %if.end132.if.end151_crit_edge

if.end132.if.end151_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

if.then138:                                       ; preds = %if.end132
  %io_capability140 = getelementptr inbounds %struct.hci_conn, ptr %92, i32 0, i32 28
  %95 = ptrtoint ptr %io_capability140 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %io_capability140, align 8
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %96)
  %cmp.i284 = icmp ugt i8 %96, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp3.i = icmp ugt i8 %98, 4
  %or.cond314 = select i1 %cmp.i284, i1 true, i1 %cmp3.i
  br i1 %or.cond314, label %if.then138.cleanup192_crit_edge, label %get_auth_method.exit

if.then138.cleanup192_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

get_auth_method.exit:                             ; preds = %if.then138
  %conv.i283 = zext i8 %96 to i32
  %conv2.i = zext i8 %98 to i32
  %flags.i = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 22
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags.i, align 4
  %101 = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i285 = icmp eq i32 %101, 0
  %gen_method.sc_method.i = select i1 %tobool.not.i285, ptr @gen_method, ptr @sc_method
  %arrayidx12.i = getelementptr [5 x [5 x i8]], ptr %gen_method.sc_method.i, i32 0, i32 %conv2.i, i32 %conv.i283
  %102 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %switch = icmp ult i8 %103, 2
  br i1 %switch, label %get_auth_method.exit.cleanup192_crit_edge, label %get_auth_method.exit.if.end151_crit_edge

get_auth_method.exit.if.end151_crit_edge:         ; preds = %get_auth_method.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

get_auth_method.exit.cleanup192_crit_edge:        ; preds = %get_auth_method.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end151:                                        ; preds = %get_auth_method.exit.if.end151_crit_edge, %if.end132.if.end151_crit_edge
  %max_key_size152 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %4, i32 0, i32 3
  %104 = ptrtoint ptr %max_key_size152 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %max_key_size152, align 1
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %1, align 1
  %108 = call i8 @llvm.umin.i8(i8 %105, i8 %107)
  %109 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %smp, align 4
  %data.i289 = getelementptr inbounds %struct.l2cap_chan, ptr %110, i32 0, i32 84
  %111 = ptrtoint ptr %data.i289 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %94)
  %cmp.i291 = icmp ne i8 %94, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %108)
  %cmp6.not.i292 = icmp eq i8 %108, 16
  %or.cond.i293 = or i1 %cmp.i291, %cmp6.not.i292
  br i1 %or.cond.i293, label %if.end.i299, label %if.end151.cleanup192_crit_edge

if.end151.cleanup192_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end.i299:                                      ; preds = %if.end151
  %hdev1.i294 = getelementptr inbounds %struct.hci_conn, ptr %92, i32 0, i32 65
  %113 = ptrtoint ptr %hdev1.i294 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hdev1.i294, align 4
  %le_max_key_size.i295 = getelementptr inbounds %struct.hci_dev, ptr %114, i32 0, i32 67
  %115 = ptrtoint ptr %le_max_key_size.i295 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %le_max_key_size.i295, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %108)
  %cmp10.i296 = icmp ult i8 %116, %108
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %108)
  %cmp13.i297 = icmp ult i8 %108, 7
  %or.cond24.i298 = or i1 %cmp13.i297, %cmp10.i296
  br i1 %or.cond24.i298, label %if.end.i299.cleanup192_crit_edge, label %if.end169

if.end.i299.cleanup192_crit_edge:                 ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end169:                                        ; preds = %if.end.i299
  %enc_key_size.i300 = getelementptr inbounds %struct.smp_chan, ptr %112, i32 0, i32 11
  %117 = ptrtoint ptr %enc_key_size.i300 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %108, ptr %enc_key_size.i300, align 2
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 5
  call void @get_random_bytes(ptr noundef %prnd, i32 noundef 16) #14
  %prsp171 = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 4
  %118 = ptrtoint ptr %prsp171 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %prsp171, align 1
  %arrayidx174 = getelementptr %struct.smp_chan, ptr %smp2.0307, i32 0, i32 4, i32 1
  %119 = call ptr @memcpy(ptr %arrayidx174, ptr %rsp, i32 6)
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 2, i16 noundef zeroext 6, ptr noundef nonnull %rsp)
  %flags175 = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 22
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags175) #14
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd) #14
  %120 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flags175, align 4
  %122 = and i32 %121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool178.not = icmp eq i32 %122, 0
  br i1 %tobool178.not, label %if.end185, label %if.then179

if.then179:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 12, ptr noundef %allow_cmd) #14
  %remote_key_dist181 = getelementptr inbounds %struct.smp_chan, ptr %smp2.0307, i32 0, i32 12
  %123 = ptrtoint ptr %remote_key_dist181 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %remote_key_dist181, align 1
  %125 = and i8 %124, -10
  store i8 %125, ptr %remote_key_dist181, align 1
  br label %cleanup192

if.end185:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rsp, align 1
  %128 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %4, align 1
  %call188 = call fastcc i32 @tk_request(ptr noundef %conn, i8 noundef zeroext %and, i8 noundef zeroext %127, i8 noundef zeroext %129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  %.270 = select i1 %tobool189.not, i8 0, i8 8
  br label %cleanup192

cleanup192:                                       ; preds = %if.end185, %if.then179, %if.end.i299.cleanup192_crit_edge, %if.end151.cleanup192_crit_edge, %get_auth_method.exit.cleanup192_crit_edge, %if.then138.cleanup192_crit_edge, %if.end94, %if.end.i.cleanup192_crit_edge, %if.end80.cleanup192_crit_edge, %land.lhs.true66.cleanup192_crit_edge, %if.end34.cleanup192_crit_edge, %if.end20.cleanup192_crit_edge, %if.end17.cleanup192_crit_edge, %if.end6.cleanup192_crit_edge, %do.end.cleanup192_crit_edge
  %retval.1 = phi i8 [ 0, %if.end94 ], [ 0, %if.then179 ], [ 10, %do.end.cleanup192_crit_edge ], [ 7, %if.end6.cleanup192_crit_edge ], [ 8, %if.end17.cleanup192_crit_edge ], [ 5, %if.end20.cleanup192_crit_edge ], [ 3, %if.end34.cleanup192_crit_edge ], [ 14, %land.lhs.true66.cleanup192_crit_edge ], [ 3, %get_auth_method.exit.cleanup192_crit_edge ], [ %.270, %if.end185 ], [ 6, %if.end80.cleanup192_crit_edge ], [ 6, %if.end.i.cleanup192_crit_edge ], [ 3, %if.then138.cleanup192_crit_edge ], [ 6, %if.end151.cleanup192_crit_edge ], [ 6, %if.end.i299.cleanup192_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rsp) #14
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_cmd_pairing_rsp(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_pairing_rsp.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_pairing_rsp, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_pairing_rsp.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp = icmp ult i32 %11, 6
  br i1 %cmp, label %do.end.cleanup149_crit_edge, label %if.end7

do.end.cleanup149_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end7:                                          ; preds = %do.end
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %role = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp9.not = icmp eq i8 %15, 0
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup149_crit_edge

if.end7.cleanup149_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #14
  %arrayidx = getelementptr %struct.smp_chan, ptr %5, i32 0, i32 3, i32 1
  %max_key_size = getelementptr %struct.smp_chan, ptr %5, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %max_key_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_key_size, align 1
  %max_key_size14 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %max_key_size14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_key_size14, align 1
  %20 = tail call i8 @llvm.umin.i8(i8 %17, i8 %19)
  %21 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smp, align 4
  %23 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %conn, align 4
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %22, i32 0, i32 84
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %pending_sec_level.i = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 25
  %27 = ptrtoint ptr %pending_sec_level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pending_sec_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp.i = icmp ne i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %20)
  %cmp6.not.i = icmp eq i8 %20, 16
  %or.cond.i = or i1 %cmp6.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %if.end12.cleanup149_crit_edge

if.end12.cleanup149_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end.i:                                         ; preds = %if.end12
  %hdev1.i = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 65
  %29 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev1.i, align 4
  %le_max_key_size.i = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 67
  %31 = ptrtoint ptr %le_max_key_size.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %le_max_key_size.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %20)
  %cmp10.i = icmp ult i8 %32, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp13.i = icmp ult i8 %20, 7
  %or.cond24.i = or i1 %cmp13.i, %cmp10.i
  br i1 %or.cond24.i, label %if.end.i.cleanup149_crit_edge, label %if.end26

if.end.i.cleanup149_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end26:                                         ; preds = %if.end.i
  %enc_key_size.i = getelementptr inbounds %struct.smp_chan, ptr %26, i32 0, i32 11
  %33 = ptrtoint ptr %enc_key_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %20, ptr %enc_key_size.i, align 2
  %auth_req = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %auth_req to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %auth_req, align 1
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 206
  %36 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dev_flags, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool30.not = icmp eq i32 %38, 0
  %cond31 = select i1 %tobool30.not, i8 7, i8 63
  %and = and i8 %cond31, %35
  %39 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dev_flags, align 4
  %41 = and i32 %40, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool36.not = icmp ne i32 %41, 0
  %42 = and i8 %and, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool39.not = icmp eq i8 %42, 0
  %or.cond = select i1 %tobool36.not, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %if.end26.cleanup149_crit_edge, label %if.end41

if.end26.cleanup149_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end41:                                         ; preds = %if.end26
  %oob_flag = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %oob_flag to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %oob_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp43 = icmp eq i8 %44, 1
  br i1 %cmp43, label %land.lhs.true45, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

land.lhs.true45:                                  ; preds = %if.end41
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 168
  %45 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smp_data, align 4
  %data46 = getelementptr inbounds %struct.l2cap_chan, ptr %46, i32 0, i32 84
  %47 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data46, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool47.not = icmp eq i8 %50, 0
  br i1 %tobool47.not, label %land.lhs.true45.if.end50_crit_edge, label %if.then49

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then49:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true45.if.end50_crit_edge, %if.end41.if.end50_crit_edge
  %prsp = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 4
  %51 = ptrtoint ptr %prsp to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %prsp, align 1
  %arrayidx53 = getelementptr %struct.smp_chan, ptr %5, i32 0, i32 4, i32 1
  %52 = call ptr @memcpy(ptr %arrayidx53, ptr %1, i32 6)
  %resp_key_dist = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %resp_key_dist to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %resp_key_dist, align 1
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 12
  %55 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %remote_key_dist, align 1
  %and56209 = and i8 %56, %54
  store i8 %and56209, ptr %remote_key_dist, align 1
  %auth_req58 = getelementptr %struct.smp_chan, ptr %5, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %auth_req58 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %auth_req58, align 1
  %59 = and i8 %58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool61.not = icmp eq i8 %59, 0
  %60 = and i8 %and, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool65.not = icmp eq i8 %60, 0
  %or.cond212 = select i1 %tobool61.not, i1 true, i1 %tobool65.not
  br i1 %or.cond212, label %if.end50.if.end68_crit_edge, label %if.then66

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %flags67 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags67) #14
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end50.if.end68_crit_edge
  %61 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %conn, align 4
  %type = getelementptr inbounds %struct.hci_conn, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp71 = icmp eq i8 %64, 1
  br i1 %cmp71, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %remote_key_dist, align 1
  %67 = and i8 %66, -10
  store i8 %67, ptr %remote_key_dist, align 1
  tail call fastcc void @smp_distribute_keys(ptr noundef %5)
  br label %cleanup149

if.end78:                                         ; preds = %if.end68
  %68 = ptrtoint ptr %auth_req58 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %auth_req58, align 1
  %70 = and i8 %69, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool82.not = icmp eq i8 %70, 0
  %or.cond213 = select i1 %tobool82.not, i1 true, i1 %tobool39.not
  br i1 %or.cond213, label %if.else, label %if.then87

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %flags88 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags88) #14
  br label %if.end97

if.else:                                          ; preds = %if.end78
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %62, i32 0, i32 25
  %71 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp91 = icmp ugt i8 %72, 3
  br i1 %cmp91, label %if.then93, label %if.else.if.end97_crit_edge

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %pending_sec_level, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.else.if.end97_crit_edge, %if.then87
  %74 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %conn, align 4
  %pending_sec_level99 = getelementptr inbounds %struct.hci_conn, ptr %75, i32 0, i32 25
  %76 = ptrtoint ptr %pending_sec_level99 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pending_sec_level99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp101 = icmp ugt i8 %77, 2
  br i1 %cmp101, label %if.then103, label %if.end97.if.end114_crit_edge

if.end97.if.end114_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then103:                                       ; preds = %if.end97
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx, align 1
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %79)
  %cmp.i220 = icmp ugt i8 %79, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %81)
  %cmp3.i = icmp ugt i8 %81, 4
  %or.cond228 = select i1 %cmp.i220, i1 true, i1 %cmp3.i
  br i1 %or.cond228, label %if.then103.cleanup149_crit_edge, label %get_auth_method.exit

if.then103.cleanup149_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

get_auth_method.exit:                             ; preds = %if.then103
  %conv.i = zext i8 %79 to i32
  %conv2.i = zext i8 %81 to i32
  %flags.i = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags.i, align 4
  %84 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i = icmp eq i32 %84, 0
  %gen_method.sc_method.i = select i1 %tobool.not.i, ptr @gen_method, ptr @sc_method
  %arrayidx12.i = getelementptr [5 x [5 x i8]], ptr %gen_method.sc_method.i, i32 0, i32 %conv2.i, i32 %conv.i
  %85 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %switch = icmp ult i8 %86, 2
  br i1 %switch, label %get_auth_method.exit.cleanup149_crit_edge, label %get_auth_method.exit.if.end114_crit_edge

get_auth_method.exit.if.end114_crit_edge:         ; preds = %get_auth_method.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

get_auth_method.exit.cleanup149_crit_edge:        ; preds = %get_auth_method.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end114:                                        ; preds = %get_auth_method.exit.if.end114_crit_edge, %if.end97.if.end114_crit_edge
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %prnd, i32 noundef 16) #14
  %87 = ptrtoint ptr %resp_key_dist to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %resp_key_dist, align 1
  %89 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %remote_key_dist, align 1
  %and120210 = and i8 %90, %88
  store i8 %and120210, ptr %remote_key_dist, align 1
  %flags122 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  %91 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags122, align 4
  %93 = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool124.not = icmp eq i32 %93, 0
  br i1 %tobool124.not, label %if.end131, label %if.then125

if.then125:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  %94 = and i8 %and120210, -10
  %95 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %remote_key_dist, align 1
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 12, ptr noundef %allow_cmd) #14
  %call130 = tail call fastcc zeroext i8 @sc_send_public_key(ptr noundef %5)
  br label %cleanup149

if.end131:                                        ; preds = %if.end114
  %96 = ptrtoint ptr %auth_req58 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %auth_req58, align 1
  %or211 = or i8 %97, %and
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx, align 1
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %1, align 1
  %call138 = tail call fastcc i32 @tk_request(ptr noundef %conn, i8 noundef zeroext %or211, i8 noundef zeroext %99, i8 noundef zeroext %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end131.cleanup149_crit_edge

if.end131.cleanup149_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.end141:                                        ; preds = %if.end131
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags122) #14
  %102 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags122, align 4
  %and1.i218 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i218)
  %tobool145.not = icmp eq i32 %and1.i218, 0
  br i1 %tobool145.not, label %if.end141.cleanup149_crit_edge, label %if.then146

if.end141.cleanup149_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup149

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  %call147 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef %5)
  br label %cleanup149

cleanup149:                                       ; preds = %if.then146, %if.end141.cleanup149_crit_edge, %if.end131.cleanup149_crit_edge, %if.then125, %get_auth_method.exit.cleanup149_crit_edge, %if.then103.cleanup149_crit_edge, %if.then73, %if.end26.cleanup149_crit_edge, %if.end.i.cleanup149_crit_edge, %if.end12.cleanup149_crit_edge, %if.end7.cleanup149_crit_edge, %do.end.cleanup149_crit_edge
  %retval.1 = phi i8 [ 0, %if.then73 ], [ %call130, %if.then125 ], [ %call147, %if.then146 ], [ 10, %do.end.cleanup149_crit_edge ], [ 7, %if.end7.cleanup149_crit_edge ], [ 3, %if.end26.cleanup149_crit_edge ], [ 3, %get_auth_method.exit.cleanup149_crit_edge ], [ 8, %if.end131.cleanup149_crit_edge ], [ 0, %if.end141.cleanup149_crit_edge ], [ 6, %if.end12.cleanup149_crit_edge ], [ 6, %if.end.i.cleanup149_crit_edge ], [ 3, %if.then103.cleanup149_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_cmd_security_req(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.smp_cmd_pairing, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cp) #14
  %2 = call ptr @memset(ptr %cp, i32 255, i32 6)
  %3 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn, align 4
  %hdev2 = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 65
  %5 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_security_req.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_security_req, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_security_req.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %role = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 15
  %9 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp7.not = icmp eq i8 %10, 0
  br i1 %cmp7.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 206
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool14.not, i8 7, i8 63
  %and = and i8 %cond, %12
  %16 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_flags, align 4
  %18 = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp ne i32 %18, 0
  %19 = and i8 %and, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool22.not, i1 false
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %io_capability = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 28
  %20 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %io_capability, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp26 = icmp eq i8 %21, 3
  br i1 %cmp26, label %if.end24.if.end30_crit_edge, label %if.else

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i8 %and to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 3, i8 4
  %retval.0.i101 = select i1 %tobool.not.i, i8 2, i8 %..i
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end24.if.end30_crit_edge
  %sec_level.0 = phi i8 [ %retval.0.i101, %if.else ], [ 2, %if.end24.if.end30_crit_edge ]
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 47
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i102 = icmp eq i32 %24, 0
  br i1 %tobool.not.i102, label %if.end30.smp_sufficient_security.exit_crit_edge, label %land.lhs.true4.i

if.end30.smp_sufficient_security.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_sufficient_security.exit

land.lhs.true4.i:                                 ; preds = %if.end30
  %25 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev2, align 4
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 2
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 3
  %27 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dst_type.i, align 2
  %call5.i = tail call ptr @hci_find_ltk(ptr noundef %26, ptr noundef %dst.i, i8 noundef zeroext %28, i8 noundef zeroext 0) #14
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %land.lhs.true4.i.smp_sufficient_security.exit_crit_edge, label %land.lhs.true4.i.if.end35_crit_edge

land.lhs.true4.i.if.end35_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true4.i.smp_sufficient_security.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_sufficient_security.exit

smp_sufficient_security.exit:                     ; preds = %land.lhs.true4.i.smp_sufficient_security.exit_crit_edge, %if.end30.smp_sufficient_security.exit_crit_edge
  %sec_level9.i = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 24
  %29 = ptrtoint ptr %sec_level9.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sec_level9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %sec_level.0)
  %cmp12.not.i.not = icmp ult i8 %30, %sec_level.0
  br i1 %cmp12.not.i.not, label %smp_sufficient_security.exit.if.end35_crit_edge, label %if.then32

smp_sufficient_security.exit.if.end35_crit_edge:  ; preds = %smp_sufficient_security.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then32:                                        ; preds = %smp_sufficient_security.exit
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %sec_level9.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sec_level9.i, align 4
  %call34 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef %conn, i8 noundef zeroext %32)
  br label %cleanup

if.end35:                                         ; preds = %smp_sufficient_security.exit.if.end35_crit_edge, %land.lhs.true4.i.if.end35_crit_edge
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 25
  %33 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sec_level.0, i8 %34)
  %cmp38 = icmp ugt i8 %sec_level.0, %34
  br i1 %cmp38, label %if.then40, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sec_level.0, ptr %pending_sec_level, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end35.if.end42_crit_edge
  %36 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pending_sec_level, align 1
  %call44 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef %conn, i8 noundef zeroext %37)
  br i1 %call44, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = tail call fastcc ptr @smp_chan_create(ptr noundef %conn)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %38 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dev_flags, align 4
  %40 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not = icmp ne i32 %40, 0
  %41 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool58.not = icmp eq i8 %41, 0
  %or.cond96 = select i1 %tobool54.not, i1 true, i1 %tobool58.not
  br i1 %or.cond96, label %if.end60, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #14
  %42 = call ptr @memset(ptr %cp, i32 0, i32 6)
  call fastcc void @build_pairing_cmd(ptr noundef %conn, ptr noundef nonnull %cp, ptr noundef null, i8 noundef zeroext %and)
  %preq = getelementptr inbounds %struct.smp_chan, ptr %call47, i32 0, i32 3
  %43 = ptrtoint ptr %preq to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %preq, align 4
  %arrayidx63 = getelementptr %struct.smp_chan, ptr %call47, i32 0, i32 3, i32 1
  %44 = call ptr @memcpy(ptr %arrayidx63, ptr %cp, i32 6)
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef nonnull %cp)
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %call47, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %allow_cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then32, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then32 ], [ 0, %if.end60 ], [ 10, %do.end.cleanup_crit_edge ], [ 7, %if.end6.cleanup_crit_edge ], [ 3, %if.end10.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 8, %if.end46.cleanup_crit_edge ], [ 5, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cp) #14
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_cmd_pairing_confirm(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_pairing_confirm.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_pairing_confirm, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  %out = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool6.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_pairing_confirm.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.64, ptr noundef %name, ptr noundef %conn, ptr noundef nonnull %cond) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp ult i32 %11, 16
  br i1 %cmp, label %do.end.cleanup41_crit_edge, label %if.end8

do.end.cleanup41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end8:                                          ; preds = %do.end
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 7
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data10, align 4
  %14 = call ptr @memcpy(ptr %pcnf, ptr %13, i32 16)
  %call11 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #14
  %flags = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 22
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.end8.if.end27_crit_edge, label %if.then14

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then14:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then14
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_check_confirm.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_pairing_confirm, %if.then.i)) #14
          to label %do.end.i [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %hdev.i = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 65
  %25 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev.i, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sc_check_confirm.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.9, ptr noundef %name.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then18
  %method.i = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 23
  %27 = ptrtoint ptr %method.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %method.i, align 4
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %28, label %if.end11.i [
    i8 2, label %do.end.i.if.then9.i_crit_edge
    i8 5, label %do.end.i.if.then9.i_crit_edge79
  ]

do.end.i.if.then9.i_crit_edge79:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

do.end.i.if.then9.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

if.then9.i:                                       ; preds = %do.end.i.if.then9.i_crit_edge, %do.end.i.if.then9.i_crit_edge79
  %call10.i = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef %3, i8 noundef zeroext 3) #14
  br label %cleanup41

if.end11.i:                                       ; preds = %do.end.i
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %22, align 4
  %out.i = getelementptr inbounds %struct.hci_conn, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %out.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not.i = icmp eq i8 %33, 0
  br i1 %tobool13.not.i, label %if.end11.i.cleanup41_crit_edge, label %if.then14.i

if.end11.i.cleanup41_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %prnd.i = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  tail call fastcc void @smp_send_cmd(ptr noundef %22, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd.i) #14
  %allow_cmd.i = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %allow_cmd.i) #14
  br label %cleanup41

if.end20:                                         ; preds = %if.then14
  %name21 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.67, ptr noundef %name21) #14
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %out.i69 = getelementptr inbounds %struct.hci_conn, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %out.i69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %out.i69, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup41_crit_edge

if.end20.cleanup41_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end.i:                                         ; preds = %if.end20
  %hdev3.i = getelementptr inbounds %struct.hci_conn, ptr %37, i32 0, i32 65
  %40 = ptrtoint ptr %hdev3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev3.i, align 4
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 206
  %42 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dev_flags.i, align 4
  %44 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool4.not.i = icmp eq i32 %44, 0
  %name8.i = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.69, ptr noundef %name8.i) #14
  br label %cleanup41

if.end7.i:                                        ; preds = %if.end.i
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.70, ptr noundef %name8.i) #14
  %arrayidx.i = getelementptr %struct.smp_chan, ptr %3, i32 0, i32 3, i32 1
  %arrayidx10.i = getelementptr %struct.smp_chan, ptr %3, i32 0, i32 4, i32 1
  %init_key_dist.i = getelementptr %struct.smp_chan, ptr %3, i32 0, i32 3, i32 5
  %45 = ptrtoint ptr %init_key_dist.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %init_key_dist.i, align 1
  %resp_key_dist.i = getelementptr %struct.smp_chan, ptr %3, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %resp_key_dist.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %resp_key_dist.i, align 1
  %and45.i = and i8 %48, %46
  %remote_key_dist.i = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 12
  %49 = ptrtoint ptr %remote_key_dist.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and45.i, ptr %remote_key_dist.i, align 1
  %auth_req.i = getelementptr %struct.smp_chan, ptr %3, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %auth_req.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %auth_req.i, align 1
  %52 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dev_flags.i, align 4
  %54 = and i32 %53, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool17.not.i = icmp eq i32 %54, 0
  %cond.i = select i1 %tobool17.not.i, i8 7, i8 63
  %and18.i = and i8 %cond.i, %51
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx10.i, align 1
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 1
  %call21.i = tail call fastcc i32 @tk_request(ptr noundef %35, i8 noundef zeroext %and18.i, i8 noundef zeroext %56, i8 noundef zeroext %58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %cleanup, label %if.then23.i

if.then23.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.71, ptr noundef %name8.i) #14
  br label %cleanup41

cleanup:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #14
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end8.if.end27_crit_edge
  %59 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %conn, align 4
  %out29 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %out29 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %out29, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool30.not = icmp eq i8 %62, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  tail call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd)
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %allow_cmd) #14
  br label %cleanup41

if.end33:                                         ; preds = %if.end27
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags, align 4
  %and1.i67 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i67)
  %tobool36.not = icmp eq i32 %and1.i67, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef %3)
  br label %cleanup41

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %cleanup41

cleanup41:                                        ; preds = %if.end39, %if.then37, %if.then31, %if.then23.i, %if.then5.i, %if.end20.cleanup41_crit_edge, %if.then14.i, %if.end11.i.cleanup41_crit_edge, %if.then9.i, %do.end.cleanup41_crit_edge
  %retval.1 = phi i8 [ 0, %if.then31 ], [ %call38, %if.then37 ], [ 0, %if.end39 ], [ 10, %do.end.cleanup41_crit_edge ], [ 0, %if.end11.i.cleanup41_crit_edge ], [ 0, %if.then14.i ], [ %call10.i, %if.then9.i ], [ 8, %if.then5.i ], [ 8, %if.then23.i ], [ 8, %if.end20.cleanup41_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_cmd_pairing_random(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  %passkey = alloca i32, align 4
  %cfm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %passkey) #14
  %6 = ptrtoint ptr %passkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %passkey, align 4, !annotation !280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_pairing_random.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_pairing_random, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_pairing_random.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp = icmp ult i32 %10, 16
  br i1 %cmp, label %do.end.cleanup124_crit_edge, label %if.end6

do.end.cleanup124_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

if.end6:                                          ; preds = %do.end
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 6
  %data8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data8, align 4
  %13 = call ptr @memcpy(ptr %rrnd, ptr %12, i32 16)
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #14
  %flags = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call fastcc zeroext i8 @smp_random(ptr noundef %3)
  br label %cleanup124

if.end14:                                         ; preds = %if.end6
  %out = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 16
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %local_pk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 25
  %remote_pk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 26
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  br label %if.end30

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %remote_pk22 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 26
  %local_pk24 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 25
  %prnd28 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then16
  %pkax.0 = phi ptr [ %local_pk, %if.then16 ], [ %remote_pk22, %if.else ]
  %pkbx.0 = phi ptr [ %remote_pk, %if.then16 ], [ %local_pk24, %if.else ]
  %na.0 = phi ptr [ %prnd, %if.then16 ], [ %rrnd, %if.else ]
  %nb.0 = phi ptr [ %rrnd, %if.then16 ], [ %prnd28, %if.else ]
  %method = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 23
  %19 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %method, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %20, label %if.end51 [
    i8 4, label %if.then33
    i8 2, label %if.end30.if.then49_crit_edge
    i8 5, label %if.end30.if.then49_crit_edge193
  ]

if.end30.if.then49_crit_edge193:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

if.end30.if.then49_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

if.then33:                                        ; preds = %if.end30
  br i1 %tobool15.not, label %if.then36, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %prnd37 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  tail call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd37)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then33.if.end39_crit_edge
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd) #14
  br label %mackey_and_ltk

if.then49:                                        ; preds = %if.end30.if.then49_crit_edge, %if.end30.if.then49_crit_edge193
  %call50 = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef %3, i8 noundef zeroext 4)
  br label %cleanup124

if.end51:                                         ; preds = %if.end30
  br i1 %tobool15.not, label %if.else72, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfm) #14
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 29
  %22 = call ptr @memset(ptr %cfm, i32 255, i32 16)
  %23 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm_cmac, align 4
  %remote_pk55 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 26
  %local_pk57 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %25 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %m.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 1
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %local_pk57, i32 32)
  %add.ptr4.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %27 = call ptr @memcpy(ptr %add.ptr4.i, ptr %remote_pk55, i32 32)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %24, ptr noundef %rrnd, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %cfm) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool63.not = icmp eq i32 %call.i, 0
  br i1 %tobool63.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm) #14
  br label %cleanup124

cleanup:                                          ; preds = %if.then54
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 7
  %call.i189 = call i32 @__crypto_memneq(ptr noundef %pcnf, ptr noundef nonnull %cfm, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp.not.i.not = icmp eq i32 %call.i189, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm) #14
  br i1 %cmp.not.i.not, label %cleanup.mackey_and_ltk_crit_edge, label %cleanup.cleanup124_crit_edge

cleanup.cleanup124_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

cleanup.mackey_and_ltk_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %mackey_and_ltk

if.else72:                                        ; preds = %if.end51
  %prnd73 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 5
  tail call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd73)
  %allow_cmd75 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd75) #14
  %28 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp78.not = icmp eq i8 %29, 0
  br i1 %cmp78.not, label %if.end81, label %if.else72.mackey_and_ltk_crit_edge

if.else72.mackey_and_ltk_crit_edge:               ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #16
  br label %mackey_and_ltk

if.end81:                                         ; preds = %if.else72
  %hdev82 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %30 = ptrtoint ptr %hdev82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev82, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dst_type, align 2
  %role = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 15
  %34 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %role, align 8
  %call83 = tail call ptr @hci_find_ltk(ptr noundef %31, ptr noundef %dst, i8 noundef zeroext %33, i8 noundef zeroext %35) #14
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.end81.mackey_and_ltk_crit_edge, label %if.then85

if.end81.mackey_and_ltk_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %mackey_and_ltk

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %passkey to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %passkey, align 4
  br label %confirm

mackey_and_ltk:                                   ; preds = %if.end81.mackey_and_ltk_crit_edge, %if.else72.mackey_and_ltk_crit_edge, %cleanup.mackey_and_ltk_crit_edge, %if.end39
  %mackey = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 28
  %tk = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 8
  %call90 = call fastcc i32 @sc_mackey_and_ltk(ptr noundef %3, ptr noundef %mackey, ptr noundef %tk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %mackey_and_ltk.cleanup124_crit_edge

mackey_and_ltk.cleanup124_crit_edge:              ; preds = %mackey_and_ltk
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

if.end93:                                         ; preds = %mackey_and_ltk
  %37 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %cmp96 = icmp eq i8 %38, 4
  br i1 %cmp96, label %if.then98, label %if.end104

if.then98:                                        ; preds = %if.end93
  %39 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool100.not = icmp eq i8 %40, 0
  br i1 %tobool100.not, label %if.then98.cleanup124_crit_edge, label %if.then101

if.then98.cleanup124_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sc_dhkey_check(ptr noundef %3)
  %allow_cmd102 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %allow_cmd102) #14
  br label %cleanup124

if.end104:                                        ; preds = %if.end93
  %tfm_cmac105 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 29
  %41 = ptrtoint ptr %tfm_cmac105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tfm_cmac105, align 4
  %call106 = call fastcc i32 @smp_g2(ptr noundef %42, ptr noundef %pkax.0, ptr noundef %pkbx.0, ptr noundef %na.0, ptr noundef %nb.0, ptr noundef nonnull %passkey)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end104.confirm_crit_edge, label %if.end104.cleanup124_crit_edge

if.end104.cleanup124_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

if.end104.confirm_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %confirm

confirm:                                          ; preds = %if.end104.confirm_crit_edge, %if.then85
  %confirm_hint.0 = phi i8 [ 1, %if.then85 ], [ 0, %if.end104.confirm_crit_edge ]
  %43 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp112 = icmp eq i8 %44, 0
  %spec.select = select i1 %cmp112, i8 1, i8 %confirm_hint.0
  %hdev116 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %45 = ptrtoint ptr %hdev116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev116, align 4
  %dst117 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 2
  %type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 14
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type, align 1
  %dst_type118 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 3
  %49 = ptrtoint ptr %dst_type118 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dst_type118, align 2
  %51 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %passkey, align 4
  %call119 = call i32 @mgmt_user_confirm_request(ptr noundef %46, ptr noundef %dst117, i8 noundef zeroext %48, i8 noundef zeroext %50, i32 noundef %52, i8 noundef zeroext %spec.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %confirm.cleanup124_crit_edge

confirm.cleanup124_crit_edge:                     ; preds = %confirm
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup124

if.end122:                                        ; preds = %confirm
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 8, ptr noundef %flags) #14
  br label %cleanup124

cleanup124:                                       ; preds = %if.end122, %confirm.cleanup124_crit_edge, %if.end104.cleanup124_crit_edge, %if.then101, %if.then98.cleanup124_crit_edge, %mackey_and_ltk.cleanup124_crit_edge, %cleanup.cleanup124_crit_edge, %cleanup.thread, %if.then49, %if.then12, %do.end.cleanup124_crit_edge
  %retval.1 = phi i8 [ 0, %if.end122 ], [ %call50, %if.then49 ], [ 4, %cleanup.cleanup124_crit_edge ], [ %call13, %if.then12 ], [ 10, %do.end.cleanup124_crit_edge ], [ 8, %mackey_and_ltk.cleanup124_crit_edge ], [ 0, %if.then101 ], [ 0, %if.then98.cleanup124_crit_edge ], [ 8, %if.end104.cleanup124_crit_edge ], [ 8, %confirm.cleanup124_crit_edge ], [ 8, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %passkey) #14
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_encrypt_info(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_encrypt_info.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_encrypt_info, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_encrypt_info.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp ult i32 %11, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %hdev8 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %14 = ptrtoint ptr %hdev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev8, align 4
  %call10 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %15, i8 noundef zeroext 1, ptr noundef %1) #14
  br i1 %call10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  %hdev13 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 65
  %18 = ptrtoint ptr %hdev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev13, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 2
  %dst = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.76, ptr noundef %name14, ptr noundef %dst) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 7, ptr noundef %allow_cmd) #14
  %call18 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #14
  %tk = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 8
  %20 = call ptr @memcpy(ptr %tk, ptr %1, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.then11 ], [ 0, %if.end17 ], [ 10, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_initiator_ident(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_initiator_ident.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_initiator_ident, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_initiator_ident.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp = icmp ult i32 %11, 10
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %remote_key_dist, align 1
  %14 = and i8 %13, -2
  store i8 %14, ptr %remote_key_dist, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.end9.if.end23.sink.split_crit_edge

if.end9.if.end23.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.end9
  %and18 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else.if.end23_crit_edge, label %if.else.if.end23.sink.split_crit_edge

if.else.if.end23.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23.sink.split:                              ; preds = %if.else.if.end23.sink.split_crit_edge, %if.end9.if.end23.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.end9.if.end23.sink.split_crit_edge ], [ 10, %if.else.if.end23.sink.split_crit_edge ]
  %allow_cmd21 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %allow_cmd21) #14
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else.if.end23_crit_edge
  %call24 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 10) #14
  %sec_level = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 24
  %15 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sec_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp26 = icmp eq i8 %16, 3
  %conv28 = zext i1 %cmp26 to i8
  %dst = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 3
  %17 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dst_type, align 2
  %tk = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 8
  %enc_key_size = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enc_key_size, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %1, align 1
  %rand = getelementptr inbounds %struct.smp_cmd_initiator_ident, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %rand to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %rand, align 1
  %call30 = tail call ptr @hci_add_ltk(ptr noundef %9, ptr noundef %dst, i8 noundef zeroext %18, i8 noundef zeroext 1, i8 noundef zeroext %conv28, ptr noundef %tk, i8 noundef zeroext %20, i16 noundef zeroext %22, i64 noundef %24) #14
  %ltk31 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 18
  %25 = ptrtoint ptr %ltk31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %ltk31, align 4
  %26 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %remote_key_dist, align 1
  %28 = and i8 %27, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool35.not = icmp eq i8 %28, 0
  br i1 %tobool35.not, label %if.then36, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smp_distribute_keys(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end23.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %do.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_ident_info(ptr nocapture noundef readonly %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_ident_info.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_ident_info, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_ident_info.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp ult i32 %11, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %hdev8 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %14 = ptrtoint ptr %hdev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev8, align 4
  %call10 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %15, i8 noundef zeroext 2, ptr noundef %1) #14
  br i1 %call10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  %hdev13 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 65
  %18 = ptrtoint ptr %hdev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev13, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 2
  %dst = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.79, ptr noundef %name14, ptr noundef %dst) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 9, ptr noundef %allow_cmd) #14
  %call18 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #14
  %irk19 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 15
  %20 = call ptr @memcpy(ptr %irk19, ptr %1, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.then11 ], [ 0, %if.end17 ], [ 10, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_ident_addr_info(ptr nocapture noundef readonly %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rpa = alloca %struct.bdaddr_t, align 1
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rpa) #14
  %8 = call ptr @memset(ptr %rpa, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_ident_addr_info.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_ident_addr_info, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_ident_addr_info.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp = icmp ult i32 %12, 7
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %remote_key_dist, align 1
  %15 = and i8 %14, -3
  store i8 %15, ptr %remote_key_dist, align 1
  %16 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  br i1 %tobool12.not, label %if.end7.if.end14_crit_edge, label %if.then13

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 10, ptr noundef %allow_cmd) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7.if.end14_crit_edge
  %call15 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 7) #14
  %bdaddr = getelementptr inbounds %struct.smp_cmd_ident_addr_info, ptr %1, i32 0, i32 1
  %17 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %if.end14.if.then24_crit_edge, label %lor.lhs.false

if.end14.if.then24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %lor.lhs.false.if.end28_crit_edge, label %hci_is_identity_address.exit

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

hci_is_identity_address.exit:                     ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr %struct.smp_cmd_ident_addr_info, ptr %1, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %21)
  %cmp3.i = icmp ugt i8 %21, -65
  br i1 %cmp3.i, label %hci_is_identity_address.exit.if.end28_crit_edge, label %hci_is_identity_address.exit.if.then24_crit_edge

hci_is_identity_address.exit.if.then24_crit_edge: ; preds = %hci_is_identity_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

hci_is_identity_address.exit.if.end28_crit_edge:  ; preds = %hci_is_identity_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %hci_is_identity_address.exit.if.then24_crit_edge, %if.end14.if.then24_crit_edge
  %hdev25 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %22 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev25, align 4
  %name26 = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.81, ptr noundef %name26) #14
  br label %distribute

if.end28:                                         ; preds = %hci_is_identity_address.exit.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %dst = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dst_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i109 = icmp eq i8 %25, 0
  br i1 %cmp.i109, label %if.end28.land.lhs.true_crit_edge, label %hci_is_identity_address.exit114

if.end28.land.lhs.true_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

hci_is_identity_address.exit114:                  ; preds = %if.end28
  %arrayidx.i110 = getelementptr %struct.hci_conn, ptr %7, i32 0, i32 2, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %27)
  %cmp3.i111 = icmp ugt i8 %27, -65
  br i1 %cmp3.i111, label %hci_is_identity_address.exit114.land.lhs.true_crit_edge, label %hci_is_identity_address.exit114.if.end46_crit_edge

hci_is_identity_address.exit114.if.end46_crit_edge: ; preds = %hci_is_identity_address.exit114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

hci_is_identity_address.exit114.land.lhs.true_crit_edge: ; preds = %hci_is_identity_address.exit114
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %hci_is_identity_address.exit114.land.lhs.true_crit_edge, %if.end28.land.lhs.true_crit_edge
  %bcmp124 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef dereferenceable(6) %dst, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp124)
  %tobool34.not = icmp eq i32 %bcmp124, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %25)
  %cmp40.not = icmp eq i8 %19, %25
  %or.cond = select i1 %tobool34.not, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end46_crit_edge, label %if.then42

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %hdev43 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %28 = ptrtoint ptr %hdev43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev43, align 4
  %name44 = getelementptr inbounds %struct.hci_dev, ptr %29, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.82, ptr noundef %name44) #14
  br label %distribute

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %hci_is_identity_address.exit114.if.end46_crit_edge
  %id_addr = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 13
  %30 = call ptr @memcpy(ptr %id_addr, ptr %bdaddr, i32 6)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 1
  %id_addr_type = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 14
  %33 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %id_addr_type, align 2
  %34 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dst_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp.not.i = icmp eq i8 %35, 1
  br i1 %cmp.not.i, label %hci_bdaddr_is_rpa.exit, label %if.end46.if.else_crit_edge

if.end46.if.else_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

hci_bdaddr_is_rpa.exit:                           ; preds = %if.end46
  %arrayidx.i116 = getelementptr %struct.hci_conn, ptr %7, i32 0, i32 2, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i116, align 1
  %38 = and i8 %37, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %38)
  %cmp3.i117 = icmp eq i8 %38, 64
  br i1 %cmp3.i117, label %if.then52, label %hci_bdaddr_is_rpa.exit.if.else_crit_edge

hci_bdaddr_is_rpa.exit.if.else_crit_edge:         ; preds = %hci_bdaddr_is_rpa.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then52:                                        ; preds = %hci_bdaddr_is_rpa.exit
  call void @__sanitizer_cov_trace_pc() #16
  %39 = call ptr @memcpy(ptr %rpa, ptr %dst, i32 6)
  br label %if.end62

if.else:                                          ; preds = %hci_bdaddr_is_rpa.exit.if.else_crit_edge, %if.end46.if.else_crit_edge
  %40 = call ptr @memset(ptr %rpa, i32 0, i32 6)
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then52
  %41 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conn, align 4
  %hdev64 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 65
  %43 = ptrtoint ptr %hdev64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdev64, align 4
  %45 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id_addr_type, align 2
  %irk = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 15
  %call68 = call ptr @hci_add_irk(ptr noundef %44, ptr noundef %id_addr, i8 noundef zeroext %46, ptr noundef %irk, ptr noundef nonnull %rpa) #14
  %remote_irk = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 20
  %47 = ptrtoint ptr %remote_irk to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call68, ptr %remote_irk, align 4
  br label %distribute

distribute:                                       ; preds = %if.end62, %if.then42, %if.then24
  %48 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %remote_key_dist, align 1
  %50 = and i8 %49, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool72.not = icmp eq i8 %50, 0
  br i1 %tobool72.not, label %if.then73, label %distribute.cleanup_crit_edge

distribute.cleanup_crit_edge:                     ; preds = %distribute
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then73:                                        ; preds = %distribute
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_distribute_keys(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %distribute.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %do.end.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %distribute.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rpa) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_sign_info(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data2 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_sign_info.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_sign_info, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_sign_info.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp ult i32 %11, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %remote_key_dist, align 1
  %14 = and i8 %13, -5
  store i8 %14, ptr %remote_key_dist, align 1
  %call8 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #17
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end6.if.end22_crit_edge, label %if.then11

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  %sec_level = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sec_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp14.inv = icmp ult i8 %19, 3
  %spec.select = select i1 %cmp14.inv, i8 1, i8 3
  %20 = getelementptr inbounds %struct.smp_csrk, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 1
  %val = getelementptr inbounds %struct.smp_csrk, ptr %call7.i.i, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %val, ptr %1, i32 16)
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.end6.if.end22_crit_edge
  %csrk23 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 16
  %23 = ptrtoint ptr %csrk23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %csrk23, align 4
  tail call fastcc void @smp_distribute_keys(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 10, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_public_key(ptr noundef %conn, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %m.i274 = alloca [65 x i8], align 1
  %m.i = alloca [65 x i8], align 1
  %cfm = alloca %struct.smp_cmd_pairing_confirm, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %4 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smp, align 4
  %data3 = getelementptr inbounds %struct.l2cap_chan, ptr %5, i32 0, i32 84
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %hdev4 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %8 = ptrtoint ptr %hdev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfm) #14
  %10 = call ptr @memset(ptr %cfm, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_public_key.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_public_key, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_public_key.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp = icmp ult i32 %12, 64
  br i1 %cmp, label %do.end.cleanup180_crit_edge, label %if.end8

do.end.cleanup180_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end8:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 22
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  %local_pk = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 25
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %1, ptr noundef %local_pk, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.then14, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %name15 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.85, ptr noundef %name15) #14
  br label %cleanup180

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %remote_pk = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 26
  %16 = call ptr @memcpy(ptr %remote_pk, ptr %1, i32 64)
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end17.if.end40_crit_edge, label %if.then22

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then22:                                        ; preds = %if.end17
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 29
  %20 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm_cmac, align 4
  %rr = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %22 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %m.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 1
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %1, i32 32)
  %add.ptr4.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %24 = call ptr @memcpy(ptr %add.ptr4.i, ptr %1, i32 32)
  %call.i266 = call fastcc i32 @aes_cmac(ptr noundef %21, ptr noundef %rr, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %cfm) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool30.not = icmp eq i32 %call.i266, 0
  br i1 %tobool30.not, label %if.end32, label %if.then22.cleanup180_crit_edge

if.then22.cleanup180_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end32:                                         ; preds = %if.then22
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 7
  %call.i267 = call i32 @__crypto_memneq(ptr noundef nonnull %cfm, ptr noundef %pcnf, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %cmp.not.i268.not = icmp eq i32 %call.i267, 0
  br i1 %cmp.not.i268.not, label %if.end32.if.end40_crit_edge, label %if.end32.cleanup180_crit_edge

if.end32.cleanup180_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.end40:                                         ; preds = %if.end32.if.end40_crit_edge, %if.end17.if.end40_crit_edge
  %out = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool41.not = icmp eq i8 %26, 0
  br i1 %tobool41.not, label %if.then42, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  %call43 = call fastcc zeroext i8 @sc_send_public_key(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call43)
  %tobool44.not = icmp eq i8 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then42.cleanup180_crit_edge

if.then42.cleanup180_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end40.if.end47_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool52.not = icmp eq i32 %29, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end47
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 168
  %30 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smp_data, align 4
  %tobool54.not = icmp eq ptr %31, null
  br i1 %tobool54.not, label %if.then53.cleanup180_crit_edge, label %lor.lhs.false

if.then53.cleanup180_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

lor.lhs.false:                                    ; preds = %if.then53
  %data55 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 84
  %32 = ptrtoint ptr %data55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data55, align 4
  %tobool56.not = icmp eq ptr %33, null
  br i1 %tobool56.not, label %lor.lhs.false.cleanup180_crit_edge, label %cleanup

lor.lhs.false.cleanup180_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %tfm_ecdh60 = getelementptr inbounds %struct.smp_dev, ptr %33, i32 0, i32 5
  br label %if.end63

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %tfm_ecdh62 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 30
  br label %if.end63

if.end63:                                         ; preds = %if.else, %cleanup
  %tfm_ecdh.1.in = phi ptr [ %tfm_ecdh60, %cleanup ], [ %tfm_ecdh62, %if.else ]
  %34 = ptrtoint ptr %tfm_ecdh.1.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %tfm_ecdh.1 = load ptr, ptr %tfm_ecdh.1.in, align 4
  %dhkey = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 27
  %call67 = call i32 @compute_ecdh_secret(ptr noundef %tfm_ecdh.1, ptr noundef %remote_pk, ptr noundef %dhkey) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end63.cleanup180_crit_edge

if.end63.cleanup180_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end70:                                         ; preds = %if.end63
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #14
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags, align 4
  %41 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end70.sc_select_method.exit_crit_edge

if.end70.sc_select_method.exit_crit_edge:         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_select_method.exit

lor.lhs.false.i:                                  ; preds = %if.end70
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags, align 4
  %44 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool5.not.i = icmp eq i32 %44, 0
  br i1 %tobool5.not.i, label %if.end.i, label %lor.lhs.false.i.sc_select_method.exit_crit_edge

lor.lhs.false.i.sc_select_method.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_select_method.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %out.i = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 16
  %45 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %out.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not.i = icmp eq i8 %46, 0
  %arrayidx.i = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 3, i32 1
  %arrayidx8.i = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 4, i32 1
  %local.0.i = select i1 %tobool6.not.i, ptr %arrayidx8.i, ptr %arrayidx.i
  %remote.0.i = select i1 %tobool6.not.i, ptr %arrayidx.i, ptr %arrayidx8.i
  %47 = ptrtoint ptr %local.0.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %local.0.i, align 1
  %49 = ptrtoint ptr %remote.0.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %remote.0.i, align 1
  %auth_req.i = getelementptr inbounds %struct.smp_cmd_pairing, ptr %local.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %auth_req.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %auth_req.i, align 1
  %53 = and i8 %52, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not.i = icmp eq i8 %53, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %if.end.i.if.then25.i_crit_edge

if.end.i.if.then25.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i

lor.lhs.false22.i:                                ; preds = %if.end.i
  %auth_req16.i = getelementptr inbounds %struct.smp_cmd_pairing, ptr %remote.0.i, i32 0, i32 2
  %54 = ptrtoint ptr %auth_req16.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %auth_req16.i, align 1
  %56 = and i8 %55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool24.not.i = icmp eq i8 %56, 0
  br i1 %tobool24.not.i, label %lor.lhs.false22.i.sc_select_method.exit_crit_edge, label %lor.lhs.false22.i.if.then25.i_crit_edge

lor.lhs.false22.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i

lor.lhs.false22.i.sc_select_method.exit_crit_edge: ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_select_method.exit

if.then25.i:                                      ; preds = %lor.lhs.false22.i.if.then25.i_crit_edge, %if.end.i.if.then25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp.i.i = icmp ugt i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %50)
  %cmp3.i.i = icmp ugt i8 %50, 4
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %cmp3.i.i
  br i1 %or.cond.i, label %if.then25.i.land.lhs.true.i_crit_edge, label %if.end28.i

if.then25.i.land.lhs.true.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.end28.i:                                       ; preds = %if.then25.i
  %conv.i.i = zext i8 %48 to i32
  %conv2.i.i = zext i8 %50 to i32
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags, align 4
  %59 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  %gen_method.sc_method.i.i = select i1 %tobool.not.i.i, ptr @gen_method, ptr @sc_method
  %arrayidx12.i.i = getelementptr [5 x [5 x i8]], ptr %gen_method.sc_method.i.i, i32 0, i32 %conv2.i.i, i32 %conv.i.i
  %60 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp.i = icmp eq i8 %61, 1
  br i1 %cmp.i, label %if.end28.i.land.lhs.true.i_crit_edge, label %if.end28.i.sc_select_method.exit_crit_edge

if.end28.i.sc_select_method.exit_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_select_method.exit

if.end28.i.land.lhs.true.i_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end28.i.land.lhs.true.i_crit_edge, %if.then25.i.land.lhs.true.i_crit_edge
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags, align 4
  %64 = trunc i32 %63 to i8
  %65 = lshr i8 %64, 4
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  br label %sc_select_method.exit

sc_select_method.exit:                            ; preds = %land.lhs.true.i, %if.end28.i.sc_select_method.exit_crit_edge, %lor.lhs.false22.i.sc_select_method.exit_crit_edge, %lor.lhs.false.i.sc_select_method.exit_crit_edge, %if.end70.sc_select_method.exit_crit_edge
  %retval.0.i270 = phi i8 [ 4, %lor.lhs.false.i.sc_select_method.exit_crit_edge ], [ 4, %if.end70.sc_select_method.exit_crit_edge ], [ %61, %if.end28.i.sc_select_method.exit_crit_edge ], [ %67, %land.lhs.true.i ], [ 0, %lor.lhs.false22.i.sc_select_method.exit_crit_edge ]
  %method = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 23
  %68 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %retval.0.i270, ptr %method, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_public_key.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_public_key, %if.then86)) #14
          to label %do.end93 [label %if.then86], !srcloc !275

if.then86:                                        ; preds = %sc_select_method.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name87 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %69 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %method, align 4
  %conv90 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_public_key.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.86, ptr noundef %name87, i32 noundef %conv90) #14
  br label %do.end93

do.end93:                                         ; preds = %if.then86, %sc_select_method.exit
  %71 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %method, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %switch = icmp ult i8 %72, 2
  %spec.select = select i1 %switch, i8 2, i8 4
  %73 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 25
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select, ptr %73, align 1
  %call.i271 = call i32 @__crypto_memneq(ptr noundef nonnull @debug_pk, ptr noundef %remote_pk, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp.not.i272.not = icmp eq i32 %call.i271, 0
  br i1 %cmp.not.i272.not, label %if.then111, label %do.end93.if.end113_crit_edge

do.end93.if.end113_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then111:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #14
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %do.end93.if.end113_crit_edge
  %75 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %method, align 4
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %76, label %if.end140 [
    i8 5, label %if.then118
    i8 4, label %if.then133
  ]

if.then118:                                       ; preds = %if.end113
  %passkey_notify = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 29
  call void @get_random_bytes(ptr noundef %passkey_notify, i32 noundef 4) #14
  %78 = ptrtoint ptr %passkey_notify to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %passkey_notify, align 4
  %rem = urem i32 %79, 1000000
  store i32 %rem, ptr %passkey_notify, align 4
  %passkey_entered = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 30
  %80 = ptrtoint ptr %passkey_entered to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %passkey_entered, align 8
  %passkey_round = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 24
  %81 = ptrtoint ptr %passkey_round to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %passkey_round, align 1
  %dst = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %type, align 1
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dst_type, align 2
  %86 = load i32, ptr %passkey_notify, align 4
  %87 = load i8, ptr %passkey_entered, align 8
  %call122 = call i32 @mgmt_user_passkey_notify(ptr noundef %9, ptr noundef %dst, i8 noundef zeroext %83, i8 noundef zeroext %85, i32 noundef %86, i8 noundef zeroext %87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.then118.cleanup180_crit_edge

if.then118.cleanup180_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end125:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd) #14
  %call126 = call fastcc zeroext i8 @sc_passkey_round(ptr noundef %7, i8 noundef zeroext 12)
  br label %cleanup180

if.then133:                                       ; preds = %if.end113
  %88 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool135.not = icmp eq i8 %89, 0
  br i1 %tobool135.not, label %if.then133.if.end138_crit_edge, label %if.then136

if.then133.if.end138_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.then136:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 5
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.then133.if.end138_crit_edge
  %allow_cmd139 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %allow_cmd139) #14
  br label %cleanup180

if.end140:                                        ; preds = %if.end113
  %90 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool142.not = icmp eq i8 %91, 0
  br i1 %tobool142.not, label %if.end140.if.end145_crit_edge, label %if.then143

if.end140.if.end145_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd144 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd144) #14
  %92 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %92)
  %.pr = load i8, ptr %method, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end140.if.end145_crit_edge
  %93 = phi i8 [ %.pr, %if.then143 ], [ %76, %if.end140.if.end145_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %cmp148 = icmp eq i8 %93, 2
  br i1 %cmp148, label %if.then150, label %if.end160

if.then150:                                       ; preds = %if.end145
  %dst151 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %type152 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %94 = ptrtoint ptr %type152 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %type152, align 1
  %dst_type153 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 3
  %96 = ptrtoint ptr %dst_type153 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %dst_type153, align 2
  %call154 = call i32 @mgmt_user_passkey_request(ptr noundef %9, ptr noundef %dst151, i8 noundef zeroext %95, i8 noundef zeroext %97) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.then150.cleanup180_crit_edge

if.then150.cleanup180_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end157:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  %allow_cmd158 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %allow_cmd158) #14
  call void @_set_bit(i32 noundef 8, ptr noundef %flags) #14
  br label %cleanup180

if.end160:                                        ; preds = %if.end145
  %98 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %conn, align 4
  %out162 = getelementptr inbounds %struct.hci_conn, ptr %99, i32 0, i32 16
  %100 = ptrtoint ptr %out162 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %out162, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool163.not = icmp eq i8 %101, 0
  br i1 %tobool163.not, label %if.end165, label %if.end160.cleanup180_crit_edge

if.end160.cleanup180_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end165:                                        ; preds = %if.end160
  %tfm_cmac166 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 29
  %102 = ptrtoint ptr %tfm_cmac166 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tfm_cmac166, align 4
  %local_pk167 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 25
  %prnd171 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i274) #14
  %104 = ptrtoint ptr %m.i274 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %m.i274, align 1
  %add.ptr.i275 = getelementptr inbounds i8, ptr %m.i274, i32 1
  %105 = call ptr @memcpy(ptr %add.ptr.i275, ptr %remote_pk, i32 32)
  %add.ptr4.i276 = getelementptr inbounds i8, ptr %m.i274, i32 33
  %106 = call ptr @memcpy(ptr %add.ptr4.i276, ptr %local_pk167, i32 32)
  %call.i277 = call fastcc i32 @aes_cmac(ptr noundef %103, ptr noundef %prnd171, ptr noundef nonnull %m.i274, i32 noundef 65, ptr noundef nonnull %cfm) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i274) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool176.not = icmp eq i32 %call.i277, 0
  br i1 %tobool176.not, label %if.end178, label %if.end165.cleanup180_crit_edge

if.end165.cleanup180_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup180

if.end178:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @smp_send_cmd(ptr noundef %conn, i8 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %cfm)
  %allow_cmd179 = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %allow_cmd179) #14
  br label %cleanup180

cleanup180:                                       ; preds = %if.end178, %if.end165.cleanup180_crit_edge, %if.end160.cleanup180_crit_edge, %if.end157, %if.then150.cleanup180_crit_edge, %if.end138, %if.end125, %if.then118.cleanup180_crit_edge, %if.end63.cleanup180_crit_edge, %lor.lhs.false.cleanup180_crit_edge, %if.then53.cleanup180_crit_edge, %if.then42.cleanup180_crit_edge, %if.end32.cleanup180_crit_edge, %if.then22.cleanup180_crit_edge, %if.then14, %do.end.cleanup180_crit_edge
  %retval.1.shrunk = phi i8 [ %call126, %if.end125 ], [ 0, %if.end138 ], [ 0, %if.end157 ], [ 0, %if.end178 ], [ 8, %if.then14 ], [ 10, %do.end.cleanup180_crit_edge ], [ 8, %if.then22.cleanup180_crit_edge ], [ 4, %if.end32.cleanup180_crit_edge ], [ %call43, %if.then42.cleanup180_crit_edge ], [ 8, %if.end63.cleanup180_crit_edge ], [ 8, %if.then118.cleanup180_crit_edge ], [ 8, %if.then150.cleanup180_crit_edge ], [ 0, %if.end160.cleanup180_crit_edge ], [ 8, %if.end165.cleanup180_crit_edge ], [ 8, %lor.lhs.false.cleanup180_crit_edge ], [ 8, %if.then53.cleanup180_crit_edge ]
  %retval.1 = zext i8 %retval.1.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfm) #14
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_cmd_dhkey_check(ptr noundef %conn, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  %a = alloca [7 x i8], align 1
  %b = alloca [7 x i8], align 1
  %e = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %data3 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %a) #14
  %8 = getelementptr inbounds [7 x i8], ptr %a, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %b) #14
  %9 = getelementptr inbounds [7 x i8], ptr %b, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e) #14
  %10 = call ptr @memset(ptr %e, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_dhkey_check.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_dhkey_check, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_dhkey_check.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %conn) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp = icmp ult i32 %14, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %init_addr = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %a, ptr %init_addr, i32 6)
  %resp_addr = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 8
  %16 = call ptr @memcpy(ptr %b, ptr %resp_addr, i32 6)
  %init_addr_type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %init_addr_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %init_addr_type, align 8
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %8, align 1
  %resp_addr_type = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %resp_addr_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %resp_addr_type, align 1
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %9, align 1
  %out = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 16
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx16 = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 4, i32 1
  %io_cap.sroa.6.0.arrayidx16.sroa_idx = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 4, i32 2
  %io_cap.sroa.7.0.arrayidx16.sroa_idx = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 4, i32 3
  br label %if.end21

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx20 = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 3, i32 1
  %io_cap.sroa.6.0.arrayidx20.sroa_idx = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 3, i32 2
  %io_cap.sroa.7.0.arrayidx20.sroa_idx = getelementptr %struct.smp_chan, ptr %7, i32 0, i32 3, i32 3
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %io_cap.sroa.7.0.in = phi ptr [ %io_cap.sroa.7.0.arrayidx20.sroa_idx, %if.else ], [ %io_cap.sroa.7.0.arrayidx16.sroa_idx, %if.then12 ]
  %io_cap.sroa.6.0.in = phi ptr [ %io_cap.sroa.6.0.arrayidx20.sroa_idx, %if.else ], [ %io_cap.sroa.6.0.arrayidx16.sroa_idx, %if.then12 ]
  %io_cap.sroa.0.0.in = phi ptr [ %arrayidx20, %if.else ], [ %arrayidx16, %if.then12 ]
  %local_addr.0 = phi ptr [ %b, %if.else ], [ %a, %if.then12 ]
  %remote_addr.0 = phi ptr [ %a, %if.else ], [ %b, %if.then12 ]
  %25 = ptrtoint ptr %io_cap.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %25)
  %io_cap.sroa.0.0 = load i8, ptr %io_cap.sroa.0.0.in, align 1
  %26 = ptrtoint ptr %io_cap.sroa.6.0.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %io_cap.sroa.6.0 = load i8, ptr %io_cap.sroa.6.0.in, align 1
  %27 = ptrtoint ptr %io_cap.sroa.7.0.in to i32
  call void @__asan_load1_noabort(i32 %27)
  %io_cap.sroa.7.0 = load i8, ptr %io_cap.sroa.7.0.in, align 1
  %method = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 23
  %28 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %method, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %29, label %if.end21.if.end40_crit_edge [
    i8 2, label %if.end21.if.then29_crit_edge
    i8 5, label %if.end21.if.then29_crit_edge142
    i8 4, label %if.then36
  ]

if.end21.if.then29_crit_edge142:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.end21.if.then29_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then29:                                        ; preds = %if.end21.if.then29_crit_edge, %if.end21.if.then29_crit_edge142
  %passkey_notify = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 29
  %31 = ptrtoint ptr %passkey_notify to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %passkey_notify, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %r.sroa.0.sroa.0.0.extract.shift = and i32 %33, -16777216
  %r.sroa.0.sroa.7.0.extract.shift = and i32 %33, -65536
  %r.sroa.0.sroa.8.0.extract.shift = and i32 %33, -256
  br label %if.end40

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %lr = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10
  %34 = ptrtoint ptr %lr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %r.sroa.0.0.copyload = load i32, ptr %lr, align 2
  %r.sroa.0.sroa.0.0.extract.shift128 = and i32 %r.sroa.0.0.copyload, -16777216
  %r.sroa.0.sroa.7.0.extract.shift130 = and i32 %r.sroa.0.0.copyload, -65536
  %r.sroa.0.sroa.8.0.extract.shift132 = and i32 %r.sroa.0.0.copyload, -256
  %r.sroa.10.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 4
  %35 = ptrtoint ptr %r.sroa.10.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %r.sroa.10.0.copyload = load i8, ptr %r.sroa.10.0.lr.sroa_idx, align 2
  %r.sroa.11.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 5
  %36 = ptrtoint ptr %r.sroa.11.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %r.sroa.11.0.copyload = load i8, ptr %r.sroa.11.0.lr.sroa_idx, align 1
  %r.sroa.12.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 6
  %37 = ptrtoint ptr %r.sroa.12.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %r.sroa.12.0.copyload = load i8, ptr %r.sroa.12.0.lr.sroa_idx, align 2
  %r.sroa.13.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 7
  %38 = ptrtoint ptr %r.sroa.13.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %r.sroa.13.0.copyload = load i8, ptr %r.sroa.13.0.lr.sroa_idx, align 1
  %r.sroa.14.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 8
  %39 = ptrtoint ptr %r.sroa.14.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %r.sroa.14.0.copyload = load i8, ptr %r.sroa.14.0.lr.sroa_idx, align 2
  %r.sroa.15.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 9
  %40 = ptrtoint ptr %r.sroa.15.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %r.sroa.15.0.copyload = load i8, ptr %r.sroa.15.0.lr.sroa_idx, align 1
  %r.sroa.16.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 10
  %41 = ptrtoint ptr %r.sroa.16.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %r.sroa.16.0.copyload = load i8, ptr %r.sroa.16.0.lr.sroa_idx, align 2
  %r.sroa.17.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 11
  %42 = ptrtoint ptr %r.sroa.17.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %r.sroa.17.0.copyload = load i8, ptr %r.sroa.17.0.lr.sroa_idx, align 1
  %r.sroa.18.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 12
  %43 = ptrtoint ptr %r.sroa.18.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %r.sroa.18.0.copyload = load i8, ptr %r.sroa.18.0.lr.sroa_idx, align 2
  %r.sroa.19.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 13
  %44 = ptrtoint ptr %r.sroa.19.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %r.sroa.19.0.copyload = load i8, ptr %r.sroa.19.0.lr.sroa_idx, align 1
  %r.sroa.20.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 14
  %45 = ptrtoint ptr %r.sroa.20.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %r.sroa.20.0.copyload = load i8, ptr %r.sroa.20.0.lr.sroa_idx, align 2
  %r.sroa.21.0.lr.sroa_idx = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 10, i32 15
  %46 = ptrtoint ptr %r.sroa.21.0.lr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %r.sroa.21.0.copyload = load i8, ptr %r.sroa.21.0.lr.sroa_idx, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then29, %if.end21.if.end40_crit_edge
  %r.sroa.0.sroa.0.0 = phi i32 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.0.sroa.0.0.extract.shift128, %if.then36 ], [ %r.sroa.0.sroa.0.0.extract.shift, %if.then29 ]
  %r.sroa.0.sroa.7.0 = phi i32 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.0.sroa.7.0.extract.shift130, %if.then36 ], [ %r.sroa.0.sroa.7.0.extract.shift, %if.then29 ]
  %r.sroa.0.sroa.8.0 = phi i32 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.0.sroa.8.0.extract.shift132, %if.then36 ], [ %r.sroa.0.sroa.8.0.extract.shift, %if.then29 ]
  %r.sroa.0.sroa.9.0 = phi i32 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.0.0.copyload, %if.then36 ], [ %33, %if.then29 ]
  %r.sroa.10.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.10.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.11.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.11.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.12.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.12.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.13.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.13.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.14.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.14.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.15.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.15.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.16.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.16.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.17.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.17.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.18.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.18.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.19.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.19.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.20.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.20.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %r.sroa.21.0 = phi i8 [ 0, %if.end21.if.end40_crit_edge ], [ %r.sroa.21.0.copyload, %if.then36 ], [ 0, %if.then29 ]
  %tfm_cmac = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 29
  %47 = ptrtoint ptr %tfm_cmac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tfm_cmac, align 4
  %mackey = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 28
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 6
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %49 = call ptr @memcpy(ptr %m.i, ptr %local_addr.0, i32 7)
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 7
  %50 = call ptr @memcpy(ptr %add.ptr.i, ptr %remote_addr.0, i32 7)
  %add.ptr5.i = getelementptr inbounds i8, ptr %m.i, i32 14
  %51 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %io_cap.sroa.0.0, ptr %add.ptr5.i, align 1
  %io_cap.sroa.6.0.add.ptr5.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 15
  %52 = ptrtoint ptr %io_cap.sroa.6.0.add.ptr5.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %io_cap.sroa.6.0, ptr %io_cap.sroa.6.0.add.ptr5.i.sroa_idx, align 1
  %io_cap.sroa.7.0.add.ptr5.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 16
  %53 = ptrtoint ptr %io_cap.sroa.7.0.add.ptr5.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %io_cap.sroa.7.0, ptr %io_cap.sroa.7.0.add.ptr5.i.sroa_idx, align 1
  %add.ptr7.i = getelementptr inbounds i8, ptr %m.i, i32 17
  %r.sroa.0.sroa.9.0.insert.ext = and i32 %r.sroa.0.sroa.9.0, 255
  %r.sroa.0.sroa.8.0.insert.ext = and i32 %r.sroa.0.sroa.8.0, 65280
  %r.sroa.0.sroa.7.0.insert.ext = and i32 %r.sroa.0.sroa.7.0, 16711680
  %r.sroa.0.sroa.8.0.insert.insert = or i32 %r.sroa.0.sroa.7.0.insert.ext, %r.sroa.0.sroa.0.0
  %r.sroa.0.sroa.7.0.insert.insert = or i32 %r.sroa.0.sroa.8.0.insert.insert, %r.sroa.0.sroa.8.0.insert.ext
  %r.sroa.0.sroa.0.0.insert.insert = or i32 %r.sroa.0.sroa.7.0.insert.insert, %r.sroa.0.sroa.9.0.insert.ext
  %54 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %r.sroa.0.sroa.0.0.insert.insert, ptr %add.ptr7.i, align 1
  %r.sroa.10.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 21
  %55 = ptrtoint ptr %r.sroa.10.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %r.sroa.10.0, ptr %r.sroa.10.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.11.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 22
  %56 = ptrtoint ptr %r.sroa.11.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %r.sroa.11.0, ptr %r.sroa.11.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.12.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 23
  %57 = ptrtoint ptr %r.sroa.12.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %r.sroa.12.0, ptr %r.sroa.12.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.13.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 24
  %58 = ptrtoint ptr %r.sroa.13.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %r.sroa.13.0, ptr %r.sroa.13.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.14.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 25
  %59 = ptrtoint ptr %r.sroa.14.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %r.sroa.14.0, ptr %r.sroa.14.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.15.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 26
  %60 = ptrtoint ptr %r.sroa.15.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %r.sroa.15.0, ptr %r.sroa.15.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.16.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 27
  %61 = ptrtoint ptr %r.sroa.16.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %r.sroa.16.0, ptr %r.sroa.16.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.17.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 28
  %62 = ptrtoint ptr %r.sroa.17.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %r.sroa.17.0, ptr %r.sroa.17.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.18.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 29
  %63 = ptrtoint ptr %r.sroa.18.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %r.sroa.18.0, ptr %r.sroa.18.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.19.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 30
  %64 = ptrtoint ptr %r.sroa.19.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %r.sroa.19.0, ptr %r.sroa.19.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.20.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 31
  %65 = ptrtoint ptr %r.sroa.20.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %r.sroa.20.0, ptr %r.sroa.20.0.add.ptr7.i.sroa_idx, align 1
  %r.sroa.21.0.add.ptr7.i.sroa_idx = getelementptr inbounds i8, ptr %m.i, i32 32
  %66 = ptrtoint ptr %r.sroa.21.0.add.ptr7.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %r.sroa.21.0, ptr %r.sroa.21.0.add.ptr7.i.sroa_idx, align 1
  %add.ptr9.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %67 = call ptr @memcpy(ptr %add.ptr9.i, ptr %prnd, i32 16)
  %add.ptr11.i = getelementptr inbounds i8, ptr %m.i, i32 49
  %68 = call ptr @memcpy(ptr %add.ptr11.i, ptr %rrnd, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %48, ptr noundef %mackey, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %e) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end50, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %call.i114 = call i32 @__crypto_memneq(ptr noundef %1, ptr noundef nonnull %e, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.not.i.not = icmp eq i32 %call.i114, 0
  br i1 %cmp.not.i.not, label %if.end57, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %69 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool59.not = icmp eq i8 %70, 0
  br i1 %tobool59.not, label %if.then60, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %flags = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 22
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags, align 4
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool62.not = icmp eq i32 %73, 0
  br i1 %tobool62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 9, ptr noundef %flags) #14
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sc_dhkey_check(ptr noundef %7)
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end57.if.end66_crit_edge
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %7, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %flags.i = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 22
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i, align 4
  %80 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  %..i = select i1 %tobool.not.i, i8 3, i8 4
  %pending_sec_level.i = getelementptr inbounds %struct.hci_conn, ptr %77, i32 0, i32 25
  %81 = ptrtoint ptr %pending_sec_level.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pending_sec_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %82)
  %cmp.i = icmp eq i8 %82, 4
  %auth.0.i = zext i1 %cmp.i to i8
  %hdev.i = getelementptr inbounds %struct.hci_conn, ptr %77, i32 0, i32 65
  %83 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hdev.i, align 4
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %77, i32 0, i32 2
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %77, i32 0, i32 3
  %85 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dst_type.i, align 2
  %tk.i = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 8
  %enc_key_size.i = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 11
  %87 = ptrtoint ptr %enc_key_size.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %enc_key_size.i, align 2
  %call6.i = call ptr @hci_add_ltk(ptr noundef %84, ptr noundef %dst.i, i8 noundef zeroext %86, i8 noundef zeroext %..i, i8 noundef zeroext %auth.0.i, ptr noundef %tk.i, i8 noundef zeroext %88, i16 noundef zeroext 0, i64 noundef 0) #14
  %ltk.i = getelementptr inbounds %struct.smp_chan, ptr %7, i32 0, i32 18
  %89 = ptrtoint ptr %ltk.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call6.i, ptr %ltk.i, align 4
  %90 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool68.not = icmp eq i8 %91, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.then69

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %enc_key_size.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %enc_key_size.i, align 2
  call void @hci_le_start_enc(ptr noundef %5, i16 noundef zeroext 0, i64 noundef 0, ptr noundef %tk.i, i8 noundef zeroext %93) #14
  %94 = ptrtoint ptr %enc_key_size.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %enc_key_size.i, align 2
  %enc_key_size72 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 27
  %96 = ptrtoint ptr %enc_key_size72 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %enc_key_size72, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end66.cleanup_crit_edge, %if.then63, %if.end50.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then63 ], [ 10, %do.end.cleanup_crit_edge ], [ 8, %if.end40.cleanup_crit_edge ], [ 11, %if.end50.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %b) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %a) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_cmd_keypress_notify(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_cmd_keypress_notify.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_cmd_keypress_notify, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_cmd_keypress_notify.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @build_bredr_pairing_cmd(ptr nocapture noundef %smp, ptr nocapture noundef %req, ptr noundef writeonly %rsp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev2 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 5
  %9 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dev_flags, align 4
  %11 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %12 = or i8 %spec.select, 2
  %remote_dist.1 = select i1 %tobool6.not, i8 %spec.select, i8 %12
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  %local_dist.1 = select i1 %tobool13.not, i8 %spec.select, i8 %12
  %tobool19.not = icmp eq ptr %rsp, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %req to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %req, align 1
  %auth_req = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %auth_req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %auth_req, align 1
  %init_key_dist = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %init_key_dist to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %local_dist.1, ptr %init_key_dist, align 1
  %resp_key_dist = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 5
  %19 = ptrtoint ptr %resp_key_dist to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %remote_dist.1, ptr %resp_key_dist, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %enc_key_size = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enc_key_size, align 1
  %max_key_size = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %max_key_size to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %max_key_size, align 1
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %25 = call ptr @memset(ptr %rsp, i32 0, i32 6)
  %auth_req23 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 2
  %26 = ptrtoint ptr %auth_req23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %auth_req23, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %enc_key_size25 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %enc_key_size25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enc_key_size25, align 1
  %max_key_size26 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 3
  %31 = ptrtoint ptr %max_key_size26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %max_key_size26, align 1
  %init_key_dist27 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 4
  %32 = ptrtoint ptr %init_key_dist27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %init_key_dist27, align 1
  %and66 = and i8 %33, %remote_dist.1
  %init_key_dist31 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 4
  %34 = ptrtoint ptr %init_key_dist31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %and66, ptr %init_key_dist31, align 1
  %resp_key_dist32 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %req, i32 0, i32 5
  %35 = ptrtoint ptr %resp_key_dist32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %resp_key_dist32, align 1
  %and3567 = and i8 %36, %local_dist.1
  %resp_key_dist37 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %rsp, i32 0, i32 5
  %37 = ptrtoint ptr %resp_key_dist37 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and3567, ptr %resp_key_dist37, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20
  %and66.sink = phi i8 [ %remote_dist.1, %if.then20 ], [ %and66, %if.end22 ]
  %38 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 12
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and66.sink, ptr %38, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_distribute_keys(ptr noundef %smp) unnamed_addr #0 align 64 {
entry:
  %persistent.i = alloca i8, align 1
  %brle.i = alloca [4 x i8], align 4
  %salt.i206 = alloca [16 x i8], align 1
  %tmp2.i = alloca [4 x i8], align 4
  %lebr.i = alloca [4 x i8], align 4
  %salt.i = alloca [16 x i8], align 1
  %tmp1.i = alloca [4 x i8], align 4
  %enc = alloca %struct.smp_cmd_encrypt_info, align 1
  %ident = alloca %struct.smp_cmd_initiator_ident, align 2
  %ediv = alloca i16, align 2
  %rand = alloca i64, align 8
  %addrinfo = alloca %struct.smp_cmd_ident_addr_info, align 1
  %idinfo = alloca %struct.smp_cmd_ident_info, align 1
  %sign = alloca %struct.smp_cmd_sign_info, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_distribute_keys.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_distribute_keys, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_distribute_keys.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %remote_key_dist = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 12
  %8 = ptrtoint ptr %remote_key_dist to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %remote_key_dist, align 1
  %10 = and i8 %9, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.then13, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %conv.i = zext i8 %9 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.if.end15.sink.split.i_crit_edge

if.then8.if.end15.sink.split.i_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %if.then8
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else7.i, label %if.else.i.if.end15.sink.split.i_crit_edge

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i

if.else7.i:                                       ; preds = %if.else.i
  %and10.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else7.i.cleanup_crit_edge, label %if.else7.i.if.end15.sink.split.i_crit_edge

if.else7.i.if.end15.sink.split.i_crit_edge:       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i

if.else7.i.cleanup_crit_edge:                     ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i:                            ; preds = %if.else7.i.if.end15.sink.split.i_crit_edge, %if.else.i.if.end15.sink.split.i_crit_edge, %if.then8.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 6, %if.then8.if.end15.sink.split.i_crit_edge ], [ 8, %if.else.i.if.end15.sink.split.i_crit_edge ], [ 10, %if.else7.i.if.end15.sink.split.i_crit_edge ]
  %allow_cmd6.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %.sink.i, ptr noundef %allow_cmd6.i) #14
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %init_key_dist = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 4, i32 5
  %init_key_dist14 = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 3, i32 5
  br label %if.end24

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %resp_key_dist = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 4, i32 6
  %resp_key_dist19 = getelementptr %struct.smp_chan, ptr %smp, i32 0, i32 3, i32 6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13
  %resp_key_dist19.sink = phi ptr [ %resp_key_dist19, %if.else ], [ %init_key_dist14, %if.then13 ]
  %resp_key_dist.sink244 = phi ptr [ %resp_key_dist, %if.else ], [ %init_key_dist, %if.then13 ]
  %11 = ptrtoint ptr %resp_key_dist19.sink to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resp_key_dist19.sink, align 1
  %13 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %resp_key_dist.sink244, align 1
  %and22199 = and i8 %14, %12
  store i8 %and22199, ptr %resp_key_dist.sink244, align 1
  %flags = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 22
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %if.end24.do.body50_crit_edge, label %if.then27

if.end24.do.body50_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body50

if.then27:                                        ; preds = %if.end24
  %type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %19)
  %cmp = icmp eq i8 %19, -128
  br i1 %cmp, label %land.lhs.true30, label %if.then27.if.end35_crit_edge

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true30:                                  ; preds = %if.then27
  %20 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %resp_key_dist.sink244, align 1
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool33.not = icmp eq i8 %22, 0
  br i1 %tobool33.not, label %land.lhs.true30.if.end35thread-pre-split_crit_edge, label %if.then34

land.lhs.true30.if.end35thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35thread-pre-split

if.then34:                                        ; preds = %land.lhs.true30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lebr.i) #14
  %23 = ptrtoint ptr %lebr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1919051116, ptr %lebr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 16) #17
  %link_key.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 21
  %25 = ptrtoint ptr %link_key.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %link_key.i, align 4
  %tobool.not.i204 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i204, label %if.then34.sc_generate_link_key.exit_crit_edge, label %if.end.i

if.then34.sc_generate_link_key.exit_crit_edge:    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_generate_link_key.exit

if.end.i:                                         ; preds = %if.then34
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i, label %if.else.i205, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %salt.i) #14
  %29 = call ptr @memcpy(ptr %salt.i, ptr @__const.sc_generate_link_key.salt, i32 16)
  %tfm_cmac.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %30 = ptrtoint ptr %tfm_cmac.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm_cmac.i, align 4
  %tk.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call.i.i = call fastcc i32 @aes_cmac(ptr noundef %31, ptr noundef nonnull %salt.i, ptr noundef %tk.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.end27.critedge.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %link_key.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link_key.i, align 4
  tail call void @kfree_sensitive(ptr noundef %33) #14
  %34 = ptrtoint ptr %link_key.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %link_key.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i) #14
  br label %sc_generate_link_key.exit

if.else.i205:                                     ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp1.i) #14
  %35 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 829451636, ptr %tmp1.i, align 4
  %tfm_cmac13.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %36 = ptrtoint ptr %tfm_cmac13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm_cmac13.i, align 4
  %tk14.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call.i62.i = call fastcc i32 @aes_cmac(ptr noundef %37, ptr noundef %tk14.i, ptr noundef nonnull %tmp1.i, i32 noundef 4, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool19.not.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool19.not.i, label %if.end27.critedge60.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else.i205
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %link_key.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link_key.i, align 4
  tail call void @kfree_sensitive(ptr noundef %39) #14
  %40 = ptrtoint ptr %link_key.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %link_key.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1.i) #14
  br label %sc_generate_link_key.exit

if.end27.critedge.i:                              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i) #14
  br label %if.end27.i

if.end27.critedge60.i:                            ; preds = %if.else.i205
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1.i) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.critedge60.i, %if.end27.critedge.i
  %tfm_cmac28.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %41 = ptrtoint ptr %tfm_cmac28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tfm_cmac28.i, align 4
  %43 = ptrtoint ptr %link_key.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link_key.i, align 4
  %call.i63.i = call fastcc i32 @aes_cmac(ptr noundef %42, ptr noundef %44, ptr noundef nonnull %lebr.i, i32 noundef 4, ptr noundef %44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool33.not.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool33.not.i, label %if.end27.i.sc_generate_link_key.exit_crit_edge, label %if.then34.i

if.end27.i.sc_generate_link_key.exit_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_generate_link_key.exit

if.then34.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %link_key.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link_key.i, align 4
  tail call void @kfree_sensitive(ptr noundef %46) #14
  %47 = ptrtoint ptr %link_key.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %link_key.i, align 4
  br label %sc_generate_link_key.exit

sc_generate_link_key.exit:                        ; preds = %if.then34.i, %if.end27.i.sc_generate_link_key.exit_crit_edge, %if.then20.i, %if.then9.i, %if.then34.sc_generate_link_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lebr.i) #14
  br label %if.end35thread-pre-split

if.end35thread-pre-split:                         ; preds = %sc_generate_link_key.exit, %land.lhs.true30.if.end35thread-pre-split_crit_edge
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %type, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %if.then27.if.end35_crit_edge
  %49 = phi i8 [ %.pr, %if.end35thread-pre-split ], [ %19, %if.then27.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp38 = icmp eq i8 %49, 1
  br i1 %cmp38, label %land.lhs.true40, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true40:                                  ; preds = %if.end35
  %50 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %resp_key_dist.sink244, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool43.not = icmp eq i8 %52, 0
  br i1 %tobool43.not, label %land.lhs.true40.if.end45_crit_edge, label %if.then44

land.lhs.true40.if.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then44:                                        ; preds = %land.lhs.true40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brle.i) #14
  %53 = ptrtoint ptr %brle.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1701605986, ptr %brle.i, align 4
  %54 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smp, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %hdev2.i = getelementptr inbounds %struct.hci_conn, ptr %57, i32 0, i32 65
  %58 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hdev2.i, align 4
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %57, i32 0, i32 2
  %call.i = tail call ptr @hci_find_link_key(ptr noundef %59, ptr noundef %dst.i) #14
  %tobool.not.i207 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i207, label %if.then.i, label %if.end.i208

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57, ptr noundef %name.i) #14
  br label %sc_generate_ltk.exit

if.end.i208:                                      ; preds = %if.then44
  %type.i = getelementptr inbounds %struct.link_key, ptr %call.i, i32 0, i32 3
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp.i = icmp eq i8 %61, 3
  br i1 %cmp.i, label %if.then4.i210, label %if.end.i208.if.end5.i_crit_edge

if.end.i208.if.end5.i_crit_edge:                  ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then4.i210:                                    ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i210, %if.end.i208.if.end5.i_crit_edge
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags, align 4
  %64 = and i32 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool8.not.i211 = icmp eq i32 %64, 0
  br i1 %tobool8.not.i211, label %if.else.i216, label %if.then9.i215

if.then9.i215:                                    ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %salt.i206) #14
  %65 = call ptr @memcpy(ptr %salt.i206, ptr @__const.sc_generate_ltk.salt, i32 16)
  %tfm_cmac.i212 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %66 = ptrtoint ptr %tfm_cmac.i212 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tfm_cmac.i212, align 4
  %val.i = getelementptr inbounds %struct.link_key, ptr %call.i, i32 0, i32 4
  %tk.i213 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call.i.i214 = call fastcc i32 @aes_cmac(ptr noundef %67, ptr noundef nonnull %salt.i206, ptr noundef %val.i, i32 noundef 16, ptr noundef %tk.i213) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool14.not.i = icmp eq i32 %call.i.i214, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i206) #14
  br i1 %tobool14.not.i, label %if.then9.i215.if.end30.i_crit_edge, label %if.then9.i215.sc_generate_ltk.exit_crit_edge

if.then9.i215.sc_generate_ltk.exit_crit_edge:     ; preds = %if.then9.i215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_generate_ltk.exit

if.then9.i215.if.end30.i_crit_edge:               ; preds = %if.then9.i215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.else.i216:                                     ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2.i) #14
  %68 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 846228852, ptr %tmp2.i, align 4
  %tfm_cmac17.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %69 = ptrtoint ptr %tfm_cmac17.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tfm_cmac17.i, align 4
  %val18.i = getelementptr inbounds %struct.link_key, ptr %call.i, i32 0, i32 4
  %tk21.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call.i64.i = call fastcc i32 @aes_cmac(ptr noundef %70, ptr noundef %val18.i, ptr noundef nonnull %tmp2.i, i32 noundef 4, ptr noundef %tk21.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool24.not.i = icmp eq i32 %call.i64.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2.i) #14
  br i1 %tobool24.not.i, label %if.else.i216.if.end30.i_crit_edge, label %if.else.i216.sc_generate_ltk.exit_crit_edge

if.else.i216.sc_generate_ltk.exit_crit_edge:      ; preds = %if.else.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_generate_ltk.exit

if.else.i216.if.end30.i_crit_edge:                ; preds = %if.else.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i216.if.end30.i_crit_edge, %if.then9.i215.if.end30.i_crit_edge
  %tfm_cmac31.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 29
  %71 = ptrtoint ptr %tfm_cmac31.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tfm_cmac31.i, align 4
  %tk32.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %call.i65.i = call fastcc i32 @aes_cmac(ptr noundef %72, ptr noundef %tk32.i, ptr noundef nonnull %brle.i, i32 noundef 4, ptr noundef %tk32.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool38.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end30.i.sc_generate_ltk.exit_crit_edge

if.end30.i.sc_generate_ltk.exit_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sc_generate_ltk.exit

if.end40.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %smp, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags, align 4
  %79 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i = icmp eq i32 %79, 0
  %..i.i = select i1 %tobool.not.i.i, i8 3, i8 4
  %pending_sec_level.i.i = getelementptr inbounds %struct.hci_conn, ptr %76, i32 0, i32 25
  %80 = ptrtoint ptr %pending_sec_level.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pending_sec_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %81)
  %cmp.i.i = icmp eq i8 %81, 4
  %auth.0.i.i = zext i1 %cmp.i.i to i8
  %hdev.i.i = getelementptr inbounds %struct.hci_conn, ptr %76, i32 0, i32 65
  %82 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hdev.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.hci_conn, ptr %76, i32 0, i32 2
  %dst_type.i.i = getelementptr inbounds %struct.hci_conn, ptr %76, i32 0, i32 3
  %84 = ptrtoint ptr %dst_type.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dst_type.i.i, align 2
  %enc_key_size.i.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 11
  %86 = ptrtoint ptr %enc_key_size.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %enc_key_size.i.i, align 2
  %call6.i.i = tail call ptr @hci_add_ltk(ptr noundef %83, ptr noundef %dst.i.i, i8 noundef zeroext %85, i8 noundef zeroext %..i.i, i8 noundef zeroext %auth.0.i.i, ptr noundef %tk32.i, i8 noundef zeroext %87, i16 noundef zeroext 0, i64 noundef 0) #14
  %ltk.i.i = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 18
  %88 = ptrtoint ptr %ltk.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call6.i.i, ptr %ltk.i.i, align 4
  br label %sc_generate_ltk.exit

sc_generate_ltk.exit:                             ; preds = %if.end40.i, %if.end30.i.sc_generate_ltk.exit_crit_edge, %if.else.i216.sc_generate_ltk.exit_crit_edge, %if.then9.i215.sc_generate_ltk.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brle.i) #14
  br label %if.end45

if.end45:                                         ; preds = %sc_generate_ltk.exit, %land.lhs.true40.if.end45_crit_edge, %if.end35.if.end45_crit_edge
  %89 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %resp_key_dist.sink244, align 1
  %91 = and i8 %90, -10
  store i8 %91, ptr %resp_key_dist.sink244, align 1
  br label %do.body50

do.body50:                                        ; preds = %if.end45, %if.end24.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_distribute_keys.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_distribute_keys, %if.then62)) #14
          to label %do.end68 [label %if.then62], !srcloc !275

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #16
  %name63 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  %92 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %resp_key_dist.sink244, align 1
  %conv65 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_distribute_keys.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.56, ptr noundef %name63, i32 noundef %conv65) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  %94 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %resp_key_dist.sink244, align 1
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool71.not = icmp eq i8 %96, 0
  br i1 %tobool71.not, label %do.end68.if.end95_crit_edge, label %if.then72

do.end68.if.end95_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then72:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enc) #14
  %97 = call ptr @memset(ptr %enc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ident) #14
  %98 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %ident, align 2, !annotation !280
  %99 = getelementptr inbounds %struct.smp_cmd_initiator_ident, ptr %ident, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 -1, ptr %99, align 2, !annotation !280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ediv) #14
  %101 = ptrtoint ptr %ediv to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %ediv, align 2, !annotation !280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #14
  %102 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 -1, ptr %rand, align 8, !annotation !280
  %enc_key_size = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 11
  %103 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %enc_key_size, align 2
  %conv75 = zext i8 %104 to i32
  call void @get_random_bytes(ptr noundef nonnull %enc, i32 noundef %conv75) #14
  %105 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %enc_key_size, align 2
  %conv79 = zext i8 %106 to i32
  %add.ptr = getelementptr i8, ptr %enc, i32 %conv79
  %sub = sub nsw i32 16, %conv79
  %107 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  call void @get_random_bytes(ptr noundef nonnull %ediv, i32 noundef 2) #14
  call void @get_random_bytes(ptr noundef nonnull %rand, i32 noundef 8) #14
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 6, i16 noundef zeroext 16, ptr noundef nonnull %enc)
  %sec_level = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 24
  %108 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sec_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %109)
  %cmp83 = icmp eq i8 %109, 3
  %conv85 = zext i1 %cmp83 to i8
  %dst = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 3
  %110 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dst_type, align 2
  %112 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %enc_key_size, align 2
  %114 = ptrtoint ptr %ediv to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ediv, align 2
  %116 = ptrtoint ptr %rand to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %rand, align 8
  %call89 = call ptr @hci_add_ltk(ptr noundef %5, ptr noundef %dst, i8 noundef zeroext %111, i8 noundef zeroext 2, i8 noundef zeroext %conv85, ptr noundef nonnull %enc, i8 noundef zeroext %113, i16 noundef zeroext %115, i64 noundef %117) #14
  %responder_ltk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 19
  %118 = ptrtoint ptr %responder_ltk to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call89, ptr %responder_ltk, align 4
  %119 = ptrtoint ptr %ediv to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %ediv, align 2
  %121 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %ident, align 2
  %122 = ptrtoint ptr %rand to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %rand, align 8
  %124 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 %123, ptr %99, align 2
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 7, i16 noundef zeroext 10, ptr noundef nonnull %ident)
  %125 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %resp_key_dist.sink244, align 1
  %127 = and i8 %126, -2
  store i8 %127, ptr %resp_key_dist.sink244, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ediv) #14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ident) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enc) #14
  br label %if.end95

if.end95:                                         ; preds = %if.then72, %do.end68.if.end95_crit_edge
  %128 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %resp_key_dist.sink244, align 1
  %130 = and i8 %129, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool98.not = icmp eq i8 %130, 0
  br i1 %tobool98.not, label %if.end95.if.end106_crit_edge, label %if.then99

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %addrinfo) #14
  %131 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, ptr %addrinfo, i32 0, i32 1
  %132 = call ptr @memset(ptr %addrinfo, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idinfo) #14
  %irk101 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 220
  %133 = call ptr @memcpy(ptr %idinfo, ptr %irk101, i32 16)
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 8, i16 noundef zeroext 16, ptr noundef nonnull %idinfo)
  %src = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 4
  %134 = call ptr @memcpy(ptr %131, ptr %src, i32 6)
  %src_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 5
  %135 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %src_type, align 1
  %137 = ptrtoint ptr %addrinfo to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %addrinfo, align 1
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 9, i16 noundef zeroext 7, ptr noundef nonnull %addrinfo)
  %138 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %resp_key_dist.sink244, align 1
  %140 = and i8 %139, -3
  store i8 %140, ptr %resp_key_dist.sink244, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idinfo) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %addrinfo) #14
  br label %if.end106

if.end106:                                        ; preds = %if.then99, %if.end95.if.end106_crit_edge
  %141 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %resp_key_dist.sink244, align 1
  %143 = and i8 %142, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool109.not = icmp eq i8 %143, 0
  br i1 %tobool109.not, label %if.end106.if.end132_crit_edge, label %if.then110

if.end106.if.end132_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132

if.then110:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sign) #14
  %144 = call ptr @memset(ptr %sign, i32 255, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %sign, i32 noundef 16) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %145 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %145, i32 noundef 3520, i32 noundef 24) #17
  %tobool114.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool114.not, label %if.then110.if.end128_crit_edge, label %if.then115

if.then110.if.end128_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then115:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  %sec_level116 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 24
  %146 = ptrtoint ptr %sec_level116 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sec_level116, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %147)
  %cmp118 = icmp ugt i8 %147, 2
  %spec.select = select i1 %cmp118, i8 2, i8 0
  %148 = getelementptr inbounds %struct.smp_csrk, ptr %call7.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %spec.select, ptr %148, align 1
  %val = getelementptr inbounds %struct.smp_csrk, ptr %call7.i.i, i32 0, i32 3
  %150 = call ptr @memcpy(ptr %val, ptr %sign, i32 16)
  br label %if.end128

if.end128:                                        ; preds = %if.then115, %if.then110.if.end128_crit_edge
  %responder_csrk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 17
  %151 = ptrtoint ptr %responder_csrk to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call7.i.i, ptr %responder_csrk, align 4
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 10, i16 noundef zeroext 16, ptr noundef nonnull %sign)
  %152 = ptrtoint ptr %resp_key_dist.sink244 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %resp_key_dist.sink244, align 1
  %154 = and i8 %153, -5
  store i8 %154, ptr %resp_key_dist.sink244, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sign) #14
  br label %if.end132

if.end132:                                        ; preds = %if.end128, %if.end106.if.end132_crit_edge
  %remote_key_dist133 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 12
  %155 = ptrtoint ptr %remote_key_dist133 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %remote_key_dist133, align 1
  %157 = and i8 %156, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool136.not = icmp eq i8 %157, 0
  br i1 %tobool136.not, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.end132
  %conv.i218 = zext i8 %156 to i32
  %and.i219 = and i32 %conv.i218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i220 = icmp eq i32 %and.i219, 0
  br i1 %tobool.not.i220, label %if.else.i223, label %if.then137.if.end15.sink.split.i229_crit_edge

if.then137.if.end15.sink.split.i229_crit_edge:    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i229

if.else.i223:                                     ; preds = %if.then137
  %and3.i221 = and i32 %conv.i218, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i221)
  %tobool4.not.i222 = icmp eq i32 %and3.i221, 0
  br i1 %tobool4.not.i222, label %if.else7.i226, label %if.else.i223.if.end15.sink.split.i229_crit_edge

if.else.i223.if.end15.sink.split.i229_crit_edge:  ; preds = %if.else.i223
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i229

if.else7.i226:                                    ; preds = %if.else.i223
  %and10.i224 = and i32 %conv.i218, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i224)
  %tobool11.not.i225 = icmp eq i32 %and10.i224, 0
  br i1 %tobool11.not.i225, label %if.else7.i226.cleanup_crit_edge, label %if.else7.i226.if.end15.sink.split.i229_crit_edge

if.else7.i226.if.end15.sink.split.i229_crit_edge: ; preds = %if.else7.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i229

if.else7.i226.cleanup_crit_edge:                  ; preds = %if.else7.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i229:                         ; preds = %if.else7.i226.if.end15.sink.split.i229_crit_edge, %if.else.i223.if.end15.sink.split.i229_crit_edge, %if.then137.if.end15.sink.split.i229_crit_edge
  %.sink.i227 = phi i32 [ 6, %if.then137.if.end15.sink.split.i229_crit_edge ], [ 8, %if.else.i223.if.end15.sink.split.i229_crit_edge ], [ 10, %if.else7.i226.if.end15.sink.split.i229_crit_edge ]
  %allow_cmd6.i228 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 2
  call void @_set_bit(i32 noundef %.sink.i227, ptr noundef %allow_cmd6.i228) #14
  br label %cleanup

if.end138:                                        ; preds = %if.end132
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #14
  %smp.i = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 17
  %158 = ptrtoint ptr %smp.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %smp.i, align 4
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %159, i32 0, i32 84
  %160 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data.i, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %hdev3.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 65
  %164 = ptrtoint ptr %hdev3.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hdev3.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %persistent.i) #14
  %type.i231 = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 14
  %166 = ptrtoint ptr %type.i231 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %type.i231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %167)
  %cmp.i232 = icmp eq i8 %167, 1
  br i1 %cmp.i232, label %if.then.i233, label %if.else10.i

if.then.i233:                                     ; preds = %if.end138
  %key_type.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 22
  %168 = ptrtoint ptr %key_type.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %key_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %169)
  %cmp7.i = icmp eq i8 %169, 3
  br i1 %cmp7.i, label %if.then9.i234, label %if.else.i236

if.then9.i234:                                    ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %persistent.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %persistent.i, align 1
  br label %if.end19.i

if.else.i236:                                     ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i235 = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 47
  %171 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %flags.i235, align 4
  %173 = lshr i32 %172, 11
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  %177 = ptrtoint ptr %persistent.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %persistent.i, align 1
  br label %if.end19.i

if.else10.i:                                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  %auth_req.i = getelementptr %struct.smp_chan, ptr %161, i32 0, i32 3, i32 3
  %178 = ptrtoint ptr %auth_req.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %auth_req.i, align 1
  %auth_req12.i = getelementptr %struct.smp_chan, ptr %161, i32 0, i32 4, i32 3
  %180 = ptrtoint ptr %auth_req12.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %auth_req12.i, align 1
  %and176.i = and i8 %179, 1
  %182 = and i8 %and176.i, %181
  %183 = ptrtoint ptr %persistent.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %persistent.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else10.i, %if.else.i236, %if.then9.i234
  %remote_irk.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 20
  %184 = ptrtoint ptr %remote_irk.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %remote_irk.i, align 4
  %tobool20.not.i = icmp eq ptr %185, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then21.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then21.i:                                      ; preds = %if.end19.i
  %186 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool23.i = icmp ne i8 %187, 0
  call void @mgmt_new_irk(ptr noundef %165, ptr noundef nonnull %185, i1 noundef zeroext %tobool23.i) #14
  %188 = ptrtoint ptr %type.i231 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %type.i231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %189)
  %cmp26.i = icmp eq i8 %189, -128
  br i1 %cmp26.i, label %if.then28.i, label %if.then21.i.if.end33.i_crit_edge

if.then21.i.if.end33.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst.i237 = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %190 = ptrtoint ptr %remote_irk.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %remote_irk.i, align 4
  %bdaddr.i = getelementptr inbounds %struct.smp_irk, ptr %191, i32 0, i32 3
  %192 = call ptr @memcpy(ptr %dst.i237, ptr %bdaddr.i, i32 6)
  %193 = load ptr, ptr %remote_irk.i, align 4
  %addr_type.i = getelementptr inbounds %struct.smp_irk, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %addr_type.i, align 4
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 3
  %196 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %dst_type.i, align 2
  %workqueue.i = getelementptr inbounds %struct.hci_dev, ptr %165, i32 0, i32 138
  %197 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %workqueue.i, align 4
  %id_addr_update_work.i = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 15
  %call.i.i238 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %198, ptr noundef %id_addr_update_work.i) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.then21.i.if.end33.i_crit_edge, %if.end19.i.if.end33.i_crit_edge
  %csrk.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 16
  %199 = ptrtoint ptr %csrk.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %csrk.i, align 4
  %tobool34.not.i = icmp eq ptr %200, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end43.i_crit_edge, label %if.then35.i

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst_type36.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 3
  %201 = ptrtoint ptr %dst_type36.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %dst_type36.i, align 2
  %bdaddr_type.i = getelementptr inbounds %struct.smp_csrk, ptr %200, i32 0, i32 1
  %203 = ptrtoint ptr %bdaddr_type.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %bdaddr_type.i, align 1
  %204 = ptrtoint ptr %csrk.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %csrk.i, align 4
  %dst40.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %206 = call ptr @memcpy(ptr %205, ptr %dst40.i, i32 6)
  %207 = load ptr, ptr %csrk.i, align 4
  %208 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool42.i = icmp ne i8 %209, 0
  call void @mgmt_new_csrk(ptr noundef %165, ptr noundef %207, i1 noundef zeroext %tobool42.i) #14
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end43.i_crit_edge
  %responder_csrk.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 17
  %210 = ptrtoint ptr %responder_csrk.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %responder_csrk.i, align 4
  %tobool44.not.i = icmp eq ptr %211, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end54.i_crit_edge, label %if.then45.i

if.end43.i.if.end54.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst_type46.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 3
  %212 = ptrtoint ptr %dst_type46.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %dst_type46.i, align 2
  %bdaddr_type48.i = getelementptr inbounds %struct.smp_csrk, ptr %211, i32 0, i32 1
  %214 = ptrtoint ptr %bdaddr_type48.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %bdaddr_type48.i, align 1
  %215 = ptrtoint ptr %responder_csrk.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %responder_csrk.i, align 4
  %dst51.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %217 = call ptr @memcpy(ptr %216, ptr %dst51.i, i32 6)
  %218 = load ptr, ptr %responder_csrk.i, align 4
  %219 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool53.i = icmp ne i8 %220, 0
  call void @mgmt_new_csrk(ptr noundef %165, ptr noundef %218, i1 noundef zeroext %tobool53.i) #14
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end54.i_crit_edge
  %ltk.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 18
  %221 = ptrtoint ptr %ltk.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ltk.i, align 4
  %tobool55.not.i = icmp eq ptr %222, null
  br i1 %tobool55.not.i, label %if.end54.i.if.end65.i_crit_edge, label %if.then56.i

if.end54.i.if.end65.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

if.then56.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst_type57.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 3
  %223 = ptrtoint ptr %dst_type57.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %dst_type57.i, align 2
  %bdaddr_type59.i = getelementptr inbounds %struct.smp_ltk, ptr %222, i32 0, i32 3
  %225 = ptrtoint ptr %bdaddr_type59.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %bdaddr_type59.i, align 2
  %226 = ptrtoint ptr %ltk.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ltk.i, align 4
  %bdaddr61.i = getelementptr inbounds %struct.smp_ltk, ptr %227, i32 0, i32 2
  %dst62.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %228 = call ptr @memcpy(ptr %bdaddr61.i, ptr %dst62.i, i32 6)
  %229 = load ptr, ptr %ltk.i, align 4
  %230 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool64.i = icmp ne i8 %231, 0
  call void @mgmt_new_ltk(ptr noundef %165, ptr noundef %229, i1 noundef zeroext %tobool64.i) #14
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then56.i, %if.end54.i.if.end65.i_crit_edge
  %responder_ltk.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 19
  %232 = ptrtoint ptr %responder_ltk.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %responder_ltk.i, align 4
  %tobool66.not.i = icmp eq ptr %233, null
  br i1 %tobool66.not.i, label %if.end65.i.if.end76.i_crit_edge, label %if.then67.i

if.end65.i.if.end76.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76.i

if.then67.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst_type68.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 3
  %234 = ptrtoint ptr %dst_type68.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %dst_type68.i, align 2
  %bdaddr_type70.i = getelementptr inbounds %struct.smp_ltk, ptr %233, i32 0, i32 3
  %236 = ptrtoint ptr %bdaddr_type70.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %bdaddr_type70.i, align 2
  %237 = ptrtoint ptr %responder_ltk.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %responder_ltk.i, align 4
  %bdaddr72.i = getelementptr inbounds %struct.smp_ltk, ptr %238, i32 0, i32 2
  %dst73.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %239 = call ptr @memcpy(ptr %bdaddr72.i, ptr %dst73.i, i32 6)
  %240 = load ptr, ptr %responder_ltk.i, align 4
  %241 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool75.i = icmp ne i8 %242, 0
  call void @mgmt_new_ltk(ptr noundef %165, ptr noundef %240, i1 noundef zeroext %tobool75.i) #14
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then67.i, %if.end65.i.if.end76.i_crit_edge
  %link_key.i239 = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 21
  %243 = ptrtoint ptr %link_key.i239 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %link_key.i239, align 4
  %tobool77.not.i = icmp eq ptr %244, null
  br i1 %tobool77.not.i, label %if.end76.i.smp_notify_keys.exit_crit_edge, label %if.then78.i

if.end76.i.smp_notify_keys.exit_crit_edge:        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_notify_keys.exit

if.then78.i:                                      ; preds = %if.end76.i
  %flags80.i = getelementptr inbounds %struct.smp_chan, ptr %161, i32 0, i32 22
  %245 = ptrtoint ptr %flags80.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %flags80.i, align 4
  %247 = and i32 %246, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool82.not.i = icmp eq i32 %247, 0
  br i1 %tobool82.not.i, label %if.else84.i, label %if.then78.i.if.end91.i_crit_edge

if.then78.i.if.end91.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91.i

if.else84.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  %sec_level.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 24
  %248 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %sec_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %249)
  %cmp86.i = icmp eq i8 %249, 4
  %..i = select i1 %cmp86.i, i8 8, i8 7
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else84.i, %if.then78.i.if.end91.i_crit_edge
  %type79.0.i = phi i8 [ 3, %if.then78.i.if.end91.i_crit_edge ], [ %..i, %if.else84.i ]
  %250 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %161, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %dst94.i = getelementptr inbounds %struct.hci_conn, ptr %163, i32 0, i32 2
  %call96.i = call ptr @hci_add_link_key(ptr noundef %165, ptr noundef %253, ptr noundef %dst94.i, ptr noundef nonnull %244, i8 noundef zeroext %type79.0.i, i8 noundef zeroext 0, ptr noundef nonnull %persistent.i) #14
  %tobool97.not.i = icmp eq ptr %call96.i, null
  br i1 %tobool97.not.i, label %if.end91.i.smp_notify_keys.exit_crit_edge, label %if.then98.i

if.end91.i.smp_notify_keys.exit_crit_edge:        ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_notify_keys.exit

if.then98.i:                                      ; preds = %if.end91.i
  %254 = ptrtoint ptr %persistent.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %persistent.i, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool99.i = icmp ne i8 %255, 0
  call void @mgmt_new_link_key(ptr noundef %165, ptr noundef nonnull %call96.i, i1 noundef zeroext %tobool99.i) #14
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %165, i32 0, i32 206
  %256 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load volatile i32, ptr %dev_flags.i, align 4
  %258 = and i32 %257, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool101.not.i = icmp eq i32 %258, 0
  br i1 %tobool101.not.i, label %land.lhs.true.i, label %if.then98.i.smp_notify_keys.exit_crit_edge

if.then98.i.smp_notify_keys.exit_crit_edge:       ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_notify_keys.exit

land.lhs.true.i:                                  ; preds = %if.then98.i
  %type102.i = getelementptr inbounds %struct.link_key, ptr %call96.i, i32 0, i32 3
  %259 = ptrtoint ptr %type102.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %type102.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %260)
  %cmp104.i = icmp eq i8 %260, 3
  br i1 %cmp104.i, label %if.then106.i, label %land.lhs.true.i.smp_notify_keys.exit_crit_edge

land.lhs.true.i.smp_notify_keys.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_notify_keys.exit

if.then106.i:                                     ; preds = %land.lhs.true.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call96.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then106.i.list_del_rcu.exit.i_crit_edge

if.then106.i.list_del_rcu.exit.i_crit_edge:       ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call96.i, i32 0, i32 1
  %261 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %prev.i.i.i, align 4
  %263 = ptrtoint ptr %call96.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %call96.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %262, ptr %prev1.i.i.i.i, align 4
  %266 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %264, ptr %262, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then106.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call96.i, i32 0, i32 1
  %267 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.link_key, ptr %call96.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %smp_notify_keys.exit

smp_notify_keys.exit:                             ; preds = %list_del_rcu.exit.i, %land.lhs.true.i.smp_notify_keys.exit_crit_edge, %if.then98.i.smp_notify_keys.exit_crit_edge, %if.end91.i.smp_notify_keys.exit_crit_edge, %if.end76.i.smp_notify_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %persistent.i) #14
  call fastcc void @smp_chan_destroy(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %smp_notify_keys.exit, %if.end15.sink.split.i229, %if.else7.i226.cleanup_crit_edge, %if.end15.sink.split.i, %if.else7.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tk_request(ptr nocapture noundef readonly %conn, i8 noundef zeroext %auth, i8 noundef zeroext %local_io, i8 noundef zeroext %remote_io) unnamed_addr #0 align 64 {
entry:
  %passkey = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %smp = getelementptr inbounds %struct.l2cap_conn, ptr %conn, i32 0, i32 17
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %passkey) #14
  %6 = ptrtoint ptr %passkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %passkey, align 4
  %tk = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 8
  %7 = call ptr @memset(ptr %tk, i32 0, i32 16)
  %flags = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tk_request.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tk_request, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %conv = zext i8 %auth to i32
  %conv6 = zext i8 %local_io to i32
  %conv7 = zext i8 %remote_io to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tk_request.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = and i8 %auth, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %do.end.if.end13_crit_edge, label %if.else

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %local_io)
  %cmp.i = icmp ugt i8 %local_io, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %remote_io)
  %cmp3.i = icmp ugt i8 %remote_io, 4
  %or.cond = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond, label %if.else.if.end13_crit_edge, label %if.end.i

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i8 %local_io to i32
  %conv2.i = zext i8 %remote_io to i32
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %gen_method.sc_method.i = select i1 %tobool.not.i, ptr @gen_method, ptr @sc_method
  %arrayidx12.i = getelementptr [5 x [5 x i8]], ptr %gen_method.sc_method.i, i32 0, i32 %conv2.i, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.else.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %retval.0.i6.sink = phi i8 [ 1, %do.end.if.end13_crit_edge ], [ 1, %if.else.if.end13_crit_edge ], [ %15, %if.end.i ]
  %method12 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 23
  %16 = ptrtoint ptr %method12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %retval.0.i6.sink, ptr %method12, align 4
  %method14 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i6.sink)
  %cmp = icmp eq i8 %retval.0.i6.sink, 1
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end33thread-pre-split_crit_edge

if.end13.if.end33thread-pre-split_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33thread-pre-split

land.lhs.true:                                    ; preds = %if.end13
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %method14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %method14, align 4
  br label %if.end33thread-pre-split

if.end22:                                         ; preds = %land.lhs.true
  %21 = ptrtoint ptr %method14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %method14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp25 = icmp eq i8 %.pr, 1
  br i1 %cmp25, label %land.lhs.true27, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true27:                                  ; preds = %if.end22
  %io_capability = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %io_capability, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp29 = icmp eq i8 %23, 3
  br i1 %cmp29, label %if.end33.thread, label %land.lhs.true27.if.end33thread-pre-split_crit_edge

land.lhs.true27.if.end33thread-pre-split_crit_edge: ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33thread-pre-split

if.end33.thread:                                  ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %method14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %method14, align 4
  br label %if.then38

if.end33thread-pre-split:                         ; preds = %land.lhs.true27.if.end33thread-pre-split_crit_edge, %if.then20, %if.end13.if.end33thread-pre-split_crit_edge
  %25 = ptrtoint ptr %method14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr9 = load i8, ptr %method14, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33thread-pre-split, %if.end22.if.end33_crit_edge
  %26 = phi i8 [ %.pr9, %if.end33thread-pre-split ], [ %.pr, %if.end22.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp36 = icmp eq i8 %26, 0
  br i1 %cmp36, label %if.end33.if.then38_crit_edge, label %if.end45

if.end33.if.then38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.then38:                                        ; preds = %if.end33.if.then38_crit_edge, %if.end33.thread
  %hdev39 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %27 = ptrtoint ptr %hdev39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev39, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %type = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 1
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dst_type, align 2
  %33 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %passkey, align 4
  %call40 = tail call i32 @mgmt_user_confirm_request(ptr noundef %28, ptr noundef %dst, i8 noundef zeroext %30, i8 noundef zeroext %32, i32 noundef %34, i8 noundef zeroext 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not = icmp eq i32 %37, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp53.not = icmp eq i8 %26, 1
  br i1 %cmp53.not, label %if.end50.if.end63_crit_edge, label %if.then55

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then55:                                        ; preds = %if.end50
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #14
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 25
  %38 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp58 = icmp ult i8 %39, 3
  br i1 %cmp58, label %if.then60, label %if.then55.if.end63_crit_edge

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %pending_sec_level, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.then55.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %41 = ptrtoint ptr %method14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %method14, align 4
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %42, label %if.end63.if.end107_crit_edge [
    i8 -1, label %if.then68
    i8 3, label %if.end63.if.then82_crit_edge
  ]

if.end63.if.then82_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then82

if.end63.if.end107_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then68:                                        ; preds = %if.end63
  %role = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp70 = icmp eq i8 %45, 0
  br i1 %cmp70, label %if.end77.thread, label %if.end107.thread

if.end77.thread:                                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %method14 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %method14, align 4
  br label %if.then82

if.end107.thread:                                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %method14 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %method14, align 4
  br label %if.then112

if.then82:                                        ; preds = %if.end77.thread, %if.end63.if.then82_crit_edge
  %48 = call ptr @memset(ptr %tk, i32 0, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %passkey, i32 noundef 4) #14
  %49 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %passkey, align 4
  %rem = urem i32 %50, 1000000
  store i32 %rem, ptr %passkey, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %rem) #14
  %52 = ptrtoint ptr %tk to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %tk, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tk_request.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tk_request, %if.then99)) #14
          to label %do.end105 [label %if.then99], !srcloc !275

if.then99:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  %hdev100 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %53 = ptrtoint ptr %hdev100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev100, align 4
  %name101 = getelementptr inbounds %struct.hci_dev, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %passkey, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tk_request.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.10, ptr noundef %name101, i32 noundef %56) #14
  br label %do.end105

do.end105:                                        ; preds = %if.then99, %if.then82
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  %57 = ptrtoint ptr %method14 to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr15 = load i8, ptr %method14, align 4
  br label %if.end107

if.end107:                                        ; preds = %do.end105, %if.end63.if.end107_crit_edge
  %58 = phi i8 [ %.pr15, %do.end105 ], [ %42, %if.end63.if.end107_crit_edge ]
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %58, label %if.else129 [
    i8 2, label %if.end107.if.then112_crit_edge
    i8 1, label %if.then123
  ]

if.end107.if.then112_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then112

if.then112:                                       ; preds = %if.end107.if.then112_crit_edge, %if.end107.thread
  %hdev113 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %60 = ptrtoint ptr %hdev113 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdev113, align 4
  %dst114 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %type115 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %type115 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type115, align 1
  %dst_type116 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %dst_type116 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dst_type116, align 2
  %call117 = call i32 @mgmt_user_passkey_request(ptr noundef %61, ptr noundef %dst114, i8 noundef zeroext %63, i8 noundef zeroext %65) #14
  br label %cleanup

if.then123:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %hdev124 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %66 = ptrtoint ptr %hdev124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hdev124, align 4
  %dst125 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %type126 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %68 = ptrtoint ptr %type126 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type126, align 1
  %dst_type127 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %dst_type127 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dst_type127, align 2
  %72 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %passkey, align 4
  %call128 = call i32 @mgmt_user_confirm_request(ptr noundef %67, ptr noundef %dst125, i8 noundef zeroext %69, i8 noundef zeroext %71, i32 noundef %73, i8 noundef zeroext 1) #14
  br label %cleanup

if.else129:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %hdev130 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %74 = ptrtoint ptr %hdev130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hdev130, align 4
  %dst131 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %type132 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %76 = ptrtoint ptr %type132 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %type132, align 1
  %dst_type133 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %dst_type133 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dst_type133, align 2
  %80 = ptrtoint ptr %passkey to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %passkey, align 4
  %call134 = call i32 @mgmt_user_passkey_notify(ptr noundef %75, ptr noundef %dst131, i8 noundef zeroext %77, i8 noundef zeroext %79, i32 noundef %81, i8 noundef zeroext 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else129, %if.then123, %if.then112, %if.end45.cleanup_crit_edge, %if.end43, %if.then38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call40, %if.then38.cleanup_crit_edge ], [ -22, %if.end45.cleanup_crit_edge ], [ %call117, %if.then112 ], [ %call128, %if.then123 ], [ %call134, %if.else129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %passkey) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_link_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_irk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_csrk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_ltk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_link_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_link_key(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_confirm_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sc_send_public_key(ptr noundef %smp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_send_public_key.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sc_send_public_key, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sc_send_public_key.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 22
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end22, label %if.then6

if.then6:                                         ; preds = %do.end
  %smp_data = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 168
  %9 = ptrtoint ptr %smp_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smp_data, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.then6.cleanup71_crit_edge, label %lor.lhs.false

if.then6.cleanup71_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

lor.lhs.false:                                    ; preds = %if.then6
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 84
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup71_crit_edge, label %if.end10

lor.lhs.false.cleanup71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

if.end10:                                         ; preds = %lor.lhs.false
  %local_pk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  %local_pk13 = getelementptr inbounds %struct.smp_dev, ptr %12, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %local_pk, ptr %local_pk13, i32 64)
  %lr = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 10
  %local_rand = getelementptr inbounds %struct.smp_dev, ptr %12, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %lr, ptr %local_rand, i32 16)
  %debug_key = getelementptr inbounds %struct.smp_dev, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %debug_key to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %debug_key, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.end10.done_crit_edge, label %if.end10.done.sink.split_crit_edge

if.end10.done.sink.split_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.sink.split

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end22:                                         ; preds = %do.end
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %17 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dev_flags, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %while.cond.preheader, label %do.body27

while.cond.preheader:                             ; preds = %if.end22
  %tfm_ecdh52 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 30
  %local_pk53 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  br label %while.cond

do.body27:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_send_public_key.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sc_send_public_key, %if.then39)) #14
          to label %do.end44 [label %if.then39], !srcloc !275

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %name40 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sc_send_public_key.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.7, ptr noundef %name40) #14
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  %tfm_ecdh = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 30
  %20 = ptrtoint ptr %tfm_ecdh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm_ecdh, align 4
  %call45 = tail call i32 @set_ecdh_privkey(ptr noundef %21, ptr noundef nonnull @debug_sk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %do.end44.cleanup71_crit_edge

do.end44.cleanup71_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

if.end48:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  %local_pk49 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  %22 = call ptr @memcpy(ptr %local_pk49, ptr @debug_pk, i32 64)
  br label %done.sink.split

while.cond:                                       ; preds = %if.end58.while.cond_crit_edge, %while.cond.preheader
  %23 = ptrtoint ptr %tfm_ecdh52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm_ecdh52, align 4
  %call55 = tail call i32 @generate_ecdh_keys(ptr noundef %24, ptr noundef %local_pk53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %while.cond.cleanup71_crit_edge

while.cond.cleanup71_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup71

if.end58:                                         ; preds = %while.cond
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %local_pk53, ptr noundef nonnull @debug_pk, i32 noundef 64) #14
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end58.while.cond_crit_edge, label %if.end58.done_crit_edge

if.end58.done_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end58.while.cond_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

done.sink.split:                                  ; preds = %if.end48, %if.end10.done.sink.split_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #14
  br label %done

done:                                             ; preds = %done.sink.split, %if.end58.done_crit_edge, %if.end10.done_crit_edge
  %25 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smp, align 4
  %local_pk69 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 25
  tail call fastcc void @smp_send_cmd(ptr noundef %26, i8 noundef zeroext 12, i16 noundef zeroext 64, ptr noundef %local_pk69)
  br label %cleanup71

cleanup71:                                        ; preds = %done, %while.cond.cleanup71_crit_edge, %do.end44.cleanup71_crit_edge, %lor.lhs.false.cleanup71_crit_edge, %if.then6.cleanup71_crit_edge
  %retval.1 = phi i8 [ 0, %done ], [ 8, %do.end44.cleanup71_crit_edge ], [ 8, %lor.lhs.false.cleanup71_crit_edge ], [ 8, %if.then6.cleanup71_crit_edge ], [ 8, %while.cond.cleanup71_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_random(ptr noundef %smp) unnamed_addr #0 align 64 {
entry:
  %confirm = alloca [16 x i8], align 1
  %stk = alloca [16 x i8], align 8
  %stk46 = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %confirm) #14
  %4 = call ptr @memset(ptr %confirm, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_random.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_random, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  %out = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 16
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %out, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool7.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_random.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.64, ptr noundef %name, ptr noundef %1, ptr noundef nonnull %cond) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tk = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 8
  %rrnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 6
  %preq = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 3
  %prsp = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 4
  %init_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %init_addr_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %init_addr_type, align 8
  %init_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 6
  %resp_addr_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %resp_addr_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %resp_addr_type, align 1
  %resp_addr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 8
  %call13 = call fastcc i32 @smp_c1(ptr noundef %tk, ptr noundef %rrnd, ptr noundef %preq, ptr noundef %prsp, i8 noundef zeroext %12, ptr noundef %init_addr, i8 noundef zeroext %14, ptr noundef %resp_addr, ptr noundef nonnull %confirm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end.cleanup68_crit_edge

do.end.cleanup68_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

if.end16:                                         ; preds = %do.end
  %pcnf = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 7
  %call.i = call i32 @__crypto_memneq(ptr noundef %pcnf, ptr noundef nonnull %confirm, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %hdev22 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %15 = ptrtoint ptr %hdev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev22, align 4
  %name23 = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74, ptr noundef %name23) #14
  br label %cleanup68

if.end25:                                         ; preds = %if.end16
  %out26 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %out26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out26, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stk) #14
  %19 = getelementptr inbounds [16 x i8], ptr %stk, i32 0, i32 8
  %prnd = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  %20 = ptrtoint ptr %prnd to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %prnd, align 1
  %22 = ptrtoint ptr %stk to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %stk, align 8
  %23 = ptrtoint ptr %rrnd to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %rrnd, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %19, align 8
  %call.i105 = call fastcc i32 @smp_e(ptr noundef %tk, ptr noundef nonnull %stk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i, label %if.then28.smp_s1.exit_crit_edge, label %if.then.i

if.then28.smp_s1.exit_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_s1.exit

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30) #14
  br label %smp_s1.exit

smp_s1.exit:                                      ; preds = %if.then.i, %if.then28.smp_s1.exit_crit_edge
  %flags = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  %call36 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %cleanup68.critedge

if.end39:                                         ; preds = %smp_s1.exit
  call void @__sanitizer_cov_trace_pc() #16
  %enc_key_size = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 11
  %26 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enc_key_size, align 2
  call void @hci_le_start_enc(ptr noundef %3, i16 noundef zeroext 0, i64 noundef 0, ptr noundef nonnull %stk, i8 noundef zeroext %27) #14
  %28 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enc_key_size, align 2
  %enc_key_size42 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 27
  %30 = ptrtoint ptr %enc_key_size42 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %enc_key_size42, align 1
  call void @_set_bit(i32 noundef 16, ptr noundef %flags) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stk) #14
  br label %cleanup68

if.else:                                          ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stk46) #14
  %31 = getelementptr inbounds [16 x i8], ptr %stk46, i32 0, i32 8
  %prnd49 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 5
  %32 = call ptr @memset(ptr %stk46, i32 255, i32 16)
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %prnd49)
  %33 = ptrtoint ptr %rrnd to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %rrnd, align 1
  %35 = ptrtoint ptr %stk46 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %stk46, align 8
  %36 = ptrtoint ptr %prnd49 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %prnd49, align 1
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %31, align 8
  %call.i107 = call fastcc i32 @smp_e(ptr noundef %tk, ptr noundef nonnull %stk46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.else.smp_s1.exit110_crit_edge, label %if.then.i109

if.else.smp_s1.exit110_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_s1.exit110

if.then.i109:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30) #14
  br label %smp_s1.exit110

smp_s1.exit110:                                   ; preds = %if.then.i109, %if.else.smp_s1.exit110_crit_edge
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 25
  %39 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp = icmp eq i8 %40, 3
  %. = zext i1 %cmp to i8
  %hdev63 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %41 = ptrtoint ptr %hdev63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev63, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dst_type, align 2
  %enc_key_size65 = getelementptr inbounds %struct.smp_chan, ptr %smp, i32 0, i32 11
  %45 = ptrtoint ptr %enc_key_size65 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %enc_key_size65, align 2
  %call66 = call ptr @hci_add_ltk(ptr noundef %42, ptr noundef %dst, i8 noundef zeroext %44, i8 noundef zeroext 0, i8 noundef zeroext %., ptr noundef nonnull %stk46, i8 noundef zeroext %46, i16 noundef zeroext 0, i64 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stk46) #14
  br label %cleanup68

cleanup68.critedge:                               ; preds = %smp_s1.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stk) #14
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup68.critedge, %smp_s1.exit110, %if.end39, %if.then21, %do.end.cleanup68_crit_edge
  %retval.1 = phi i8 [ 4, %if.then21 ], [ 8, %do.end.cleanup68_crit_edge ], [ 8, %cleanup68.critedge ], [ 0, %if.end39 ], [ 0, %smp_s1.exit110 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %confirm) #14
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_g2(ptr noundef %tfm_cmac, ptr nocapture noundef readonly %u, ptr nocapture noundef readonly %v, ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %m = alloca [80 x i8], align 1
  %tmp = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %m) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %1 = call ptr @memcpy(ptr %m, ptr %y, i32 16)
  %add.ptr = getelementptr inbounds i8, ptr %m, i32 16
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %v, i32 32)
  %add.ptr6 = getelementptr inbounds i8, ptr %m, i32 48
  %3 = call ptr @memcpy(ptr %add.ptr6, ptr %u, i32 32)
  %call = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef %x, ptr noundef nonnull %m, i32 noundef 80, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %rem = urem i32 %6, 1000000
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rem, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %m) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_blocked_key(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn_ratelimited(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_irk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compute_ecdh_secret(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bredr_pairing(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.smp_cmd_pairing, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #14
  %6 = call ptr @memset(ptr %req, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bredr_pairing.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bredr_pairing, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bredr_pairing.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %chan) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %role = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %15 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dev_flags, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end22
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %5, i32 0, i32 206, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %24 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dev_flags, align 4
  %26 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool35.not = icmp eq i32 %26, 0
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %arrayidx = getelementptr %struct.hci_conn, ptr %3, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 2
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not = icmp eq i8 %29, 0
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %remote_fixed_chan = getelementptr inbounds %struct.l2cap_conn, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %remote_fixed_chan to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %remote_fixed_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool45.not = icmp sgt i8 %31, -1
  br i1 %tobool45.not, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %if.end50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %call51 = tail call fastcc ptr @smp_chan_create(ptr noundef %1)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %name54 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.93, ptr noundef %name54) #14
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %flags57 = getelementptr inbounds %struct.smp_chan, ptr %call51, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags57) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bredr_pairing.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bredr_pairing, %if.then70)) #14
          to label %do.end75 [label %if.then70], !srcloc !275

if.then70:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %name71 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bredr_pairing.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.94, ptr noundef %name71) #14
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %if.end56
  call fastcc void @build_bredr_pairing_cmd(ptr noundef nonnull %call51, ptr noundef nonnull %req, ptr noundef null)
  %preq = getelementptr inbounds %struct.smp_chan, ptr %call51, i32 0, i32 3
  %34 = ptrtoint ptr %preq to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %preq, align 4
  %arrayidx78 = getelementptr %struct.smp_chan, ptr %call51, i32 0, i32 3, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx78, ptr %req, i32 6)
  call fastcc void @smp_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef nonnull %req)
  %allow_cmd = getelementptr inbounds %struct.smp_chan, ptr %call51, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %allow_cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.then53, %if.end47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_debug_key(ptr noundef %tfm_ecdh) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %pk = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pk) #14
  %0 = call ptr @memset(ptr %pk, i32 255, i32 64)
  %call = tail call i32 @set_ecdh_privkey(ptr noundef %tfm_ecdh, ptr noundef nonnull @debug_sk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @generate_ecdh_public_key(ptr noundef %tfm_ecdh, ptr noundef nonnull %pk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %pk, ptr noundef nonnull @debug_pk, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pk) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_ah() unnamed_addr #4 section ".init.text" align 64 {
entry:
  %_res.i = alloca [16 x i8], align 1
  %irk = alloca [16 x i8], align 1
  %exp = alloca [3 x i8], align 1
  %res = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %irk) #14
  %0 = call ptr @memcpy(ptr %irk, ptr @__const.test_h6.w, i32 16)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %exp) #14
  %1 = call ptr @memcpy(ptr %exp, ptr @__const.test_ah.exp, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %res) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_res.i) #14
  %2 = getelementptr inbounds [16 x i8], ptr %_res.i, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %_res.i, ptr @__const.test_ah.r, i32 3)
  %4 = call ptr @memset(ptr %2, i32 0, i32 13)
  %call.i = call fastcc i32 @smp_e(ptr noundef nonnull %irk, ptr noundef nonnull %_res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %smp_ah.exit

smp_ah.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = call ptr @memcpy(ptr %res, ptr %_res.i, i32 3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_res.i) #14
  %call.i14 = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.not.i.not = icmp eq i32 %call.i14, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %smp_ah.exit
  %retval.0 = phi i32 [ %call.i, %smp_ah.exit ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %irk) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_c1() unnamed_addr #4 section ".init.text" align 64 {
entry:
  %k = alloca [16 x i8], align 1
  %r = alloca [16 x i8], align 1
  %preq = alloca [7 x i8], align 1
  %pres = alloca [7 x i8], align 1
  %ra = alloca %struct.bdaddr_t, align 1
  %ia = alloca %struct.bdaddr_t, align 1
  %exp = alloca [16 x i8], align 1
  %res = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %k) #14
  %0 = call ptr @memset(ptr %k, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #14
  %1 = call ptr @memcpy(ptr %r, ptr @__const.test_c1.r, i32 16)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %preq) #14
  %2 = call ptr @memcpy(ptr %preq, ptr @__const.test_c1.preq, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %pres) #14
  %3 = call ptr @memcpy(ptr %pres, ptr @__const.test_c1.pres, i32 7)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ra) #14
  %4 = call ptr @memcpy(ptr %ra, ptr @__const.test_c1.ra, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ia) #14
  %5 = call ptr @memcpy(ptr %ia, ptr @__const.test_c1.ia, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp) #14
  %6 = call ptr @memcpy(ptr %exp, ptr @__const.test_c1.exp, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #14
  %7 = call ptr @memset(ptr %res, i32 255, i32 16)
  %call = call fastcc i32 @smp_c1(ptr noundef nonnull %k, ptr noundef nonnull %r, ptr noundef nonnull %preq, ptr noundef nonnull %pres, i8 noundef zeroext 1, ptr noundef nonnull %ia, i8 noundef zeroext 0, ptr noundef nonnull %ra, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ia) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ra) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %pres) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %preq) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %k) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_s1() unnamed_addr #4 section ".init.text" align 64 {
entry:
  %k = alloca [16 x i8], align 1
  %exp = alloca [16 x i8], align 1
  %res = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %k) #14
  %0 = call ptr @memset(ptr %k, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp) #14
  %1 = call ptr @memcpy(ptr %exp, ptr @__const.test_s1.exp, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #14
  %2 = getelementptr inbounds [16 x i8], ptr %res, i32 0, i32 8
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 72038755451251353, ptr %res, align 8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -8613303245920329199, ptr %2, align 8
  %call.i = call fastcc i32 @smp_e(ptr noundef nonnull %k, ptr noundef nonnull %res) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %smp_s1.exit

smp_s1.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i16 = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.not.i.not = icmp eq i32 %call.i16, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %smp_s1.exit
  %retval.0 = phi i32 [ %call.i, %smp_s1.exit ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %k) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_f4(ptr noundef %tfm_cmac) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  %x = alloca [16 x i8], align 1
  %exp = alloca [16 x i8], align 1
  %res = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x) #14
  %0 = call ptr @memcpy(ptr %x, ptr @__const.test_g2.x, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp) #14
  %1 = call ptr @memcpy(ptr %exp, ptr @__const.test_f4.exp, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #14
  %2 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %3 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %m.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 1
  %4 = call ptr @memcpy(ptr %add.ptr.i, ptr @__const.test_g2.v, i32 32)
  %add.ptr4.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %5 = call ptr @memcpy(ptr %add.ptr4.i, ptr @__const.test_g2.u, i32 32)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %x, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i17 = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.not.i.not = icmp eq i32 %call.i17, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_f5(ptr noundef %tfm_cmac) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %salt.i = alloca [16 x i8], align 1
  %m.i = alloca [53 x i8], align 2
  %t.i = alloca [16 x i8], align 1
  %w = alloca [32 x i8], align 1
  %exp_ltk = alloca [16 x i8], align 1
  %exp_mackey = alloca [16 x i8], align 1
  %mackey = alloca [16 x i8], align 1
  %ltk = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %w) #14
  %0 = call ptr @memcpy(ptr %w, ptr @__const.test_f5.w, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp_ltk) #14
  %1 = call ptr @memcpy(ptr %exp_ltk, ptr @__const.test_f5.exp_ltk, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp_mackey) #14
  %2 = call ptr @memcpy(ptr %exp_mackey, ptr @__const.test_f6.w, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mackey) #14
  %3 = call ptr @memset(ptr %mackey, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ltk) #14
  %4 = call ptr @memset(ptr %ltk, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %salt.i) #14
  %5 = call ptr @memcpy(ptr %salt.i, ptr @__const.smp_f5.salt, i32 16)
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %m.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #14
  %6 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %salt.i, ptr noundef nonnull %w, i32 noundef 32, ptr noundef nonnull %t.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.smp_f5.exit.thread_crit_edge

entry.smp_f5.exit.thread_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_f5.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %m.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %m.i, align 2
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 2
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr @__const.test_f6.a2, i32 7)
  %add.ptr9.i = getelementptr inbounds i8, ptr %m.i, i32 9
  %9 = call ptr @memcpy(ptr %add.ptr9.i, ptr @__const.test_f6.a1, i32 7)
  %add.ptr11.i = getelementptr inbounds i8, ptr %m.i, i32 16
  %10 = call ptr @memcpy(ptr %add.ptr11.i, ptr @__const.test_g2.y, i32 16)
  %add.ptr13.i = getelementptr inbounds i8, ptr %m.i, i32 32
  %11 = call ptr @memcpy(ptr %add.ptr13.i, ptr @__const.test_g2.x, i32 16)
  %add.ptr15.i = getelementptr inbounds i8, ptr %m.i, i32 48
  %12 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1701606498, ptr %add.ptr15.i, align 2
  %arrayidx.i = getelementptr inbounds [53 x i8], ptr %m.i, i32 0, i32 52
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx.i, align 2
  %call19.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %t.i, ptr noundef nonnull %m.i, i32 noundef 53, ptr noundef nonnull %mackey) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %smp_f5.exit, label %if.end.i.smp_f5.exit.thread_crit_edge

if.end.i.smp_f5.exit.thread_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smp_f5.exit.thread

smp_f5.exit.thread:                               ; preds = %if.end.i.smp_f5.exit.thread_crit_edge, %entry.smp_f5.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call19.i, %if.end.i.smp_f5.exit.thread_crit_edge ], [ %call.i, %entry.smp_f5.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #14
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %m.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i) #14
  br label %cleanup

smp_f5.exit:                                      ; preds = %if.end.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx.i, align 2
  %call27.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %t.i, ptr noundef nonnull %m.i, i32 noundef 53, ptr noundef nonnull %ltk) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #14
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %m.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %salt.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not = icmp eq i32 %call27.i, 0
  br i1 %tobool.not, label %if.end, label %smp_f5.exit.cleanup_crit_edge

smp_f5.exit.cleanup_crit_edge:                    ; preds = %smp_f5.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %smp_f5.exit
  %call.i29 = call i32 @__crypto_memneq(ptr noundef nonnull %mackey, ptr noundef nonnull %exp_mackey, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.not.i.not = icmp eq i32 %call.i29, 0
  br i1 %cmp.not.i.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i30 = call i32 @__crypto_memneq(ptr noundef nonnull %ltk, ptr noundef nonnull %exp_ltk, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.not.i31.not = icmp eq i32 %call.i30, 0
  %. = select i1 %cmp.not.i31.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %smp_f5.exit.cleanup_crit_edge, %smp_f5.exit.thread
  %retval.0 = phi i32 [ %call27.i, %smp_f5.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end12 ], [ %retval.0.i.ph, %smp_f5.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ltk) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mackey) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp_mackey) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp_ltk) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %w) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_f6(ptr noundef %tfm_cmac) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %m.i = alloca [65 x i8], align 1
  %w = alloca [16 x i8], align 1
  %exp = alloca [16 x i8], align 1
  %res = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %w) #14
  %0 = call ptr @memcpy(ptr %w, ptr @__const.test_f6.w, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp) #14
  %1 = call ptr @memcpy(ptr %exp, ptr @__const.test_f6.exp, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #14
  %2 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %m.i) #14
  %3 = call ptr @memcpy(ptr %m.i, ptr @__const.test_f6.a2, i32 7)
  %add.ptr.i = getelementptr inbounds i8, ptr %m.i, i32 7
  %4 = call ptr @memcpy(ptr %add.ptr.i, ptr @__const.test_f6.a1, i32 7)
  %add.ptr5.i = getelementptr inbounds i8, ptr %m.i, i32 14
  %5 = call ptr @memcpy(ptr %add.ptr5.i, ptr @__const.test_f6.io_cap, i32 3)
  %add.ptr7.i = getelementptr inbounds i8, ptr %m.i, i32 17
  %6 = call ptr @memcpy(ptr %add.ptr7.i, ptr @__const.test_f6.r, i32 16)
  %add.ptr9.i = getelementptr inbounds i8, ptr %m.i, i32 33
  %7 = call ptr @memcpy(ptr %add.ptr9.i, ptr @__const.test_g2.y, i32 16)
  %add.ptr11.i = getelementptr inbounds i8, ptr %m.i, i32 49
  %8 = call ptr @memcpy(ptr %add.ptr11.i, ptr @__const.test_g2.x, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %w, ptr noundef nonnull %m.i, i32 noundef 65, ptr noundef nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %m.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i24 = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.not.i.not = icmp eq i32 %call.i24, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_g2(ptr noundef %tfm_cmac) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %u = alloca [32 x i8], align 1
  %v = alloca [32 x i8], align 1
  %x = alloca [16 x i8], align 1
  %y = alloca [16 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %u) #14
  %0 = call ptr @memcpy(ptr %u, ptr @__const.test_g2.u, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v) #14
  %1 = call ptr @memcpy(ptr %v, ptr @__const.test_g2.v, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x) #14
  %2 = call ptr @memcpy(ptr %x, ptr @__const.test_g2.x, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %y) #14
  %3 = call ptr @memcpy(ptr %y, ptr @__const.test_g2.y, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !280
  %call = call fastcc i32 @smp_g2(ptr noundef %tfm_cmac, ptr noundef nonnull %u, ptr noundef nonnull %v, ptr noundef nonnull %x, ptr noundef nonnull %y, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 938554, i32 %6)
  %cmp.not = icmp eq i32 %6, 938554
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %y) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %u) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_h6(ptr noundef %tfm_cmac) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %w = alloca [16 x i8], align 1
  %key_id = alloca [4 x i8], align 4
  %exp = alloca [16 x i8], align 1
  %res = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %w) #14
  %0 = call ptr @memcpy(ptr %w, ptr @__const.test_h6.w, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_id) #14
  %1 = ptrtoint ptr %key_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1919051116, ptr %key_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exp) #14
  %2 = call ptr @memcpy(ptr %exp, ptr @__const.test_h6.exp, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #14
  %3 = call ptr @memset(ptr %res, i32 255, i32 16)
  %call.i = call fastcc i32 @aes_cmac(ptr noundef %tfm_cmac, ptr noundef nonnull %w, ptr noundef nonnull %key_id, i32 noundef 4, ptr noundef nonnull %res) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i14 = call i32 @__crypto_memneq(ptr noundef nonnull %res, ptr noundef nonnull %exp, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.not.i.not = icmp eq i32 %call.i14, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_id) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generate_ecdh_public_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_smp_read(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef nonnull @test_smp_buffer) #20
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @test_smp_buffer, i32 noundef %call) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { cold }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !98, !100, !101, !102, !104, !105, !107, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !124, !125, !127, !128, !130, !132, !134, !136, !137, !138, !140, !142, !143, !145, !146, !148, !150, !151, !153, !154, !155, !156, !157, !159, !161, !162, !164, !166, !168, !170, !171, !173, !174, !176, !178, !179, !181, !183, !184, !186, !187, !189, !191, !192, !194, !196, !198, !199, !201, !202, !204, !206, !207, !209, !210, !212, !213, !214, !216, !217, !219, !220, !222, !223, !225, !227, !228, !230, !231, !233, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263}
!llvm.named.register.sp = !{!265}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/smp.c", i32 506, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @smp_irk_matches.__UNIQUE_ID_ddebug476, !1, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/smp.c", i32 532, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @smp_generate_rpa.__UNIQUE_ID_ddebug477, !7, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/smp.c", i32 549, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @smp_generate_oob.__UNIQUE_ID_ddebug478, !11, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/smp.c", i32 1635, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smp_user_confirm_reply.__UNIQUE_ID_ddebug493, !15, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/smp.c", i32 1658, i32 3}
!20 = !{ptr @smp_user_confirm_reply.__UNIQUE_ID_ddebug494, !19, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/smp.c", i32 2357, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @smp_conn_security.__UNIQUE_ID_ddebug509, !22, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bluetooth/smp.c", i32 2379, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/smp.c", i32 3402, i32 2}
!29 = !{ptr @smp_register.__UNIQUE_ID_ddebug529, !28, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/smp.c", i32 3820, i32 32}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bluetooth/smp.c", i32 3822, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/smp.c", i32 3826, i32 30}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bluetooth/smp.c", i32 3828, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/bluetooth/smp.c", i32 481, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bluetooth/smp.c", i32 387, i32 3}
!42 = !{ptr @debug_sk, !43, !"debug_sk", i1 false, i1 false}
!43 = !{!"../net/bluetooth/smp.c", i32 149, i32 17}
!44 = !{ptr @debug_pk, !45, !"debug_pk", i1 false, i1 false}
!45 = !{!"../net/bluetooth/smp.c", i32 137, i32 17}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/bluetooth/smp.c", i32 178, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bluetooth/smp.c", i32 197, i32 3}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bluetooth/smp.c", i32 1571, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sc_passkey_round.__UNIQUE_ID_ddebug492, !51, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/net/bluetooth/hci_core.h", i32 1188, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, !55, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/bluetooth/smp.c", i32 953, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @smp_confirm.__UNIQUE_ID_ddebug486, !60, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/smp.c", i32 432, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/bluetooth/smp.c", i32 1389, i32 3}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bluetooth/smp.c", i32 1395, i32 3}
!69 = !{ptr @smp_chan_create.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../net/bluetooth/smp.c", i32 1404, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @smp_chan_create.__key.34, !70, !"__key", i1 false, i1 false}
!73 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/smp.c", i32 1372, i32 2}
!76 = !{ptr @smp_timeout.__UNIQUE_ID_ddebug491, !75, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/net/bluetooth/hci_core.h", i32 1180, i32 2}
!79 = !{ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, !78, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/bluetooth/smp.c", i32 598, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smp_send_cmd.__UNIQUE_ID_ddebug479, !81, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/net/bluetooth/hci_core.h", i32 1054, i32 2}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bluetooth/smp.c", i32 3261, i32 12}
!96 = !{ptr @smp_root_chan_ops, !97, !"smp_root_chan_ops", i1 false, i1 false}
!97 = !{!"../net/bluetooth/smp.c", i32 3260, i32 31}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/smp.c", i32 3234, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @smp_new_conn_cb.__UNIQUE_ID_ddebug526, !99, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/smp.c", i32 3255, i32 2}
!104 = !{ptr @smp_new_conn_cb.__UNIQUE_ID_ddebug527, !103, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bluetooth/smp.c", i32 3214, i32 12}
!107 = !{ptr @smp_chan_ops, !108, !"smp_chan_ops", i1 false, i1 false}
!108 = !{!"../net/bluetooth/smp.c", i32 3213, i32 31}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/bluetooth/smp.c", i32 3182, i32 2}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @smp_recv_cb.__UNIQUE_ID_ddebug525, !110, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bluetooth/smp.c", i32 3034, i32 3}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @smp_sig_channel.__UNIQUE_ID_ddebug519, !114, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/bluetooth/smp.c", i32 3049, i32 2}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/bluetooth/smp.c", i32 1740, i32 2}
!121 = !{ptr @smp_cmd_pairing_req.__UNIQUE_ID_ddebug495, !120, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/bluetooth/smp.c", i32 1241, i32 2}
!124 = !{ptr @smp_distribute_keys.__UNIQUE_ID_ddebug489, !123, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/smp.c", i32 1271, i32 2}
!127 = !{ptr @smp_distribute_keys.__UNIQUE_ID_ddebug490, !126, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/bluetooth/smp.c", i32 1206, i32 3}
!130 = !{ptr @sc_method, !131, !"sc_method", i1 false, i1 false}
!131 = !{!"../net/bluetooth/smp.c", i32 826, i32 17}
!132 = !{ptr @gen_method, !133, !"gen_method", i1 false, i1 false}
!133 = !{!"../net/bluetooth/smp.c", i32 818, i32 17}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/bluetooth/smp.c", i32 862, i32 2}
!136 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tk_request.__UNIQUE_ID_ddebug484, !135, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!138 = !{ptr @tk_request.__UNIQUE_ID_ddebug485, !139, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!139 = !{!"../net/bluetooth/smp.c", i32 928, i32 3}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/bluetooth/smp.c", i32 1931, i32 2}
!142 = !{ptr @smp_cmd_pairing_rsp.__UNIQUE_ID_ddebug502, !141, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/bluetooth/smp.c", i32 1873, i32 2}
!145 = !{ptr @sc_send_public_key.__UNIQUE_ID_ddebug500, !144, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!146 = !{ptr @sc_send_public_key.__UNIQUE_ID_ddebug501, !147, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!147 = !{!"../net/bluetooth/smp.c", i32 1894, i32 3}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/bluetooth/smp.c", i32 2294, i32 2}
!150 = !{ptr @smp_cmd_security_req.__UNIQUE_ID_ddebug508, !149, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/bluetooth/smp.c", i32 2088, i32 2}
!153 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @smp_cmd_pairing_confirm.__UNIQUE_ID_ddebug506, !152, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!155 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/bluetooth/smp.c", i32 2104, i32 3}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/smp.c", i32 2026, i32 2}
!161 = !{ptr @sc_check_confirm.__UNIQUE_ID_ddebug505, !160, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/bluetooth/smp.c", i32 2057, i32 3}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/bluetooth/smp.c", i32 2061, i32 2}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/bluetooth/smp.c", i32 2072, i32 3}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/bluetooth/smp.c", i32 2135, i32 2}
!170 = !{ptr @smp_cmd_pairing_random.__UNIQUE_ID_ddebug507, !169, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/bluetooth/smp.c", i32 981, i32 2}
!173 = !{ptr @smp_random.__UNIQUE_ID_ddebug487, !172, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/bluetooth/smp.c", i32 991, i32 3}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/bluetooth/smp.c", i32 2494, i32 2}
!178 = !{ptr @smp_cmd_encrypt_info.__UNIQUE_ID_ddebug510, !177, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/bluetooth/smp.c", i32 2502, i32 3}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/bluetooth/smp.c", i32 2527, i32 2}
!183 = !{ptr @smp_cmd_initiator_ident.__UNIQUE_ID_ddebug511, !182, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/bluetooth/smp.c", i32 2559, i32 2}
!186 = !{ptr @smp_cmd_ident_info.__UNIQUE_ID_ddebug512, !185, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/bluetooth/smp.c", i32 2567, i32 3}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/bluetooth/smp.c", i32 2591, i32 2}
!191 = !{ptr @smp_cmd_ident_addr_info.__UNIQUE_ID_ddebug513, !190, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/bluetooth/smp.c", i32 2616, i32 3}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/bluetooth/smp.c", i32 2628, i32 3}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/bluetooth/smp.c", i32 2658, i32 2}
!198 = !{ptr @smp_cmd_sign_info.__UNIQUE_ID_ddebug514, !197, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/bluetooth/smp.c", i32 2738, i32 2}
!201 = !{ptr @smp_cmd_public_key.__UNIQUE_ID_ddebug515, !200, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/bluetooth/smp.c", i32 2748, i32 3}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/bluetooth/smp.c", i32 2802, i32 2}
!206 = !{ptr @smp_cmd_public_key.__UNIQUE_ID_ddebug516, !205, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/bluetooth/smp.c", i32 2877, i32 2}
!209 = !{ptr @smp_cmd_dhkey_check.__UNIQUE_ID_ddebug517, !208, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/bluetooth/smp.c", i32 2937, i32 2}
!212 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @smp_cmd_keypress_notify.__UNIQUE_ID_ddebug518, !211, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/bluetooth/smp.c", i32 3059, i32 2}
!216 = !{ptr @smp_teardown_cb.__UNIQUE_ID_ddebug520, !215, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/bluetooth/smp.c", i32 3164, i32 2}
!219 = !{ptr @smp_ready_cb.__UNIQUE_ID_ddebug524, !218, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/bluetooth/smp.c", i32 3076, i32 2}
!222 = !{ptr @bredr_pairing.__UNIQUE_ID_ddebug521, !221, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!223 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/bluetooth/smp.c", i32 3117, i32 3}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/bluetooth/smp.c", i32 3123, i32 2}
!227 = !{ptr @bredr_pairing.__UNIQUE_ID_ddebug522, !226, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/bluetooth/smp.c", i32 3141, i32 2}
!230 = !{ptr @smp_resume_cb.__UNIQUE_ID_ddebug523, !229, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!231 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../net/bluetooth/smp.c", i32 3359, i32 2}
!233 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @smp_del_chan.__UNIQUE_ID_ddebug528, !232, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../net/bluetooth/smp.c", i32 3743, i32 3}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/bluetooth/smp.c", i32 3749, i32 3}
!239 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../net/bluetooth/smp.c", i32 3755, i32 3}
!241 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/bluetooth/smp.c", i32 3761, i32 3}
!243 = !{ptr @.str.102, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../net/bluetooth/smp.c", i32 3767, i32 3}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../net/bluetooth/smp.c", i32 3773, i32 3}
!247 = !{ptr @.str.104, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../net/bluetooth/smp.c", i32 3779, i32 3}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../net/bluetooth/smp.c", i32 3785, i32 3}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../net/bluetooth/smp.c", i32 3791, i32 3}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/bluetooth/smp.c", i32 3799, i32 2}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/bluetooth/smp.c", i32 3804, i32 5}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/bluetooth/smp.c", i32 3806, i32 54}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../net/bluetooth/smp.c", i32 3808, i32 22}
!261 = !{ptr @test_smp_buffer, !262, !"test_smp_buffer", i1 false, i1 false}
!262 = !{!"../net/bluetooth/smp.c", i32 3717, i32 13}
!263 = !{ptr @test_smp_fops, !264, !"test_smp_fops", i1 false, i1 false}
!264 = !{!"../net/bluetooth/smp.c", i32 3726, i32 37}
!265 = !{!"sp"}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 1, !"min_enum_size", i32 4}
!268 = !{i32 8, !"branch-target-enforcement", i32 0}
!269 = !{i32 8, !"sign-return-address", i32 0}
!270 = !{i32 8, !"sign-return-address-all", i32 0}
!271 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!275 = !{i64 2148581555, i64 2148581560, i64 2148581573, i64 2148581617, i64 2148581651, i64 2148581672}
!276 = !{i8 0, i8 2}
!277 = !{i64 2148756957, i64 2148756983, i64 2148757012, i64 2148757046, i64 2148757077, i64 2148757100}
!278 = !{i64 2149569403}
!279 = !{i64 2149569669}
!280 = !{!"auto-init"}
!281 = !{!"branch_weights", i32 2000, i32 1}
!282 = !{i64 2149337238}
!283 = !{!"branch_weights", i32 1, i32 2000}
!284 = !{i64 2157598667, i64 2157599151, i64 2157598704, i64 2157598760, i64 2157598794, i64 2157598818, i64 2157598859, i64 2157598880, i64 2157598908, i64 2157598942}
!285 = !{i64 2148845433}
!286 = !{i64 2148760142, i64 2148760174, i64 2148760203, i64 2148760237, i64 2148760268, i64 2148760291}
!287 = !{i64 2148845662}
