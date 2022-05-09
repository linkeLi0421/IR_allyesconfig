; ModuleID = '/llk/IR_all_yes/net/dccp/feat.c_pt.bc'
source_filename = "../net/dccp/feat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_feat_list_purge\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_feat_list_purge\09\09\09\09"
module asm "\09.long\09__crc_dccp_feat_list_purge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_feat_list_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_feat_list_purge\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_feat_list_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_feat_nn_get\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_feat_nn_get\09\09\09\09"
module asm "\09.long\09__crc_dccp_feat_nn_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_feat_nn_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_feat_nn_get\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_feat_nn_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_feat_signal_nn_change\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_feat_signal_nn_change\09\09\09\09"
module asm "\09.long\09__crc_dccp_feat_signal_nn_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_feat_signal_nn_change:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_feat_signal_nn_change\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_feat_signal_nn_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.199 = type { i8, i32, i32, i8, ptr }
%struct.ccid_dependency = type { i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { ptr, i8 }
%struct.dccp_feat_entry = type { %union.dccp_feat_val, i8, i8, i8, i8, i8, i8, %struct.list_head }
%union.dccp_feat_val = type { i64 }
%struct.dccp_request_sock = type { %struct.inet_request_sock, i64, i64, i64, i64, i32, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.196 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.156, [0 x i32], %union.anon.157, i16, i16, %union.anon.158, %struct.refcount_struct, [0 x i32], %union.anon.159 }
%union.anon = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.45 }
%union.anon.45 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { %struct.hlist_node }
%union.anon.158 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.159 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.188, %struct.anon.189, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.160, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.161, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.162, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.160 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.161 = type { ptr }
%union.anon.162 = type { ptr }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.40 }
%union.anon.40 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.188 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.189 = type { i32, i32, i32, i32 }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.190, i32 }
%union.anon.190 = type { ptr }
%struct.sk_buff = type { %union.anon.46, %union.anon.49, %union.anon.50, [48 x i8], %union.anon.51, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.53, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, ptr, %union.anon.48 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { ptr }
%union.anon.50 = type { i64 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, ptr }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.55, i32, i32, i32, i16, i16, %union.anon.57, i32, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.55 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.anon.198 = type { ptr, i8 }

@sysctl_dccp_sequence_window = dso_local local_unnamed_addr global i32 100, section ".data..read_mostly", align 4
@sysctl_dccp_rx_ccid = dso_local local_unnamed_addr global i32 2, section ".data..read_mostly", align 4
@sysctl_dccp_tx_ccid = dso_local local_unnamed_addr global i32 2, section ".data..read_mostly", align 4
@__kstrtab_dccp_feat_list_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_feat_list_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_feat_list_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_feat_list_purge to i32), ptr @__kstrtab_dccp_feat_list_purge, ptr @__kstrtabns_dccp_feat_list_purge }, section "___ksymtab_gpl+dccp_feat_list_purge", align 4
@dccp_feat_insert_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012BUG: unknown feature %u at %s:%d/%s()\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dccp_feat_insert_opts\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/dccp/feat.c\00", [16 x i8] zeroinitializer }, align 32
@dccp_feat_insert_opts._entry_ptr = internal global ptr @dccp_feat_insert_opts._entry, section ".printk_index", align 4
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_feat_insert_opts._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s(%s, \00", [18 x i8] zeroinitializer }, align 32
@dccp_feat_insert_opts._entry_ptr.5 = internal global ptr @dccp_feat_insert_opts._entry.3, section ".printk_index", align 4
@dccp_feat_insert_opts._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c") %s\0A\00", [26 x i8] zeroinitializer }, align 32
@dccp_feat_insert_opts._entry_ptr.8 = internal global ptr @dccp_feat_insert_opts._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dccp_feat_nn_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\012BUG: attempt to look up unsupported feature %u at %s:%d/%s()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dccp_feat_nn_get\00", [47 x i8] zeroinitializer }, align 32
@dccp_feat_nn_get._entry_ptr = internal global ptr @dccp_feat_nn_get._entry, section ".printk_index", align 4
@__kstrtab_dccp_feat_nn_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_feat_nn_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_feat_nn_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_feat_nn_get to i32), ptr @__kstrtab_dccp_feat_nn_get, ptr @__kstrtabns_dccp_feat_nn_get }, section "___ksymtab_gpl+dccp_feat_nn_get", align 4
@dccp_feat_signal_nn_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Clobbering existing NN entry %llu -> %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dccp_feat_signal_nn_change\00", [37 x i8] zeroinitializer }, align 32
@dccp_feat_signal_nn_change._entry_ptr = internal global ptr @dccp_feat_signal_nn_change._entry, section ".printk_index", align 4
@__kstrtab_dccp_feat_signal_nn_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_feat_signal_nn_change = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_feat_signal_nn_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_feat_signal_nn_change to i32), ptr @__kstrtab_dccp_feat_signal_nn_change, ptr @__kstrtabns_dccp_feat_signal_nn_change }, section "___ksymtab_gpl+dccp_feat_signal_nn_change", align 4
@dccp_feat_finalise_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: List Dump:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dccp_feat_finalise_settings\00", [36 x i8] zeroinitializer }, align 32
@dccp_feat_finalise_settings._entry_ptr = internal global ptr @dccp_feat_finalise_settings._entry, section ".printk_index", align 4
@dccp_feat_activate_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012BUG: Unknown feature %u at %s:%d/%s()\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dccp_feat_activate_values\00", [38 x i8] zeroinitializer }, align 32
@dccp_feat_activate_values._entry_ptr = internal global ptr @dccp_feat_activate_values._entry, section ".printk_index", align 4
@dccp_feat_activate_values._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012Negotiation of %s %s failed in state %s at %s:%d/%s()\0A\00", [39 x i8] zeroinitializer }, align 32
@dccp_feat_activate_values._entry_ptr.20 = internal global ptr @dccp_feat_activate_values._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remote\00", [25 x i8] zeroinitializer }, align 32
@dccp_feat_sname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], [44 x i8] zeroinitializer }, align 32
@dccp_feat_activate_values._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012Could not activate %d at %s:%d/%s()\0A\00", [57 x i8] zeroinitializer }, align 32
@dccp_feat_activate_values._entry_ptr.25 = internal global ptr @dccp_feat_activate_values._entry.23, section ".printk_index", align 4
@dccp_feat_activate_values._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Activation OK\0A\00", [43 x i8] zeroinitializer }, align 32
@dccp_feat_activate_values._entry_ptr.28 = internal global ptr @dccp_feat_activate_values._entry.26, section ".printk_index", align 4
@dccp_feat_table = internal constant { [10 x %struct.anon.199], [56 x i8] } { [10 x %struct.anon.199] [%struct.anon.199 { i8 1, i32 2, i32 4, i8 2, ptr @dccp_hdlr_ccid }, %struct.anon.199 { i8 2, i32 2, i32 4, i8 0, ptr null }, %struct.anon.199 { i8 3, i32 2, i32 8, i8 100, ptr @dccp_hdlr_seq_win }, %struct.anon.199 { i8 4, i32 1, i32 4, i8 0, ptr null }, %struct.anon.199 { i8 5, i32 2, i32 8, i8 2, ptr @dccp_hdlr_ack_ratio }, %struct.anon.199 { i8 6, i32 1, i32 4, i8 0, ptr @dccp_hdlr_ackvec }, %struct.anon.199 { i8 7, i32 2, i32 4, i8 0, ptr @dccp_hdlr_ndp }, %struct.anon.199 { i8 8, i32 1, i32 4, i8 0, ptr @dccp_hdlr_min_cscov }, %struct.anon.199 { i8 9, i32 1, i32 4, i8 0, ptr null }, %struct.anon.199 { i8 -64, i32 1, i32 4, i8 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@dccp_hdlr_min_cscov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: CsCov %u too small, peer requires >= %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dccp_hdlr_min_cscov\00", [44 x i8] zeroinitializer }, align 32
@dccp_hdlr_min_cscov._entry_ptr = internal global ptr @dccp_hdlr_min_cscov._entry, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Change_L\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Confirm_L\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Change_R\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Confirm_R\00", [22 x i8] zeroinitializer }, align 32
@dccp_feat_fname.feature_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCID\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Allow Short Seqnos\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sequence Window\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECN Incapable\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ack Ratio\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Send ACK Vector\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Send NDP Count\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Min. Csum Coverage\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Send Data Checksum\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Send Loss Event Rate\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CCID-specific\00", [18 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(NULL)\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dccp_feat_printval\00", [45 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry_ptr = internal global ptr @dccp_feat_printval._entry, section ".printk_index", align 4
@dccp_feat_printval._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry_ptr.51 = internal global ptr @dccp_feat_printval._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry_ptr.55 = internal global ptr @dccp_feat_printval._entry.53, section ".printk_index", align 4
@dccp_feat_printval._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown type %u\00", [16 x i8] zeroinitializer }, align 32
@dccp_feat_printval._entry_ptr.58 = internal global ptr @dccp_feat_printval._entry.56, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dccp_feat_ccid_deps.ccid2_dependencies = internal constant { [2 x [2 x %struct.ccid_dependency]], [20 x i8] } { [2 x [2 x %struct.ccid_dependency]] [[2 x %struct.ccid_dependency] [%struct.ccid_dependency { i8 6, i8 -64, i8 1 }, %struct.ccid_dependency zeroinitializer], [2 x %struct.ccid_dependency] [%struct.ccid_dependency { i8 6, i8 64, i8 1 }, %struct.ccid_dependency zeroinitializer]], [20 x i8] zeroinitializer }, align 32
@dccp_feat_ccid_deps.ccid3_dependencies = internal constant { [2 x [5 x %struct.ccid_dependency]], [34 x i8] } { [2 x [5 x %struct.ccid_dependency]] [[5 x %struct.ccid_dependency] [%struct.ccid_dependency { i8 6, i8 -128, i8 0 }, %struct.ccid_dependency { i8 -64, i8 -64, i8 1 }, %struct.ccid_dependency { i8 7, i8 64, i8 1 }, %struct.ccid_dependency zeroinitializer, %struct.ccid_dependency zeroinitializer], [5 x %struct.ccid_dependency] [%struct.ccid_dependency { i8 6, i8 0, i8 0 }, %struct.ccid_dependency { i8 -64, i8 64, i8 1 }, %struct.ccid_dependency { i8 5, i8 -128, i8 0 }, %struct.ccid_dependency { i8 7, i8 -128, i8 1 }, %struct.ccid_dependency zeroinitializer]], [34 x i8] zeroinitializer }, align 32
@dccp_feat_print_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017   * %s %s = \00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dccp_feat_print_entry\00", [42 x i8] zeroinitializer }, align 32
@dccp_feat_print_entry._entry_ptr = internal global ptr @dccp_feat_print_entry._entry, section ".printk_index", align 4
@dccp_feat_print_entry._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", state=%s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@dccp_feat_print_entry._entry_ptr.63 = internal global ptr @dccp_feat_print_entry._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(Confirm pending)\00", [46 x i8] zeroinitializer }, align 32
@dccp_feat_default_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012BUG: \22%s\22 holds (exception!) at %s:%d/%s()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dccp_feat_default_value\00", [40 x i8] zeroinitializer }, align 32
@dccp_feat_default_value._entry_ptr = internal global ptr @dccp_feat_default_value._entry, section ".printk_index", align 4
@dccp_feat_change_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dccp_feat_change_recv\00", [42 x i8] zeroinitializer }, align 32
@dccp_feat_change_recv._entry_ptr = internal global ptr @dccp_feat_change_recv._entry, section ".printk_index", align 4
@dccp_feat_change_recv._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.68, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dccp_feat_change_recv._entry_ptr.70 = internal global ptr @dccp_feat_change_recv._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@dccp_feat_reconcile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012NULL feature value or array at %s:%d/%s()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dccp_feat_reconcile\00", [44 x i8] zeroinitializer }, align 32
@dccp_feat_reconcile._entry_ptr = internal global ptr @dccp_feat_reconcile._entry, section ".printk_index", align 4
@dccp_feat_confirm_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dccp_feat_confirm_recv\00", [41 x i8] zeroinitializer }, align 32
@dccp_feat_confirm_recv._entry_ptr = internal global ptr @dccp_feat_confirm_recv._entry, section ".printk_index", align 4
@dccp_feat_confirm_recv._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.74, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dccp_feat_confirm_recv._entry_ptr.76 = internal global ptr @dccp_feat_confirm_recv._entry.75, section ".printk_index", align 4
@dccp_feat_confirm_recv._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.2, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Bogus Confirm for non-existing value\0A\00", [52 x i8] zeroinitializer }, align 32
@dccp_feat_confirm_recv._entry_ptr.79 = internal global ptr @dccp_feat_confirm_recv._entry.77, section ".printk_index", align 4
@dccp_feat_confirm_recv._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.2, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: Confirm selected the wrong value %u\0A\00", [53 x i8] zeroinitializer }, align 32
@dccp_feat_confirm_recv._entry_ptr.82 = internal global ptr @dccp_feat_confirm_recv._entry.80, section ".printk_index", align 4
@dccp_feat_confirm_recv._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.74, ptr @.str.2, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Confirmation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@dccp_feat_confirm_recv._entry_ptr.85 = internal global ptr @dccp_feat_confirm_recv._entry.83, section ".printk_index", align 4
@dccp_feat_handle_nn_established._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.86, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dccp_feat_handle_nn_established\00", [32 x i8] zeroinitializer }, align 32
@dccp_feat_handle_nn_established._entry_ptr = internal global ptr @dccp_feat_handle_nn_established._entry, section ".printk_index", align 4
@dccp_feat_handle_nn_established._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.86, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dccp_feat_handle_nn_established._entry_ptr.88 = internal global ptr @dccp_feat_handle_nn_established._entry.87, section ".printk_index", align 4
@dccp_feat_handle_nn_established._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.86, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Received illegal option %u\0A\00", [62 x i8] zeroinitializer }, align 32
@dccp_feat_handle_nn_established._entry_ptr.91 = internal global ptr @dccp_feat_handle_nn_established._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEFAULT\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INITIALISING\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHANGING\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNSTABLE\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STABLE\00", [25 x i8] zeroinitializer }, align 32
@__dccp_feat_activate._entry = internal constant %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 325, ptr null, ptr null }, align 1
@.str.97 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012Feature #%d undefined: using default at %s:%d/%s()\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__dccp_feat_activate\00", [43 x i8] zeroinitializer }, align 32
@__dccp_feat_activate._entry_ptr = internal global ptr @__dccp_feat_activate._entry, section ".printk_index", align 4
@__dccp_feat_activate._entry.99 = internal constant %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 339, ptr null, ptr null }, align 1
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017   -> activating %s %s, %sval=%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@__dccp_feat_activate._entry_ptr.101 = internal global ptr @__dccp_feat_activate._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"default \00", [23 x i8] zeroinitializer }, align 32
@switch.table.dccp_feat_insert_opts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@switch.table.dccp_feat_parse_options = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33], [20 x i8] zeroinitializer }, align 32
@switch.table.dccp_feat_parse_options.105 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@switch.table.dccp_feat_parse_options.106 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 10, i64 13]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 255]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.119 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 192]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 660, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 664, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 792, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 823, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 993, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1530, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1534, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"dccp_feat_sname\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 238, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1552, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1561, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"dccp_feat_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 152, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 122, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 246, i32 31 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 247, i32 31 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 248, i32 31 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 249, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"feature_names\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 215, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 216, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 217, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 218, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 219, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 220, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 221, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 222, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 223, i32 28 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 224, i32 28 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 225, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 231, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 233, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 259, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 262, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 264, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 266, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [19 x i8] c"ccid2_dependencies\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 844, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"ccid3_dependencies\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 869, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 281, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 284, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 205, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1118, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1077, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1225, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1260, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1282, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1292, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1324, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1378, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 13 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 29 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 41 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 53 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 325, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private constant [19 x i8] c"../net/dccp/feat.c\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 337, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [35 x i8] c"switch.table.dccp_feat_insert_opts\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [37 x i8] c"switch.table.dccp_feat_parse_options\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [41 x i8] c"switch.table.dccp_feat_parse_options.105\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [41 x i8] c"switch.table.dccp_feat_parse_options.106\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__dccp_feat_activate._entry, ptr @__dccp_feat_activate._entry.99, ptr @__dccp_feat_activate._entry_ptr, ptr @__dccp_feat_activate._entry_ptr.101, ptr @__ksymtab_dccp_feat_list_purge, ptr @__ksymtab_dccp_feat_nn_get, ptr @__ksymtab_dccp_feat_signal_nn_change, ptr @dccp_feat_activate_values._entry, ptr @dccp_feat_activate_values._entry.18, ptr @dccp_feat_activate_values._entry.23, ptr @dccp_feat_activate_values._entry.26, ptr @dccp_feat_activate_values._entry_ptr, ptr @dccp_feat_activate_values._entry_ptr.20, ptr @dccp_feat_activate_values._entry_ptr.25, ptr @dccp_feat_activate_values._entry_ptr.28, ptr @dccp_feat_change_recv._entry, ptr @dccp_feat_change_recv._entry.69, ptr @dccp_feat_change_recv._entry_ptr, ptr @dccp_feat_change_recv._entry_ptr.70, ptr @dccp_feat_confirm_recv._entry, ptr @dccp_feat_confirm_recv._entry.75, ptr @dccp_feat_confirm_recv._entry.77, ptr @dccp_feat_confirm_recv._entry.80, ptr @dccp_feat_confirm_recv._entry.83, ptr @dccp_feat_confirm_recv._entry_ptr, ptr @dccp_feat_confirm_recv._entry_ptr.76, ptr @dccp_feat_confirm_recv._entry_ptr.79, ptr @dccp_feat_confirm_recv._entry_ptr.82, ptr @dccp_feat_confirm_recv._entry_ptr.85, ptr @dccp_feat_default_value._entry, ptr @dccp_feat_default_value._entry_ptr, ptr @dccp_feat_finalise_settings._entry, ptr @dccp_feat_finalise_settings._entry_ptr, ptr @dccp_feat_handle_nn_established._entry, ptr @dccp_feat_handle_nn_established._entry.87, ptr @dccp_feat_handle_nn_established._entry.89, ptr @dccp_feat_handle_nn_established._entry_ptr, ptr @dccp_feat_handle_nn_established._entry_ptr.88, ptr @dccp_feat_handle_nn_established._entry_ptr.91, ptr @dccp_feat_insert_opts._entry, ptr @dccp_feat_insert_opts._entry.3, ptr @dccp_feat_insert_opts._entry.6, ptr @dccp_feat_insert_opts._entry_ptr, ptr @dccp_feat_insert_opts._entry_ptr.5, ptr @dccp_feat_insert_opts._entry_ptr.8, ptr @dccp_feat_nn_get._entry, ptr @dccp_feat_nn_get._entry_ptr, ptr @dccp_feat_print_entry._entry, ptr @dccp_feat_print_entry._entry.61, ptr @dccp_feat_print_entry._entry_ptr, ptr @dccp_feat_print_entry._entry_ptr.63, ptr @dccp_feat_printval._entry, ptr @dccp_feat_printval._entry.49, ptr @dccp_feat_printval._entry.53, ptr @dccp_feat_printval._entry.56, ptr @dccp_feat_printval._entry_ptr, ptr @dccp_feat_printval._entry_ptr.51, ptr @dccp_feat_printval._entry_ptr.55, ptr @dccp_feat_printval._entry_ptr.58, ptr @dccp_feat_reconcile._entry, ptr @dccp_feat_reconcile._entry_ptr, ptr @dccp_feat_signal_nn_change._entry, ptr @dccp_feat_signal_nn_change._entry_ptr, ptr @dccp_hdlr_min_cscov._entry, ptr @dccp_hdlr_min_cscov._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @dccp_feat_sname, ptr @.str.24, ptr @.str.27, ptr @dccp_feat_table, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @dccp_feat_fname.feature_names, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @dccp_feat_ccid_deps.ccid2_dependencies, ptr @dccp_feat_ccid_deps.ccid3_dependencies, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @switch.table.dccp_feat_insert_opts, ptr @switch.table.dccp_feat_parse_options, ptr @switch.table.dccp_feat_parse_options.105, ptr @switch.table.dccp_feat_parse_options.106], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_insert_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_insert_opts._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_insert_opts._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_nn_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_signal_nn_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_finalise_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_activate_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_activate_values._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_sname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_activate_values._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_activate_values._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_table to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_hdlr_min_cscov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_fname.feature_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_printval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_printval._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_printval._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_printval._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_ccid_deps.ccid2_dependencies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_ccid_deps.ccid3_dependencies to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_print_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_print_entry._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_default_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_change_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_change_recv._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_reconcile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_confirm_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_confirm_recv._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_confirm_recv._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_confirm_recv._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_confirm_recv._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_handle_nn_established._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_handle_nn_established._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_feat_handle_nn_established._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_feat_insert_opts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_feat_parse_options to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_feat_parse_options.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_feat_parse_options.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_feat_list_purge(ptr noundef %fn_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn_list, align 4
  %cmp.not19 = icmp eq ptr %1, %fn_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %dccp_feat_entry_destructor.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %dccp_feat_entry_destructor.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in20, i32 -16
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 8
  %cmp.not.i = icmp eq ptr %entry1.0, null
  br i1 %cmp.not.i, label %for.body.dccp_feat_entry_destructor.exit_crit_edge, label %if.end.i.i

for.body.dccp_feat_entry_destructor.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_entry_destructor.exit

if.end.i.i:                                       ; preds = %for.body
  %feat_num.i = getelementptr i8, ptr %.pn.in20, i32 -7
  %3 = ptrtoint ptr %feat_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %feat_num.i, align 1
  %conv.i.i.i.i = zext i8 %4 to i32
  %5 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %6 = icmp ult i8 %5, 9
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %4)
  %cond.i.i.i.i = icmp eq i8 %4, -64
  %..i.i.i.i = select i1 %cond.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i = select i1 %6, i32 %sub.i.i.i.i, i32 %..i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %retval.0.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.dccp_feat_val_destructor.exit.i_crit_edge, label %dccp_feat_type.exit.i.i

if.end.i.i.dccp_feat_val_destructor.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i

dccp_feat_type.exit.i.i:                          ; preds = %if.end.i.i
  %reconciliation.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i, i32 2
  %7 = ptrtoint ptr %reconciliation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconciliation.i.i.i, align 4
  %conv.i.i.i = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i)
  %cmp2.i.i = icmp eq i8 %conv.i.i.i, 4
  br i1 %cmp2.i.i, label %if.then4.i.i, label %dccp_feat_type.exit.i.i.dccp_feat_val_destructor.exit.i_crit_edge

dccp_feat_type.exit.i.i.dccp_feat_val_destructor.exit.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i

if.then4.i.i:                                     ; preds = %dccp_feat_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.0, align 8
  tail call void @kfree(ptr noundef %10) #9
  br label %dccp_feat_val_destructor.exit.i

dccp_feat_val_destructor.exit.i:                  ; preds = %if.then4.i.i, %dccp_feat_type.exit.i.i.dccp_feat_val_destructor.exit.i_crit_edge, %if.end.i.i.dccp_feat_val_destructor.exit.i_crit_edge
  %11 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %entry1.0, align 8
  tail call void @kfree(ptr noundef nonnull %entry1.0) #9
  br label %dccp_feat_entry_destructor.exit

dccp_feat_entry_destructor.exit:                  ; preds = %dccp_feat_val_destructor.exit.i, %for.body.dccp_feat_entry_destructor.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %fn_list
  br i1 %cmp.not, label %dccp_feat_entry_destructor.exit.for.end_crit_edge, label %dccp_feat_entry_destructor.exit.for.body_crit_edge

dccp_feat_entry_destructor.exit.for.body_crit_edge: ; preds = %dccp_feat_entry_destructor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

dccp_feat_entry_destructor.exit.for.end_crit_edge: ; preds = %dccp_feat_entry_destructor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %dccp_feat_entry_destructor.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %fn_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %fn_list, ptr %fn_list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fn_list, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fn_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_clone_list(ptr noundef readonly %from, ptr noundef %to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %to, ptr %to, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %to, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to, ptr %prev.i, align 4
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21 = load ptr, ptr %from, align 4
  %cmp.not22 = icmp eq ptr %.pn21, %from
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %list_add_tail.exit.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn23, i32 -16
  %feat_num.i = getelementptr i8, ptr %.pn23, i32 -7
  %3 = ptrtoint ptr %feat_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %feat_num.i, align 1
  %conv.i.i.i = zext i8 %4 to i32
  %5 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %6 = icmp ult i8 %5, 9
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %4)
  %cond.i.i.i = icmp eq i8 %4, -64
  %..i.i.i = select i1 %cond.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i = select i1 %6, i32 %sub.i.i.i, i32 %..i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %for.body.cloning_failed_crit_edge, label %dccp_feat_type.exit.i

for.body.cloning_failed_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cloning_failed

dccp_feat_type.exit.i:                            ; preds = %for.body
  %reconciliation.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 2
  %7 = ptrtoint ptr %reconciliation.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconciliation.i.i, align 4
  %conv.i.i = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i.i)
  %cmp.i = icmp eq i8 %conv.i.i, -1
  br i1 %cmp.i, label %dccp_feat_type.exit.i.cloning_failed_crit_edge, label %if.end.i

dccp_feat_type.exit.i.cloning_failed_crit_edge:   ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cloning_failed

if.end.i:                                         ; preds = %dccp_feat_type.exit.i
  %9 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %12, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call3.i = tail call ptr @kmemdup(ptr noundef %entry1.0, i32 noundef 24, i32 noundef %cond.i.i) #9
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %if.end.i.cloning_failed_crit_edge, label %if.end7.i

if.end.i.cloning_failed_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cloning_failed

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i)
  %cmp9.i = icmp eq i8 %conv.i.i, 4
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end7.i.if.end_crit_edge

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end7.i
  %13 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1.0, align 8
  %len.i = getelementptr i8, ptr %.pn23, i32 -12
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len.i, align 4
  %len1.i.i = getelementptr inbounds %struct.anon, ptr %call3.i, i32 0, i32 1
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %conv.i24.i = zext i8 %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %and.i.i.i = and i32 %21, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i25.i = select i1 %tobool.not.i.i.i, i32 3264, i32 2592
  %call5.i.i = tail call ptr @kmemdup(ptr noundef %14, i32 noundef %conv.i24.i, i32 noundef %cond.i.i25.i) #9
  %22 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %call3.i, align 8
  %cmp7.i.i = icmp eq ptr %call5.i.i, null
  br i1 %cmp7.i.i, label %if.then14.i, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then14.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %len1.i.i.le = getelementptr inbounds %struct.anon, ptr %call3.i, i32 0, i32 1
  %23 = ptrtoint ptr %len1.i.i.le to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %len1.i.i.le, align 4
  tail call void @kfree(ptr noundef nonnull %call3.i) #9
  br label %cloning_failed

if.end:                                           ; preds = %if.then.i.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge
  %node3 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call3.i, i32 0, i32 7
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node3, ptr noundef %25, ptr noundef %to) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node3, ptr %prev.i, align 4
  %27 = ptrtoint ptr %node3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %to, ptr %node3, align 4
  %prev3.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call3.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node3, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %30 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %from
  br i1 %cmp.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cloning_failed:                                   ; preds = %if.then14.i, %if.end.i.cloning_failed_crit_edge, %dccp_feat_type.exit.i.cloning_failed_crit_edge, %for.body.cloning_failed_crit_edge
  %31 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %to, align 4
  %cmp.not19.i = icmp eq ptr %32, %to
  br i1 %cmp.not19.i, label %cloning_failed.dccp_feat_list_purge.exit_crit_edge, label %cloning_failed.for.body.i_crit_edge

cloning_failed.for.body.i_crit_edge:              ; preds = %cloning_failed
  br label %for.body.i

cloning_failed.dccp_feat_list_purge.exit_crit_edge: ; preds = %cloning_failed
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_purge.exit

for.body.i:                                       ; preds = %dccp_feat_entry_destructor.exit.i.for.body.i_crit_edge, %cloning_failed.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %dccp_feat_entry_destructor.exit.i.for.body.i_crit_edge ], [ %32, %cloning_failed.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %33 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 8
  %cmp.not.i.i17 = icmp eq ptr %entry1.0.i, null
  br i1 %cmp.not.i.i17, label %for.body.i.dccp_feat_entry_destructor.exit.i_crit_edge, label %if.end.i.i.i

for.body.i.dccp_feat_entry_destructor.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_entry_destructor.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  %feat_num.i.i = getelementptr i8, ptr %.pn.in20.i, i32 -7
  %34 = ptrtoint ptr %feat_num.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %feat_num.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %35 to i32
  %36 = add i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %36)
  %37 = icmp ult i8 %36, 9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %35)
  %cond.i.i.i.i.i = icmp eq i8 %35, -64
  %..i.i.i.i.i = select i1 %cond.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i = select i1 %37, i32 %sub.i.i.i.i.i, i32 %..i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge, label %dccp_feat_type.exit.i.i.i

if.end.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_type.exit.i.i.i:                        ; preds = %if.end.i.i.i
  %reconciliation.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i, i32 2
  %38 = ptrtoint ptr %reconciliation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reconciliation.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %39 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i)
  %cmp2.i.i.i = icmp eq i8 %conv.i.i.i.i, 4
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge

dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

if.then4.i.i.i:                                   ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entry1.0.i, align 8
  tail call void @kfree(ptr noundef %41) #9
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_val_destructor.exit.i.i:                ; preds = %if.then4.i.i.i, %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge, %if.end.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge
  %42 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %entry1.0.i, align 8
  tail call void @kfree(ptr noundef nonnull %entry1.0.i) #9
  br label %dccp_feat_entry_destructor.exit.i

dccp_feat_entry_destructor.exit.i:                ; preds = %dccp_feat_val_destructor.exit.i.i, %for.body.i.dccp_feat_entry_destructor.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn.i, %to
  br i1 %cmp.not.i, label %dccp_feat_entry_destructor.exit.i.dccp_feat_list_purge.exit_crit_edge, label %dccp_feat_entry_destructor.exit.i.for.body.i_crit_edge

dccp_feat_entry_destructor.exit.i.for.body.i_crit_edge: ; preds = %dccp_feat_entry_destructor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dccp_feat_entry_destructor.exit.i.dccp_feat_list_purge.exit_crit_edge: ; preds = %dccp_feat_entry_destructor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_purge.exit

dccp_feat_list_purge.exit:                        ; preds = %dccp_feat_entry_destructor.exit.i.dccp_feat_list_purge.exit_crit_edge, %cloning_failed.dccp_feat_list_purge.exit_crit_edge
  %43 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %to, ptr %to, align 4
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %to, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dccp_feat_list_purge.exit, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %dccp_feat_list_purge.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_insert_opts(ptr noundef readonly %dp, ptr noundef readonly %dreq, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %fval.i = alloca %union.dccp_feat_val, align 8
  %nn_in_nbo = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dreq, null
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 7
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %dp, i32 0, i32 22
  %cond = select i1 %tobool.not, ptr %dccps_featneg, ptr %dreq_featneg
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %nn_in_nbo) #9
  %prev = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  %0 = call ptr @memset(ptr %nn_in_nbo, i32 255, i32 6)
  %1 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev, align 4
  %cmp.not153 = icmp eq ptr %2, %cond
  br i1 %cmp.not153, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %len1.i = getelementptr inbounds %struct.anon, ptr %fval.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn134154 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn159, %for.inc.for.body_crit_edge ]
  %pos.0157 = getelementptr i8, ptr %.pn134154, i32 -16
  %.pn159.in = getelementptr %struct.list_head, ptr %.pn134154, i32 0, i32 1
  %4 = ptrtoint ptr %.pn159.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn159 = load ptr, ptr %.pn159.in, align 4
  %needs_confirm.i = getelementptr i8, ptr %.pn134154, i32 -5
  %5 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_confirm.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %is_local3.i = getelementptr i8, ptr %.pn134154, i32 -3
  %7 = ptrtoint ptr %is_local3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_local3.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  %conv.i = select i1 %tobool4.not.i, i8 35, i8 33
  %conv7.i = select i1 %tobool4.not.i, i8 34, i8 32
  %retval.0.i = select i1 %tobool.not.i, i8 %conv7.i, i8 %conv.i
  %feat_num = getelementptr i8, ptr %.pn134154, i32 -7
  %9 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %feat_num, align 1
  %conv.i.i = zext i8 %10 to i32
  %11 = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %12 = icmp ult i8 %11, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %10)
  %cond.i.i = icmp eq i8 %10, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %12, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %for.body.dccp_feat_type.exit_crit_edge, label %if.end.i

for.body.dccp_feat_type.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_type.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %13 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reconciliation.i, align 4
  %conv.i136 = trunc i32 %14 to i8
  br label %dccp_feat_type.exit

dccp_feat_type.exit:                              ; preds = %if.end.i, %for.body.dccp_feat_type.exit_crit_edge
  %retval.0.i137 = phi i8 [ %conv.i136, %if.end.i ], [ -1, %for.body.dccp_feat_type.exit_crit_edge ]
  %empty_confirm = getelementptr i8, ptr %.pn134154, i32 -4
  %15 = ptrtoint ptr %empty_confirm to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %empty_confirm, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.else, label %dccp_feat_type.exit.do.body33_crit_edge

dccp_feat_type.exit.do.body33_crit_edge:          ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.else:                                          ; preds = %dccp_feat_type.exit
  %17 = zext i8 %retval.0.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %retval.0.i137, label %do.end [
    i8 4, label %if.then10
    i8 8, label %if.then18
  ]

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %len11 = getelementptr i8, ptr %.pn134154, i32 -12
  %18 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len11, align 4
  %20 = ptrtoint ptr %pos.0157 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pos.0157, align 8
  %22 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_confirm.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13 = icmp ne i8 %23, 0
  br label %do.body33

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %switch.selectcmp.i = icmp eq i8 %10, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i8 6, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %switch.selectcmp8.i = icmp eq i8 %10, 5
  %switch.select9.i = select i1 %switch.selectcmp8.i, i8 2, i8 %switch.select.i
  %24 = ptrtoint ptr %pos.0157 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos.0157, align 8
  call void @dccp_encode_value_var(i64 noundef %25, ptr noundef nonnull %nn_in_nbo, i8 noundef zeroext %switch.select9.i) #9
  br label %do.body33

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.le = zext i8 %10 to i32
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv.i.i.le, ptr noundef nonnull @.str.2, i32 noundef 660, ptr noundef nonnull @.str.1) #12
  call void @dump_stack() #12
  br label %cleanup

do.body33:                                        ; preds = %if.then18, %if.then10, %dccp_feat_type.exit.do.body33_crit_edge
  %rpt.0.off0 = phi i1 [ %tobool13, %if.then10 ], [ false, %if.then18 ], [ false, %dccp_feat_type.exit.do.body33_crit_edge ]
  %ptr.0 = phi ptr [ %21, %if.then10 ], [ %nn_in_nbo, %if.then18 ], [ null, %dccp_feat_type.exit.do.body33_crit_edge ]
  %len.0 = phi i8 [ %19, %if.then10 ], [ %switch.select9.i, %if.then18 ], [ 0, %dccp_feat_type.exit.do.body33_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %26 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool34.not = icmp eq i8 %26, 0
  br i1 %tobool34.not, label %do.body33.do.end46_crit_edge, label %do.end38

do.body33.do.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end38:                                         ; preds = %do.body33
  %27 = and i8 %retval.0.i, 3
  %28 = xor i8 %27, 2
  %29 = zext i8 %28 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_feat_insert_opts, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %31 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %feat_num, align 1
  %conv.i139 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %32)
  %33 = icmp sgt i8 %32, 9
  br i1 %33, label %do.end38.dccp_feat_fname.exit_crit_edge, label %if.end.i140

do.end38.dccp_feat_fname.exit_crit_edge:          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end.i140:                                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %32)
  %cmp6.i = icmp eq i8 %32, -64
  br i1 %cmp6.i, label %if.end.i140.dccp_feat_fname.exit_crit_edge, label %if.end9.i

if.end.i140.dccp_feat_fname.exit_crit_edge:       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end9.i:                                        ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp11.i = icmp slt i8 %32, 0
  br i1 %cmp11.i, label %if.end9.i.dccp_feat_fname.exit_crit_edge, label %if.end14.i

if.end9.i.dccp_feat_fname.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i139
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  br label %dccp_feat_fname.exit

dccp_feat_fname.exit:                             ; preds = %if.end14.i, %if.end9.i.dccp_feat_fname.exit_crit_edge, %if.end.i140.dccp_feat_fname.exit_crit_edge, %do.end38.dccp_feat_fname.exit_crit_edge
  %retval.0.i141 = phi ptr [ %35, %if.end14.i ], [ @.str.35, %do.end38.dccp_feat_fname.exit_crit_edge ], [ @.str.45, %if.end.i140.dccp_feat_fname.exit_crit_edge ], [ @.str.46, %if.end9.i.dccp_feat_fname.exit_crit_edge ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %switch.load, ptr noundef %retval.0.i141) #12
  br label %do.end46

do.end46:                                         ; preds = %dccp_feat_fname.exit, %do.body33.do.end46_crit_edge
  %36 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %feat_num, align 1
  %conv.i.i.i = zext i8 %37 to i32
  %38 = add i8 %37, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %39 = icmp ult i8 %38, 9
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %37)
  %cond.i.i.i = icmp eq i8 %37, -64
  %..i.i.i = select i1 %cond.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i = select i1 %39, i32 %sub.i.i.i, i32 %..i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %dccp_feat_type.exit.thread.i, label %dccp_feat_type.exit.i

dccp_feat_type.exit.thread.i:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i) #9
  %40 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %fval.i, align 8, !annotation !214
  store ptr %ptr.0, ptr %fval.i, align 8
  %41 = ptrtoint ptr %len1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %len.0, ptr %len1.i, align 4
  br label %dccp_feat_printvals.exit

dccp_feat_type.exit.i:                            ; preds = %do.end46
  %reconciliation.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 2
  %42 = ptrtoint ptr %reconciliation.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reconciliation.i.i, align 4
  %conv.i.i142 = trunc i32 %43 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i) #9
  %44 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %fval.i, align 8, !annotation !214
  store ptr %ptr.0, ptr %fval.i, align 8
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %len.0, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i142)
  %cmp.i143 = icmp eq i8 %conv.i.i142, 8
  br i1 %cmp.i143, label %if.then.i, label %dccp_feat_type.exit.i.dccp_feat_printvals.exit_crit_edge

dccp_feat_type.exit.i.dccp_feat_printvals.exit_crit_edge: ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_printvals.exit

if.then.i:                                        ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i64 @dccp_decode_value_var(ptr noundef %ptr.0, i8 noundef zeroext %len.0) #9
  %46 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %call3.i, ptr %fval.i, align 8
  br label %dccp_feat_printvals.exit

dccp_feat_printvals.exit:                         ; preds = %if.then.i, %dccp_feat_type.exit.i.dccp_feat_printvals.exit_crit_edge, %dccp_feat_type.exit.thread.i
  call fastcc void @dccp_feat_printval(i8 noundef zeroext %37, ptr noundef nonnull %fval.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fval.i) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %47 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool49.not = icmp eq i8 %47, 0
  br i1 %tobool49.not, label %dccp_feat_printvals.exit.do.end60_crit_edge, label %do.end53

dccp_feat_printvals.exit.do.end60_crit_edge:      ; preds = %dccp_feat_printvals.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

do.end53:                                         ; preds = %dccp_feat_printvals.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #12
  br label %do.end60

do.end60:                                         ; preds = %do.end53, %dccp_feat_printvals.exit.do.end60_crit_edge
  %48 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %feat_num, align 1
  %call63 = call i32 @dccp_insert_fn_opt(ptr noundef %skb, i8 noundef zeroext %retval.0.i, i8 noundef zeroext %49, ptr noundef %ptr.0, i8 noundef zeroext %len.0, i1 noundef zeroext %rpt.0.off0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %do.end60
  %needs_mandatory = getelementptr i8, ptr %.pn134154, i32 -6
  %50 = ptrtoint ptr %needs_mandatory to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %needs_mandatory, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool67.not = icmp eq i8 %51, 0
  br i1 %tobool67.not, label %if.end66.if.end72_crit_edge, label %land.lhs.true

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end66
  %call69 = call i32 @dccp_insert_option_mandatory(ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end72_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %if.end66.if.end72_crit_edge
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp74 = icmp eq i8 %55, 1
  br i1 %cmp74, label %land.lhs.true76, label %if.end72.if.else84_crit_edge

if.end72.if.else84_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else84

land.lhs.true76:                                  ; preds = %if.end72
  %trunc148 = trunc i8 %retval.0.i to i2
  %56 = zext i2 %trunc148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.107)
  switch i2 %trunc148, label %land.lhs.true76.if.else84_crit_edge [
    i2 -1, label %land.lhs.true76.if.then83_crit_edge
    i2 1, label %land.lhs.true76.if.then83_crit_edge170
  ]

land.lhs.true76.if.then83_crit_edge170:           ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

land.lhs.true76.if.then83_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

land.lhs.true76.if.else84_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else84

if.then83:                                        ; preds = %land.lhs.true76.if.then83_crit_edge, %land.lhs.true76.if.then83_crit_edge170
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn134154) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then83.list_del.exit.i_crit_edge

if.then83.list_del.exit.i_crit_edge:              ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %.pn159.in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn159.in, align 4
  %59 = ptrtoint ptr %.pn134154 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %.pn134154, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then83.list_del.exit.i_crit_edge
  %63 = ptrtoint ptr %.pn134154 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn134154, align 4
  %64 = ptrtoint ptr %.pn159.in to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn159.in, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0157, null
  br i1 %cmp.not.i.i, label %list_del.exit.i.for.inc_crit_edge, label %if.end.i.i3.i

list_del.exit.i.for.inc_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i3.i:                                    ; preds = %list_del.exit.i
  %65 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %feat_num, align 1
  %conv.i.i.i.i.i = zext i8 %66 to i32
  %67 = add i8 %66, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %67)
  %68 = icmp ult i8 %67, 9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %66)
  %cond.i.i.i.i.i = icmp eq i8 %66, -64
  %..i.i.i.i.i = select i1 %cond.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i = select i1 %68, i32 %sub.i.i.i.i.i, i32 %..i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge, label %dccp_feat_type.exit.i.i.i

if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_type.exit.i.i.i:                        ; preds = %if.end.i.i3.i
  %reconciliation.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i, i32 2
  %69 = ptrtoint ptr %reconciliation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reconciliation.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %70 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i)
  %cmp2.i.i.i = icmp eq i8 %conv.i.i.i.i, 4
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge

dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

if.then4.i.i.i:                                   ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %pos.0157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pos.0157, align 8
  call void @kfree(ptr noundef %72) #9
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_val_destructor.exit.i.i:                ; preds = %if.then4.i.i.i, %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge, %if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge
  %73 = ptrtoint ptr %pos.0157 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %pos.0157, align 8
  call void @kfree(ptr noundef nonnull %pos.0157) #9
  br label %for.inc

if.else84:                                        ; preds = %land.lhs.true76.if.else84_crit_edge, %if.end72.if.else84_crit_edge
  %state = getelementptr i8, ptr %.pn134154, i32 -8
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp85 = icmp eq i8 %bf.load, 1
  br i1 %cmp85, label %if.then87, label %if.else84.for.inc_crit_edge

if.else84.for.inc_crit_edge:                      ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %state, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then87, %if.else84.for.inc_crit_edge, %dccp_feat_val_destructor.exit.i.i, %list_del.exit.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn159, %cond
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end60.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -1, %do.end60.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %nn_in_nbo) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_encode_value_var(i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_insert_fn_opt(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_insert_option_mandatory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_register_sp(ptr noundef %sk, i8 noundef zeroext %feat, i8 noundef zeroext %is_local, ptr noundef %list, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.not = icmp eq i8 %1, 7
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %conv.i.i = zext i8 %feat to i32
  %2 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %3 = icmp ult i8 %2, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i = icmp eq i8 %feat, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %3, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.end.return_crit_edge, label %dccp_feat_type.exit

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

dccp_feat_type.exit:                              ; preds = %if.end
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %4 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp3.not = icmp eq i8 %conv.i, 4
  br i1 %cmp3.not, label %if.end6, label %dccp_feat_type.exit.return_crit_edge

dccp_feat_type.exit.return_crit_edge:             ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  %call8 = tail call fastcc i32 @__feat_register_sp(ptr noundef %dccps_featneg, i8 noundef zeroext %feat, i8 noundef zeroext %is_local, i8 noundef zeroext 0, ptr noundef %list, i8 noundef zeroext %len)
  br label %return

return:                                           ; preds = %if.end6, %dccp_feat_type.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -106, %entry.return_crit_edge ], [ -22, %dccp_feat_type.exit.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__feat_register_sp(ptr noundef %fn, i8 noundef zeroext %feat, i8 noundef zeroext %is_local, i8 noundef zeroext %mandatory, ptr noundef %sp_val, i8 noundef zeroext %sp_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %feat to i32
  %0 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %0)
  %1 = icmp ult i8 %0, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i = icmp eq i8 %feat, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %1, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %dccp_feat_type.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dccp_feat_type.exit:                              ; preds = %entry
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %2 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp.not = icmp eq i8 %conv.i, 4
  br i1 %cmp.not, label %lor.lhs.false, label %dccp_feat_type.exit.cleanup_crit_edge

dccp_feat_type.exit.cleanup_crit_edge:            ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %dccp_feat_type.exit
  %cmp.i24 = icmp eq ptr %sp_val, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sp_len)
  %cmp1.i = icmp eq i8 %sp_len, 0
  %or.cond.i = or i1 %cmp.i24, %cmp1.i
  br i1 %or.cond.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.cond.i_crit_edge

lor.lhs.false.while.cond.i_crit_edge:             ; preds = %lor.lhs.false
  br label %while.cond.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %lor.lhs.false.while.cond.i_crit_edge
  %sp_list.addr.0.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ %sp_val, %lor.lhs.false.while.cond.i_crit_edge ]
  %sp_len.addr.0.i = phi i8 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %sp_len, %lor.lhs.false.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sp_len.addr.0.i)
  %tobool.not.i = icmp eq i8 %sp_len.addr.0.i, 0
  br i1 %tobool.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i8 %sp_len.addr.0.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %sp_list.addr.0.i, i32 1
  %4 = ptrtoint ptr %sp_list.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sp_list.addr.0.i, align 1
  %call.i = tail call fastcc zeroext i8 @dccp_feat_is_valid_sp_val(i8 noundef zeroext %feat, i8 noundef zeroext %5) #9
  %tobool3.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool3.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %feat)
  %cmp4 = icmp eq i8 %feat, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call zeroext i1 @ccid_support_check(ptr noundef %sp_val, i8 noundef zeroext %sp_len) #9
  br i1 %call6, label %land.lhs.true.if.then.i_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %conv.i26 = zext i8 %sp_len to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %9, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i27 = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call5.i = tail call ptr @kmemdup(ptr noundef %sp_val, i32 noundef %conv.i26, i32 noundef %cond.i.i27) #9
  %10 = ptrtoint ptr %call5.i to i32
  %cmp7.i = icmp eq ptr %call5.i, null
  br i1 %cmp7.i, label %if.then.i.cleanup_crit_edge, label %if.end12

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_local)
  %tobool.i = icmp ne i8 %is_local, 0
  %call.i29 = tail call fastcc ptr @dccp_feat_entry_new(ptr noundef %fn, i8 noundef zeroext %feat, i1 noundef zeroext %tobool.i) #9
  %cmp.i30 = icmp eq ptr %call.i29, null
  br i1 %cmp.i30, label %if.then15, label %dccp_feat_push_change.exit.thread

dccp_feat_push_change.exit.thread:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 2
  %11 = ptrtoint ptr %feat_num.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %feat, ptr %feat_num.i, align 1
  %is_local.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i to i8
  %12 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %is_local.i, align 1
  %state.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %state.i, align 8
  %needs_confirm.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 4
  %14 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %needs_confirm.i, align 1
  %empty_confirm.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 5
  %15 = ptrtoint ptr %empty_confirm.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %empty_confirm.i, align 4
  %16 = ptrtoint ptr %call.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %call.i29, align 8
  %call.i29.sroa_idx = getelementptr inbounds i8, ptr %call.i29, i32 4
  %17 = ptrtoint ptr %call.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %sp_len, ptr %call.i29.sroa_idx, align 4
  %call.i29.sroa_idx34 = getelementptr inbounds i8, ptr %call.i29, i32 5
  %18 = ptrtoint ptr %call.i29.sroa_idx34 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 3)
  store i24 -1, ptr %call.i29.sroa_idx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool2.i = icmp ne i8 %mandatory, 0
  %needs_mandatory.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i29, i32 0, i32 3
  %frombool3.i = zext i1 %tobool2.i to i8
  %19 = ptrtoint ptr %needs_mandatory.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool3.i, ptr %needs_mandatory.i, align 2
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call5.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %dccp_feat_push_change.exit.thread, %if.then.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %dccp_feat_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then15 ], [ -22, %dccp_feat_type.exit.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ 0, %dccp_feat_push_change.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dccp_feat_nn_get(ptr noundef readonly %sk, i8 noundef zeroext %feat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %feat to i32
  %0 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %0)
  %1 = icmp ult i8 %0, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i = icmp eq i8 %feat, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %1, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %dccp_feat_type.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dccp_feat_type.exit:                              ; preds = %entry
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %2 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp = icmp eq i8 %conv.i, 8
  br i1 %cmp, label %if.then, label %dccp_feat_type.exit.do.end_crit_edge

dccp_feat_type.exit.do.end_crit_edge:             ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %dccp_feat_type.exit
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %dccps_featneg, %if.then ], [ %.pn.i, %if.else.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dccps_featneg
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %feat_num2.i = getelementptr i8, ptr %.pn.i, i32 -7
  %5 = ptrtoint ptr %feat_num2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %feat_num2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %feat)
  %cmp4.i = icmp eq i8 %6, %feat
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %is_local6.i = getelementptr i8, ptr %.pn.i, i32 -3
  %7 = ptrtoint ptr %is_local6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_local6.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10.i = icmp eq i8 %8, 1
  br i1 %cmp10.i, label %dccp_feat_list_lookup.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %cmp15.i = icmp ugt i8 %6, %feat
  br i1 %cmp15.i, label %if.else.i.if.end_crit_edge, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dccp_feat_list_lookup.exit:                       ; preds = %land.lhs.true.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp5.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %cmp5.not, label %dccp_feat_list_lookup.exit.if.end_crit_edge, label %if.then7

dccp_feat_list_lookup.exit.if.end_crit_edge:      ; preds = %dccp_feat_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %dccp_feat_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %entry1.0.le.i, align 8
  br label %return

if.end:                                           ; preds = %dccp_feat_list_lookup.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %11 = zext i8 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %feat, label %if.end.do.end_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb10
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_l_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 16
  %12 = ptrtoint ptr %dccps_l_ack_ratio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dccps_l_ack_ratio, align 4
  %conv9 = zext i16 %13 to i64
  br label %return

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_l_seq_win = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 18
  %14 = ptrtoint ptr %dccps_l_seq_win to i32
  call void @__asan_load8_noabort(i32 %14)
  %bf.load = load i64, ptr %dccps_l_seq_win, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  br label %return

do.end:                                           ; preds = %if.end.do.end_crit_edge, %dccp_feat_type.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv.i.i, ptr noundef nonnull @.str.2, i32 noundef 792, ptr noundef nonnull @.str.11) #12
  tail call void @dump_stack() #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb10, %sw.bb, %if.then7
  %retval.1 = phi i64 [ 0, %do.end ], [ %conv9, %sw.bb ], [ %bf.lshr, %sw.bb10 ], [ %10, %if.then7 ]
  ret i64 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_signal_nn_change(ptr noundef %sk, i8 noundef zeroext %feat, i64 noundef %nn_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %3)
  %cmp6.not = icmp eq i8 %3, 13
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.i.i = zext i8 %feat to i32
  %4 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %4)
  %5 = icmp ult i8 %4, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i = icmp eq i8 %feat, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %5, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %dccp_feat_type.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dccp_feat_type.exit:                              ; preds = %if.end
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %6 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp10.not = icmp eq i8 %conv.i, 8
  br i1 %cmp10.not, label %lor.lhs.false, label %dccp_feat_type.exit.cleanup_crit_edge

dccp_feat_type.exit.cleanup_crit_edge:            ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %dccp_feat_type.exit
  %8 = zext i8 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %feat, label %lor.lhs.false.cleanup_crit_edge [
    i8 5, label %dccp_feat_is_valid_nn_val.exit
    i8 3, label %sw.bb3.i
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3.i:                                         ; preds = %lor.lhs.false
  %9 = add i64 %nn_val, -32
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177632, i64 %9)
  %10 = icmp ult i64 %9, 70368744177632
  br i1 %10, label %sw.bb3.i.if.end14_crit_edge, label %sw.bb3.i.cleanup_crit_edge

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3.i.if.end14_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

dccp_feat_is_valid_nn_val.exit:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %nn_val)
  %cmp.i49 = icmp ult i64 %nn_val, 65536
  br i1 %cmp.i49, label %dccp_feat_is_valid_nn_val.exit.if.end14_crit_edge, label %dccp_feat_is_valid_nn_val.exit.cleanup_crit_edge

dccp_feat_is_valid_nn_val.exit.cleanup_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dccp_feat_is_valid_nn_val.exit.if.end14_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %dccp_feat_is_valid_nn_val.exit.if.end14_crit_edge, %sw.bb3.i.if.end14_crit_edge
  %call15 = tail call i64 @dccp_feat_nn_get(ptr noundef %sk, i8 noundef zeroext %feat)
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %nn_val)
  %cmp16 = icmp eq i64 %call15, %nn_val
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end14.for.cond.i_crit_edge

if.end14.for.cond.i_crit_edge:                    ; preds = %if.end14
  br label %for.cond.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %if.end14.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %if.else.i.for.cond.i_crit_edge ], [ %dccps_featneg, %if.end14.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dccps_featneg
  br i1 %cmp.not.i, label %for.cond.i.if.end31_crit_edge, label %for.body.i

for.cond.i.if.end31_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i:                                       ; preds = %for.cond.i
  %feat_num2.i = getelementptr i8, ptr %.pn.i, i32 -7
  %12 = ptrtoint ptr %feat_num2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %feat_num2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %feat)
  %cmp4.i = icmp eq i8 %13, %feat
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %is_local6.i = getelementptr i8, ptr %.pn.i, i32 -3
  %14 = ptrtoint ptr %is_local6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_local6.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp10.i = icmp eq i8 %15, 1
  br i1 %cmp10.i, label %dccp_feat_list_lookup.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %cmp15.i = icmp ugt i8 %13, %feat
  br i1 %cmp15.i, label %if.else.i.if.end31_crit_edge, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.else.i.if.end31_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

dccp_feat_list_lookup.exit:                       ; preds = %land.lhs.true.i
  %feat_num2.i.le = getelementptr i8, ptr %.pn.i, i32 -7
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp21.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %cmp21.not, label %dccp_feat_list_lookup.exit.if.end31_crit_edge, label %do.body

dccp_feat_list_lookup.exit.if.end31_crit_edge:    ; preds = %dccp_feat_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body:                                          ; preds = %dccp_feat_list_lookup.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %16 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  br i1 %tobool24.not, label %do.body.do.end30_crit_edge, label %do.end

do.body.do.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %entry1.0.le.i, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef %18, i64 noundef %nn_val) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end, %do.body.do.end30_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end30.if.end.i.i3.i_crit_edge

do.end30.if.end.i.i3.i_crit_edge:                 ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i3.i

if.end.i.i.i:                                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %if.end.i.i3.i

if.end.i.i3.i:                                    ; preds = %if.end.i.i.i, %do.end30.if.end.i.i3.i_crit_edge
  %25 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %feat_num2.i.le to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %feat_num2.i.le, align 1
  %conv.i.i.i.i.i = zext i8 %28 to i32
  %29 = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %29)
  %30 = icmp ult i8 %29, 9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %28)
  %cond.i.i.i.i.i = icmp eq i8 %28, -64
  %..i.i.i.i.i = select i1 %cond.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i = select i1 %30, i32 %sub.i.i.i.i.i, i32 %..i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge, label %dccp_feat_type.exit.i.i.i

if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge:  ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit

dccp_feat_type.exit.i.i.i:                        ; preds = %if.end.i.i3.i
  %reconciliation.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i, i32 2
  %31 = ptrtoint ptr %reconciliation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reconciliation.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %32 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i)
  %cmp2.i.i.i = icmp eq i8 %conv.i.i.i.i, 4
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge

dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit

if.then4.i.i.i:                                   ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entry1.0.le.i, align 8
  tail call void @kfree(ptr noundef %34) #9
  br label %dccp_feat_list_pop.exit

dccp_feat_list_pop.exit:                          ; preds = %if.then4.i.i.i, %dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge, %if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge
  %35 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %entry1.0.le.i, align 8
  tail call void @kfree(ptr noundef nonnull %entry1.0.le.i) #9
  br label %if.end31

if.end31:                                         ; preds = %dccp_feat_list_pop.exit, %dccp_feat_list_lookup.exit.if.end31_crit_edge, %if.else.i.if.end31_crit_edge, %for.cond.i.if.end31_crit_edge
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %36 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %icsk_ack.i, align 4
  %38 = or i8 %37, 1
  store i8 %38, ptr %icsk_ack.i, align 4
  %call.i = tail call fastcc ptr @dccp_feat_entry_new(ptr noundef %dccps_featneg, i8 noundef zeroext %feat, i1 noundef zeroext true) #9
  %cmp.i52 = icmp eq ptr %call.i, null
  br i1 %cmp.i52, label %if.end31.cleanup_crit_edge, label %if.end.i53

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i53:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %feat_num.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %feat, ptr %feat_num.i, align 1
  %is_local.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %is_local.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %is_local.i, align 1
  %state.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %state.i, align 8
  %needs_confirm.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %needs_confirm.i, align 1
  %empty_confirm.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %empty_confirm.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %empty_confirm.i, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %nn_val, ptr %call.i, align 8
  %needs_mandatory.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %needs_mandatory.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %needs_mandatory.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i53, %if.end31.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %dccp_feat_is_valid_nn_val.exit.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %dccp_feat_type.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %dccp_feat_is_valid_nn_val.exit.cleanup_crit_edge ], [ -22, %dccp_feat_type.exit.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.i53 ], [ -12, %if.end31.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_finalise_settings(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %ccids = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %dp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ccids) #9
  %0 = ptrtoint ptr %ccids to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ccids, align 8
  %1 = ptrtoint ptr %dccps_featneg to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn70 = load ptr, ptr %dccps_featneg, align 4
  %cmp.not72 = icmp eq ptr %.pn70, %dccps_featneg
  br i1 %cmp.not72, label %entry.while.cond.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %arrayidx16 = getelementptr inbounds [2 x i32], ptr %ccids, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp sgt i32 %3, 0
  br i1 %cmp17, label %land.lhs.true19, label %while.cond.preheader.if.end25_crit_edge

while.cond.preheader.if.end25_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn73 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn70, %entry.for.body_crit_edge ]
  %entry1.074 = getelementptr i8, ptr %.pn73, i32 -16
  %feat_num = getelementptr i8, ptr %.pn73, i32 -7
  %4 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %feat_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2 = icmp eq i8 %5, 1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %len = getelementptr i8, ptr %.pn73, i32 -12
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5 = icmp eq i8 %7, 1
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %entry1.074 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entry1.074, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv8 = zext i8 %11 to i32
  %is_local = getelementptr i8, ptr %.pn73, i32 -3
  %12 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_local, align 1, !range !213
  %14 = zext i8 %13 to i32
  %arrayidx9 = getelementptr [2 x i32], ptr %ccids, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn73, align 4
  %cmp.not = icmp eq ptr %.pn, %dccps_featneg
  br i1 %cmp.not, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

land.lhs.true19:                                  ; preds = %while.cond.preheader
  %conv21 = trunc i32 %3 to i8
  %call = tail call fastcc i32 @dccp_feat_propagate_ccid(ptr noundef %dccps_featneg, i8 noundef zeroext %conv21, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %land.lhs.true19.if.end25_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %while.cond.preheader.if.end25_crit_edge
  %17 = ptrtoint ptr %ccids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ccids, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.1 = icmp sgt i32 %18, 0
  br i1 %cmp17.1, label %land.lhs.true19.1, label %if.end25.if.end25.1_crit_edge

if.end25.if.end25.1_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.1

land.lhs.true19.1:                                ; preds = %if.end25
  %conv21.1 = trunc i32 %18 to i8
  %call.1 = tail call fastcc i32 @dccp_feat_propagate_ccid(ptr noundef %dccps_featneg, i8 noundef zeroext %conv21.1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool23.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool23.not.1, label %land.lhs.true19.1.if.end25.1_crit_edge, label %land.lhs.true19.1.cleanup_crit_edge

land.lhs.true19.1.cleanup_crit_edge:              ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19.1.if.end25.1_crit_edge:           ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.1

if.end25.1:                                       ; preds = %land.lhs.true19.1.if.end25.1_crit_edge, %if.end25.if.end25.1_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %19 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  br i1 %tobool26.not, label %if.end25.1.do.end33_crit_edge, label %do.end

if.end25.1.do.end33_crit_edge:                    ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

do.end:                                           ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12
  br label %do.end33

do.end33:                                         ; preds = %do.end, %if.end25.1.do.end33_crit_edge
  %20 = ptrtoint ptr %dccps_featneg to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn6876 = load ptr, ptr %dccps_featneg, align 4
  %cmp40.not77 = icmp eq ptr %.pn6876, %dccps_featneg
  br i1 %cmp40.not77, label %do.end33.cleanup_crit_edge, label %do.end33.for.body43_crit_edge

do.end33.for.body43_crit_edge:                    ; preds = %do.end33
  br label %for.body43

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body43:                                       ; preds = %dccp_feat_print_entry.exit.for.body43_crit_edge, %do.end33.for.body43_crit_edge
  %.pn6878 = phi ptr [ %.pn68, %dccp_feat_print_entry.exit.for.body43_crit_edge ], [ %.pn6876, %do.end33.for.body43_crit_edge ]
  %___entry.0 = getelementptr i8, ptr %.pn6878, i32 -16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %21 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %for.body43.do.end5.i_crit_edge, label %do.end.i

for.body43.do.end5.i_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i:                                         ; preds = %for.body43
  %is_local.i = getelementptr i8, ptr %.pn6878, i32 -3
  %22 = ptrtoint ptr %is_local.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_local.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.22, ptr @.str.21
  %feat_num.i = getelementptr i8, ptr %.pn6878, i32 -7
  %24 = ptrtoint ptr %feat_num.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %feat_num.i, align 1
  %conv.i.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %25)
  %26 = icmp sgt i8 %25, 9
  br i1 %26, label %do.end.i.dccp_feat_fname.exit.i_crit_edge, label %if.end.i.i

do.end.i.dccp_feat_fname.exit.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %25)
  %cmp6.i.i = icmp eq i8 %25, -64
  br i1 %cmp6.i.i, label %if.end.i.i.dccp_feat_fname.exit.i_crit_edge, label %if.end9.i.i

if.end.i.i.dccp_feat_fname.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp11.i.i = icmp slt i8 %25, 0
  br i1 %cmp11.i.i, label %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge, label %if.end14.i.i

if.end9.i.i.dccp_feat_fname.exit.i_crit_edge:     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i

if.end14.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  br label %dccp_feat_fname.exit.i

dccp_feat_fname.exit.i:                           ; preds = %if.end14.i.i, %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge, %if.end.i.i.dccp_feat_fname.exit.i_crit_edge, %do.end.i.dccp_feat_fname.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end14.i.i ], [ @.str.35, %do.end.i.dccp_feat_fname.exit.i_crit_edge ], [ @.str.45, %if.end.i.i.dccp_feat_fname.exit.i_crit_edge ], [ @.str.46, %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %cond.i, ptr noundef %retval.0.i.i) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %dccp_feat_fname.exit.i, %for.body43.do.end5.i_crit_edge
  %feat_num6.i = getelementptr i8, ptr %.pn6878, i32 -7
  %29 = ptrtoint ptr %feat_num6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %feat_num6.i, align 1
  tail call fastcc void @dccp_feat_printval(i8 noundef zeroext %30, ptr noundef %___entry.0) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %31 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool8.not.i = icmp eq i8 %31, 0
  br i1 %tobool8.not.i, label %do.end5.i.dccp_feat_print_entry.exit_crit_edge, label %do.end11.i

do.end5.i.dccp_feat_print_entry.exit_crit_edge:   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_print_entry.exit

do.end11.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr i8, ptr %.pn6878, i32 -8
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %state.i, align 8
  %bf.cast.i = zext i8 %bf.load.i to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @dccp_feat_sname, i32 0, i32 %bf.cast.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %needs_confirm.i = getelementptr i8, ptr %.pn6878, i32 -5
  %35 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_confirm.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not.i = icmp eq i8 %36, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.9, ptr @.str.64
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %34, ptr noundef nonnull %cond14.i) #12
  br label %dccp_feat_print_entry.exit

dccp_feat_print_entry.exit:                       ; preds = %do.end11.i, %do.end5.i.dccp_feat_print_entry.exit_crit_edge
  %37 = ptrtoint ptr %.pn6878 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn68 = load ptr, ptr %.pn6878, align 4
  %cmp40.not = icmp eq ptr %.pn68, %dccps_featneg
  br i1 %cmp40.not, label %dccp_feat_print_entry.exit.cleanup_crit_edge, label %dccp_feat_print_entry.exit.for.body43_crit_edge

dccp_feat_print_entry.exit.for.body43_crit_edge:  ; preds = %dccp_feat_print_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

dccp_feat_print_entry.exit.cleanup_crit_edge:     ; preds = %dccp_feat_print_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %dccp_feat_print_entry.exit.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %land.lhs.true19.1.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end33.cleanup_crit_edge ], [ -1, %land.lhs.true19.1.cleanup_crit_edge ], [ -1, %land.lhs.true19.cleanup_crit_edge ], [ 0, %dccp_feat_print_entry.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ccids) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_feat_propagate_ccid(ptr noundef %fn, i8 noundef zeroext %id, i1 noundef zeroext %is_local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %id, label %entry.for.end_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb1.i
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom.i = zext i1 %is_local to i32
  %arrayidx.i = getelementptr [2 x [2 x %struct.ccid_dependency]], ptr @dccp_feat_ccid_deps.ccid2_dependencies, i32 0, i32 %idxprom.i
  br label %dccp_feat_ccid_deps.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom3.i = zext i1 %is_local to i32
  %arrayidx4.i = getelementptr [2 x [5 x %struct.ccid_dependency]], ptr @dccp_feat_ccid_deps.ccid3_dependencies, i32 0, i32 %idxprom3.i
  br label %dccp_feat_ccid_deps.exit

dccp_feat_ccid_deps.exit:                         ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx4.i, %sw.bb1.i ], [ %arrayidx.i, %sw.bb.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %dccp_feat_ccid_deps.exit.for.end_crit_edge, label %dccp_feat_ccid_deps.exit.land.rhs_crit_edge

dccp_feat_ccid_deps.exit.land.rhs_crit_edge:      ; preds = %dccp_feat_ccid_deps.exit
  br label %land.rhs

dccp_feat_ccid_deps.exit.for.end_crit_edge:       ; preds = %dccp_feat_ccid_deps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %dccp_feat_ccid_deps.exit.land.rhs_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %dccp_feat_ccid_deps.exit.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.ccid_dependency, ptr %retval.0.i, i32 %i.070
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp4.not = icmp eq i8 %2, 0
  br i1 %cmp4.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %conv.i.i = zext i8 %2 to i32
  %3 = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %4 = icmp ult i8 %3, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %2)
  %cond.i.i = icmp eq i8 %2, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %4, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %dccp_feat_type.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

dccp_feat_type.exit:                              ; preds = %for.body
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %5 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %6 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp10 = icmp eq i8 %conv.i, 4
  %is_local15 = getelementptr %struct.ccid_dependency, ptr %retval.0.i, i32 %i.070, i32 1
  %7 = ptrtoint ptr %is_local15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %is_local15, align 1
  br i1 %cmp10, label %if.then, label %dccp_feat_type.exit.i

if.then:                                          ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bf.load.lobit = lshr i8 %bf.load, 7
  %8 = lshr i8 %bf.load, 6
  %.lobit57 = and i8 %8, 1
  %val = getelementptr %struct.ccid_dependency, ptr %retval.0.i, i32 %i.070, i32 2
  %call23 = tail call fastcc i32 @__feat_register_sp(ptr noundef %fn, i8 noundef zeroext %2, i8 noundef zeroext %bf.load.lobit, i8 noundef zeroext %.lobit57, ptr noundef %val, i8 noundef zeroext 1)
  br label %for.inc

dccp_feat_type.exit.i:                            ; preds = %dccp_feat_type.exit
  %val34 = getelementptr %struct.ccid_dependency, ptr %retval.0.i, i32 %i.070, i32 2
  %9 = ptrtoint ptr %val34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val34, align 1
  %conv35 = zext i8 %10 to i64
  %11 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reconciliation.i, align 4
  %conv.i.i59 = trunc i32 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i59)
  %cmp.not.i = icmp eq i8 %conv.i.i59, 8
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %dccp_feat_type.exit.i.for.end_crit_edge

dccp_feat_type.exit.i.for.end_crit_edge:          ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false.i:                                  ; preds = %dccp_feat_type.exit.i
  %13 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %2, label %lor.lhs.false.i.for.end_crit_edge [
    i8 5, label %lor.lhs.false.i.dccp_feat_default_value.exit.i_crit_edge
    i8 3, label %sw.bb3.i.i
  ]

lor.lhs.false.i.dccp_feat_default_value.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_default_value.exit.i

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.bb3.i.i:                                       ; preds = %lor.lhs.false.i
  %14 = add nsw i64 %conv35, -32
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177632, i64 %14)
  %15 = icmp ult i64 %14, 70368744177632
  br i1 %15, label %sw.bb3.i.i.dccp_feat_default_value.exit.i_crit_edge, label %sw.bb3.i.i.for.end_crit_edge

sw.bb3.i.i.for.end_crit_edge:                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.bb3.i.i.dccp_feat_default_value.exit.i_crit_edge: ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_default_value.exit.i

dccp_feat_default_value.exit.i:                   ; preds = %sw.bb3.i.i.dccp_feat_default_value.exit.i_crit_edge, %lor.lhs.false.i.dccp_feat_default_value.exit.i_crit_edge
  %default_value.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 3
  %16 = ptrtoint ptr %default_value.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %default_value.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %10)
  %cmp5.i = icmp eq i8 %17, %10
  br i1 %cmp5.i, label %dccp_feat_default_value.exit.i.for.inc_crit_edge, label %if.end8.i

dccp_feat_default_value.exit.i.for.inc_crit_edge: ; preds = %dccp_feat_default_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8.i:                                        ; preds = %dccp_feat_default_value.exit.i
  %call.i.i = tail call fastcc ptr @dccp_feat_entry_new(ptr noundef %fn, i8 noundef zeroext %2, i1 noundef zeroext true) #9
  %cmp.i23.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i23.i, label %if.end8.i.for.end_crit_edge, label %if.end.i24.i

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i24.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %feat_num.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %2, ptr %feat_num.i.i, align 1
  %is_local.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %is_local.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_local.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %state.i.i, align 8
  %needs_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %needs_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %needs_confirm.i.i, align 1
  %empty_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %empty_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %empty_confirm.i.i, align 4
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv35, ptr %call.i.i, align 8
  %needs_mandatory.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 3
  %24 = lshr i8 %bf.load, 6
  %.lobit = and i8 %24, 1
  %25 = ptrtoint ptr %needs_mandatory.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.lobit, ptr %needs_mandatory.i.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.i24.i, %dccp_feat_default_value.exit.i.for.inc_crit_edge, %if.then
  %rc.1 = phi i32 [ %call23, %if.then ], [ 0, %dccp_feat_default_value.exit.i.for.inc_crit_edge ], [ 0, %if.end.i24.i ]
  %inc = add i32 %i.070, 1
  %cmp1 = icmp eq i32 %rc.1, 0
  br i1 %cmp1, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.i.for.end_crit_edge, %sw.bb3.i.i.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %dccp_feat_type.exit.i.for.end_crit_edge, %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %dccp_feat_ccid_deps.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 1, %dccp_feat_ccid_deps.exit.for.end_crit_edge ], [ 1, %entry.for.end_crit_edge ], [ -22, %dccp_feat_type.exit.i.for.end_crit_edge ], [ -12, %if.end8.i.for.end_crit_edge ], [ -22, %lor.lhs.false.i.for.end_crit_edge ], [ -22, %sw.bb3.i.i.for.end_crit_edge ], [ -22, %for.body.for.end_crit_edge ], [ %rc.1, %for.inc.for.end_crit_edge ], [ 0, %land.rhs.for.end_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_server_ccid_dependencies(ptr noundef %dreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 7
  br label %for.cond.i

for.cond.i.1:                                     ; preds = %if.end.for.cond.i.1_crit_edge, %if.else.i.1.for.cond.i.1_crit_edge
  %.pn.in.i.1 = phi ptr [ %.pn.i.1, %if.else.i.1.for.cond.i.1_crit_edge ], [ %dreq_featneg, %if.end.for.cond.i.1_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.1 = load ptr, ptr %.pn.in.i.1, align 4
  %cmp.not.i.1 = icmp eq ptr %.pn.i.1, %dreq_featneg
  br i1 %cmp.not.i.1, label %for.cond.i.1.if.end.1_crit_edge, label %for.body.i.1

for.cond.i.1.if.end.1_crit_edge:                  ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

for.body.i.1:                                     ; preds = %for.cond.i.1
  %feat_num2.i.1 = getelementptr i8, ptr %.pn.i.1, i32 -7
  %1 = ptrtoint ptr %feat_num2.i.1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %feat_num2.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp4.i.1 = icmp eq i8 %2, 1
  br i1 %cmp4.i.1, label %land.lhs.true.i.1, label %for.body.i.1.if.else.i.1_crit_edge

for.body.i.1.if.else.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.1

land.lhs.true.i.1:                                ; preds = %for.body.i.1
  %is_local6.i.1 = getelementptr i8, ptr %.pn.i.1, i32 -3
  %3 = ptrtoint ptr %is_local6.i.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_local6.i.1, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp10.i.1 = icmp eq i8 %4, 1
  br i1 %cmp10.i.1, label %dccp_feat_list_lookup.exit.1, label %land.lhs.true.i.1.if.else.i.1_crit_edge

land.lhs.true.i.1.if.else.i.1_crit_edge:          ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.1

if.else.i.1:                                      ; preds = %land.lhs.true.i.1.if.else.i.1_crit_edge, %for.body.i.1.if.else.i.1_crit_edge
  %cmp15.i.1 = icmp ugt i8 %2, 1
  br i1 %cmp15.i.1, label %if.else.i.1.if.end.1_crit_edge, label %if.else.i.1.for.cond.i.1_crit_edge

if.else.i.1.for.cond.i.1_crit_edge:               ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.1

if.else.i.1.if.end.1_crit_edge:                   ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

dccp_feat_list_lookup.exit.1:                     ; preds = %land.lhs.true.i.1
  %entry1.0.le.i.1 = getelementptr i8, ptr %.pn.i.1, i32 -16
  %cmp3.not.1 = icmp eq ptr %entry1.0.le.i.1, null
  br i1 %cmp3.not.1, label %dccp_feat_list_lookup.exit.1.if.end.1_crit_edge, label %land.lhs.true.1

dccp_feat_list_lookup.exit.1.if.end.1_crit_edge:  ; preds = %dccp_feat_list_lookup.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %dccp_feat_list_lookup.exit.1
  %empty_confirm.1 = getelementptr i8, ptr %.pn.i.1, i32 -4
  %5 = ptrtoint ptr %empty_confirm.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %empty_confirm.1, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.1 = icmp eq i8 %6, 0
  br i1 %tobool5.not.1, label %if.then.1, label %land.lhs.true.1.if.end.1_crit_edge

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %entry1.0.le.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry1.0.le.i.1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %dccp_feat_list_lookup.exit.1.if.end.1_crit_edge, %if.else.i.1.if.end.1_crit_edge, %for.cond.i.1.if.end.1_crit_edge
  %ccid.0.1 = phi i8 [ %10, %if.then.1 ], [ 2, %land.lhs.true.1.if.end.1_crit_edge ], [ 2, %dccp_feat_list_lookup.exit.1.if.end.1_crit_edge ], [ 2, %if.else.i.1.if.end.1_crit_edge ], [ 2, %for.cond.i.1.if.end.1_crit_edge ]
  %call9.1 = tail call fastcc i32 @dccp_feat_propagate_ccid(ptr noundef %dreq_featneg, i8 noundef zeroext %ccid.0.1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp ne i32 %call9.1, 0
  %spec.select = sext i1 %tobool10.not.1 to i32
  br label %cleanup

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %dreq_featneg, %entry ], [ %.pn.i, %if.else.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dreq_featneg
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %feat_num2.i = getelementptr i8, ptr %.pn.i, i32 -7
  %12 = ptrtoint ptr %feat_num2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %feat_num2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp4.i = icmp eq i8 %13, 1
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %is_local6.i = getelementptr i8, ptr %.pn.i, i32 -3
  %14 = ptrtoint ptr %is_local6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_local6.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp10.i = icmp eq i8 %15, 0
  br i1 %cmp10.i, label %dccp_feat_list_lookup.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %cmp15.i = icmp ugt i8 %13, 1
  br i1 %cmp15.i, label %if.else.i.if.end_crit_edge, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dccp_feat_list_lookup.exit:                       ; preds = %land.lhs.true.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp3.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %cmp3.not, label %dccp_feat_list_lookup.exit.if.end_crit_edge, label %land.lhs.true

dccp_feat_list_lookup.exit.if.end_crit_edge:      ; preds = %dccp_feat_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %dccp_feat_list_lookup.exit
  %empty_confirm = getelementptr i8, ptr %.pn.i, i32 -4
  %16 = ptrtoint ptr %empty_confirm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %empty_confirm, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1.0.le.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dccp_feat_list_lookup.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %ccid.0 = phi i8 [ %21, %if.then ], [ 2, %land.lhs.true.if.end_crit_edge ], [ 2, %dccp_feat_list_lookup.exit.if.end_crit_edge ], [ 2, %for.cond.i.if.end_crit_edge ], [ 2, %if.else.i.if.end_crit_edge ]
  %call9 = tail call fastcc i32 @dccp_feat_propagate_ccid(ptr noundef %dreq_featneg, i8 noundef zeroext %ccid.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.for.cond.i.1_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.cond.i.1_crit_edge:                    ; preds = %if.end
  br label %for.cond.i.1

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.1
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_parse_options(ptr noundef %sk, ptr noundef %dreq, i8 noundef zeroext %mandatory, i8 noundef zeroext %opt, i8 noundef zeroext %feat, ptr noundef %val, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  %fval.i.i83 = alloca %union.dccp_feat_val, align 8
  %fval.i = alloca %union.dccp_feat_val, align 8
  %fval.i.i33 = alloca %union.dccp_feat_val, align 8
  %fval.i.i = alloca %union.dccp_feat_val, align 8
  %defval.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dreq, null
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 7
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  %cond = select i1 %tobool.not, ptr %dccps_featneg, ptr %dreq_featneg
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 10, label %sw.bb
    i8 2, label %entry.sw.bb1_crit_edge
    i8 1, label %entry.sw.bb11_crit_edge
    i8 13, label %entry.sw.bb11_crit_edge232
  ]

entry.sw.bb11_crit_edge232:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %server.0.off0 = phi i1 [ false, %entry.sw.bb1_crit_edge ], [ true, %sw.bb ]
  %3 = zext i8 %opt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %opt, label %sw.bb1.cleanup_crit_edge [
    i8 32, label %sw.bb1.sw.bb3_crit_edge
    i8 34, label %sw.bb1.sw.bb3_crit_edge233
    i8 35, label %sw.bb1.sw.bb7_crit_edge
    i8 33, label %sw.bb1.sw.bb7_crit_edge234
  ]

sw.bb1.sw.bb7_crit_edge234:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

sw.bb1.sw.bb7_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

sw.bb1.sw.bb3_crit_edge233:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb1.sw.bb3_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb1.sw.bb3_crit_edge, %sw.bb1.sw.bb3_crit_edge233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %defval.i) #9
  %4 = ptrtoint ptr %defval.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %defval.i, align 1, !annotation !214
  %conv.i.i.i = zext i8 %feat to i32
  %5 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %6 = icmp ult i8 %5, 9
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i.i = icmp eq i8 %feat, -64
  %..i.i.i = select i1 %cond.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i = select i1 %6, i32 %sub.i.i.i, i32 %..i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %dccp_feat_type.exit.thread.i, label %dccp_feat_type.exit.i

dccp_feat_type.exit.thread.i:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %opt)
  %cmp271.i = icmp eq i8 %opt, 34
  br label %unknown_feature_or_value.i

dccp_feat_type.exit.i:                            ; preds = %sw.bb3
  %reconciliation.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 2
  %7 = ptrtoint ptr %reconciliation.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconciliation.i.i, align 4
  %conv.i.i = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %opt)
  %cmp.i = icmp eq i8 %opt, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp5.i = icmp eq i8 %len, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i.i)
  %cmp8.i = icmp eq i8 %conv.i.i, -1
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  br i1 %or.cond.i, label %dccp_feat_type.exit.i.unknown_feature_or_value.i_crit_edge, label %do.body10.i

dccp_feat_type.exit.i.unknown_feature_or_value.i_crit_edge: ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unknown_feature_or_value.i

do.body10.i:                                      ; preds = %dccp_feat_type.exit.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %9 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.body10.i.dccp_feat_type.exit.i.i_crit_edge, label %do.end.i

do.body10.i.dccp_feat_type.exit.i.i_crit_edge:    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_type.exit.i.i

do.end.i:                                         ; preds = %do.body10.i
  %switch.tableidx = add i8 %opt, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %do.end.i.dccp_feat_oname.exit.i_crit_edge

do.end.i.dccp_feat_oname.exit.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_oname.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dccp_feat_parse_options, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dccp_feat_oname.exit.i

dccp_feat_oname.exit.i:                           ; preds = %switch.lookup, %do.end.i.dccp_feat_oname.exit.i_crit_edge
  %retval.0.i222.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.i.dccp_feat_oname.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %feat)
  %13 = icmp sgt i8 %feat, 9
  %brmerge288.i = or i1 %13, %cond.i.i.i
  %.str.35.mux.i = select i1 %13, ptr @.str.35, ptr @.str.45
  br i1 %brmerge288.i, label %dccp_feat_oname.exit.i.dccp_feat_fname.exit.i_crit_edge, label %if.end9.i.i

dccp_feat_oname.exit.i.dccp_feat_fname.exit.i_crit_edge: ; preds = %dccp_feat_oname.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i

if.end9.i.i:                                      ; preds = %dccp_feat_oname.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %feat)
  %cmp11.i.i = icmp slt i8 %feat, 0
  br i1 %cmp11.i.i, label %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge, label %if.end14.i.i

if.end9.i.i.dccp_feat_fname.exit.i_crit_edge:     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i

if.end14.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  br label %dccp_feat_fname.exit.i

dccp_feat_fname.exit.i:                           ; preds = %if.end14.i.i, %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge, %dccp_feat_oname.exit.i.dccp_feat_fname.exit.i_crit_edge
  %retval.0.i225.i = phi ptr [ %15, %if.end14.i.i ], [ %.str.35.mux.i, %dccp_feat_oname.exit.i.dccp_feat_fname.exit.i_crit_edge ], [ @.str.46, %if.end9.i.i.dccp_feat_fname.exit.i_crit_edge ]
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i222.i, ptr noundef %retval.0.i225.i) #12
  br label %dccp_feat_type.exit.i.i

dccp_feat_type.exit.i.i:                          ; preds = %dccp_feat_fname.exit.i, %do.body10.i.dccp_feat_type.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i.i) #9
  %16 = ptrtoint ptr %fval.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %fval.i.i, align 8, !annotation !214
  store ptr %val, ptr %fval.i.i, align 8
  %len1.i.i = getelementptr inbounds %struct.anon, ptr %fval.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %len, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i)
  %cmp.i227.i = icmp eq i8 %conv.i.i, 8
  br i1 %cmp.i227.i, label %if.then.i.i, label %dccp_feat_type.exit.i.i.dccp_feat_printvals.exit.i_crit_edge

dccp_feat_type.exit.i.i.dccp_feat_printvals.exit.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_printvals.exit.i

if.then.i.i:                                      ; preds = %dccp_feat_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = tail call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %18 = ptrtoint ptr %fval.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call3.i.i, ptr %fval.i.i, align 8
  br label %dccp_feat_printvals.exit.i

dccp_feat_printvals.exit.i:                       ; preds = %if.then.i.i, %dccp_feat_type.exit.i.i.dccp_feat_printvals.exit.i_crit_edge
  call fastcc void @dccp_feat_printval(i8 noundef zeroext %feat, ptr noundef nonnull %fval.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fval.i.i) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %19 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not.i = icmp eq i8 %19, 0
  br i1 %tobool20.not.i, label %dccp_feat_printvals.exit.i.do.end33.i_crit_edge, label %do.end24.i

dccp_feat_printvals.exit.i.do.end33.i_crit_edge:  ; preds = %dccp_feat_printvals.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

do.end24.i:                                       ; preds = %dccp_feat_printvals.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool27.not.i = icmp eq i8 %mandatory, 0
  %cond.i = select i1 %tobool27.not.i, ptr @.str.9, ptr @.str.71
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond.i) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end24.i, %dccp_feat_printvals.exit.i.do.end33.i_crit_edge
  br i1 %cmp.i227.i, label %if.then37.i, label %if.end55.i

if.then37.i:                                      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %len)
  %cmp42.i = icmp ugt i8 %len, 8
  %or.cond221.i = or i1 %cmp.i, %cmp42.i
  br i1 %or.cond221.i, label %if.then37.i.unknown_feature_or_value.i_crit_edge, label %if.end45.i

if.then37.i.unknown_feature_or_value.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unknown_feature_or_value.i

if.end45.i:                                       ; preds = %if.then37.i
  %call46.i = call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %fval.sroa.0.0.extract.shift.i = lshr i64 %call46.i, 32
  %fval.sroa.0.0.extract.trunc.i = trunc i64 %fval.sroa.0.0.extract.shift.i to i32
  %fval.sroa.12.0.extract.shift.i = lshr i64 %call46.i, 24
  %fval.sroa.12.0.extract.trunc.i = trunc i64 %fval.sroa.12.0.extract.shift.i to i8
  %fval.sroa.16.0.extract.trunc.i = trunc i64 %call46.i to i24
  %20 = zext i8 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %feat, label %if.end45.i.unknown_feature_or_value.i_crit_edge [
    i8 5, label %dccp_feat_is_valid_nn_val.exit.i
    i8 3, label %sw.bb3.i230.i
  ]

if.end45.i.unknown_feature_or_value.i_crit_edge:  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unknown_feature_or_value.i

sw.bb3.i230.i:                                    ; preds = %if.end45.i
  %21 = add i64 %call46.i, -32
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177632, i64 %21)
  %22 = icmp ult i64 %21, 70368744177632
  br i1 %22, label %sw.bb3.i230.i.if.end50.i_crit_edge, label %sw.bb3.i230.i.unknown_feature_or_value.i_crit_edge

sw.bb3.i230.i.unknown_feature_or_value.i_crit_edge: ; preds = %sw.bb3.i230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unknown_feature_or_value.i

sw.bb3.i230.i.if.end50.i_crit_edge:               ; preds = %sw.bb3.i230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

dccp_feat_is_valid_nn_val.exit.i:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %call46.i)
  %cmp.i229.i = icmp ult i64 %call46.i, 65536
  br i1 %cmp.i229.i, label %dccp_feat_is_valid_nn_val.exit.i.if.end50.i_crit_edge, label %dccp_feat_is_valid_nn_val.exit.i.unknown_feature_or_value.i_crit_edge

dccp_feat_is_valid_nn_val.exit.i.unknown_feature_or_value.i_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unknown_feature_or_value.i

dccp_feat_is_valid_nn_val.exit.i.if.end50.i_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.end50.i:                                       ; preds = %dccp_feat_is_valid_nn_val.exit.i.if.end50.i_crit_edge, %sw.bb3.i230.i.if.end50.i_crit_edge
  %call.i.i = call fastcc ptr @dccp_feat_entry_new(ptr noundef %cond, i8 noundef zeroext %feat, i1 noundef zeroext false) #9
  %cmp.i232.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i232.i, label %if.end50.i.dccp_feat_change_recv.exit_crit_edge, label %if.end.i233.i

if.end50.i.dccp_feat_change_recv.exit_crit_edge:  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end.i233.i:                                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %feat_num.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %feat, ptr %feat_num.i.i, align 1
  %is_local.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %is_local.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_local.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %state.i.i, align 8
  %needs_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %needs_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %needs_confirm.i.i, align 1
  %empty_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %empty_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %empty_confirm.i.i, align 4
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %fval.sroa.0.0.extract.trunc.i, ptr %call.i.i, align 8
  %call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %29 = ptrtoint ptr %call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %fval.sroa.12.0.extract.trunc.i, ptr %call.i.sroa_idx.i, align 4
  %call.i.sroa_idx258.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %30 = ptrtoint ptr %call.i.sroa_idx258.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 3)
  store i24 %fval.sroa.16.0.extract.trunc.i, ptr %call.i.sroa_idx258.i, align 1
  %needs_mandatory.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %needs_mandatory.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %needs_mandatory.i.i, align 2
  br label %dccp_feat_change_recv.exit

if.end55.i:                                       ; preds = %do.end33.i
  %32 = zext i1 %cmp.i to i8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %if.end55.i
  %.pn.in.i.i = phi ptr [ %cond, %if.end55.i ], [ %.pn.i.i, %if.else.i.i.for.cond.i.i_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cond
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then60.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then60.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %feat_num2.i.i = getelementptr i8, ptr %.pn.i.i, i32 -7
  %34 = ptrtoint ptr %feat_num2.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %feat_num2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %feat)
  %cmp4.i.i = icmp eq i8 %35, %feat
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.else.i.i_crit_edge

for.body.i.i.if.else.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %is_local6.i.i = getelementptr i8, ptr %.pn.i.i, i32 -3
  %36 = ptrtoint ptr %is_local6.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_local6.i.i, align 1, !range !213
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %32)
  %cmp10.i.i = icmp eq i8 %37, %32
  br i1 %cmp10.i.i, label %dccp_feat_list_lookup.exit.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i.i.if.else.i.i_crit_edge
  %cmp15.i.i = icmp ugt i8 %35, %feat
  br i1 %cmp15.i.i, label %if.else.i.i.if.then60.i_crit_edge, label %if.else.i.i.for.cond.i.i_crit_edge

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

if.else.i.i.if.then60.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i

dccp_feat_list_lookup.exit.i:                     ; preds = %land.lhs.true.i.i
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %cmp58.i = icmp eq ptr %entry1.0.le.i.i, null
  br i1 %cmp58.i, label %dccp_feat_list_lookup.exit.i.if.then60.i_crit_edge, label %if.else99.i

dccp_feat_list_lookup.exit.i.if.then60.i_crit_edge: ; preds = %dccp_feat_list_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i

if.then60.i:                                      ; preds = %dccp_feat_list_lookup.exit.i.if.then60.i_crit_edge, %if.else.i.i.if.then60.i_crit_edge, %for.cond.i.i.if.then60.i_crit_edge
  %38 = call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %and.i.i.i = and i32 %41, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i237.i = select i1 %tobool.not.i.i.i, i32 3264, i32 2592
  %call5.i.i = call ptr @kmemdup(ptr noundef %val, i32 noundef 1, i32 noundef %cond.i.i237.i) #9
  %42 = ptrtoint ptr %call5.i.i to i32
  %cmp7.i.i = icmp eq ptr %call5.i.i, null
  br i1 %cmp7.i.i, label %if.then60.i.dccp_feat_change_recv.exit_crit_edge, label %if.end64.i

if.then60.i.dccp_feat_change_recv.exit_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end64.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %cmp66.i = icmp ugt i8 %len, 1
  %43 = and i1 %cmp66.i, %server.0.off0
  br i1 %43, label %dccp_feat_default_value.exit175, label %if.else.i

dccp_feat_default_value.exit175:                  ; preds = %if.end64.i
  %default_value.i171 = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 3
  %44 = ptrtoint ptr %default_value.i171 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %default_value.i171, align 4
  %46 = ptrtoint ptr %defval.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %defval.i, align 1
  %wide.trip.count.i.i = zext i8 %len to i32
  br label %for.body8.i.i

for.cond3.i.i:                                    ; preds = %for.body8.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond3.i.i.if.end85.i_crit_edge, label %for.cond3.i.i.for.body8.i.i_crit_edge

for.cond3.i.i.for.body8.i.i_crit_edge:            ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i.i

for.cond3.i.i.if.end85.i_crit_edge:               ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

for.body8.i.i:                                    ; preds = %for.cond3.i.i.for.body8.i.i_crit_edge, %dccp_feat_default_value.exit175
  %indvars.iv.i.i = phi i32 [ 0, %dccp_feat_default_value.exit175 ], [ %indvars.iv.next.i.i, %for.cond3.i.i.for.body8.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr i8, ptr %val, i32 %indvars.iv.i.i
  %47 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx11.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %45)
  %cmp13.i.i = icmp eq i8 %48, %45
  br i1 %cmp13.i.i, label %if.then76.i, label %for.cond3.i.i

if.then76.i:                                      ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %45, ptr %call5.i.i, align 1
  br label %if.end85.i

if.else.i:                                        ; preds = %if.end64.i
  %50 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %call5.i.i, align 1
  %call80.i = call fastcc zeroext i8 @dccp_feat_is_valid_sp_val(i8 noundef zeroext %feat, i8 noundef zeroext %51) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call80.i)
  %tobool81.not.i = icmp eq i8 %call80.i, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %if.else.i.if.end85.i_crit_edge

if.else.i.if.end85.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then82.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call5.i.i) #9
  br label %unknown_feature_or_value.i

if.end85.i:                                       ; preds = %if.else.i.if.end85.i_crit_edge, %if.then76.i, %for.cond3.i.i.if.end85.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %feat)
  %cmp87.i = icmp eq i8 %feat, 1
  br i1 %cmp87.i, label %land.lhs.true89.i, label %if.end85.i.if.end94.i_crit_edge

if.end85.i.if.end94.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

land.lhs.true89.i:                                ; preds = %if.end85.i
  %call91.i = call zeroext i1 @ccid_support_check(ptr noundef nonnull %call5.i.i, i8 noundef zeroext 1) #9
  br i1 %call91.i, label %land.lhs.true89.i.if.end94.i_crit_edge, label %if.then92.i

land.lhs.true89.i.if.end94.i_crit_edge:           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.then92.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call5.i.i) #9
  br label %not_valid_or_not_known.i

if.end94.i:                                       ; preds = %land.lhs.true89.i.if.end94.i_crit_edge, %if.end85.i.if.end94.i_crit_edge
  %call.i243.i = call fastcc ptr @dccp_feat_entry_new(ptr noundef %cond, i8 noundef zeroext %feat, i1 noundef zeroext %cmp.i) #9
  %cmp.i244.i = icmp eq ptr %call.i243.i, null
  br i1 %cmp.i244.i, label %if.end94.i.dccp_feat_change_recv.exit_crit_edge, label %if.end.i251.i

if.end94.i.dccp_feat_change_recv.exit_crit_edge:  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end.i251.i:                                    ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i245.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 2
  %52 = ptrtoint ptr %feat_num.i245.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %feat, ptr %feat_num.i245.i, align 1
  %is_local.i246.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 6
  %53 = ptrtoint ptr %is_local.i246.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %32, ptr %is_local.i246.i, align 1
  %state.i248.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 1
  %54 = ptrtoint ptr %state.i248.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %state.i248.i, align 8
  %needs_confirm.i249.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 4
  %55 = ptrtoint ptr %needs_confirm.i249.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %needs_confirm.i249.i, align 1
  %empty_confirm.i250.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 5
  %56 = ptrtoint ptr %empty_confirm.i250.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %empty_confirm.i250.i, align 4
  %57 = ptrtoint ptr %call.i243.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 33554431, ptr %call.i243.i, align 8
  store i32 %42, ptr %call.i243.i, align 8
  %needs_mandatory.i252.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i243.i, i32 0, i32 3
  %58 = ptrtoint ptr %needs_mandatory.i252.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %needs_mandatory.i252.i, align 2
  br label %dccp_feat_change_recv.exit

if.else99.i:                                      ; preds = %dccp_feat_list_lookup.exit.i
  %state.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i)
  %cmp100.i = icmp eq i8 %bf.load.i, 3
  br i1 %cmp100.i, label %if.else99.i.dccp_feat_change_recv.exit_crit_edge, label %if.end104.i

if.else99.i.dccp_feat_change_recv.exit_crit_edge: ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end104.i:                                      ; preds = %if.else99.i
  %call107.i = call fastcc i32 @dccp_feat_reconcile(ptr noundef nonnull %entry1.0.le.i.i, ptr noundef %val, i8 noundef zeroext %len, i1 noundef zeroext %server.0.off0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.else110.i, label %if.end104.i.if.end158.sink.split.i_crit_edge

if.end104.i.if.end158.sink.split.i_crit_edge:     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158.sink.split.i

if.else110.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool111.not.i = icmp eq i8 %mandatory, 0
  br i1 %tobool111.not.i, label %if.else113.i, label %if.else110.i.dccp_feat_change_recv.exit_crit_edge

if.else110.i.dccp_feat_change_recv.exit_crit_edge: ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.else113.i:                                     ; preds = %if.else110.i
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load115.i = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load115.i)
  %cmp117.i = icmp eq i8 %bf.load115.i, 1
  br i1 %cmp117.i, label %if.then119.i, label %if.else113.i.if.end158.i_crit_edge

if.else113.i.if.end158.i_crit_edge:               ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158.i

if.then119.i:                                     ; preds = %if.else113.i
  br i1 %server.0.off0, label %if.then119.i.dccp_feat_default_value.exit_crit_edge, label %do.end133.i, !prof !215

if.then119.i.dccp_feat_default_value.exit_crit_edge: ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_default_value.exit

do.end133.i:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1188, i32 noundef 9, ptr noundef null) #9
  br label %dccp_feat_default_value.exit

dccp_feat_default_value.exit:                     ; preds = %do.end133.i, %if.then119.i.dccp_feat_default_value.exit_crit_edge
  %default_value.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 3
  %61 = ptrtoint ptr %default_value.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %default_value.i, align 4
  %63 = ptrtoint ptr %defval.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %defval.i, align 1
  %call151.i = call fastcc i32 @dccp_feat_reconcile(ptr noundef nonnull %entry1.0.le.i.i, ptr noundef nonnull %defval.i, i8 noundef zeroext 1, i1 noundef zeroext %server.0.off0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %dccp_feat_default_value.exit.dccp_feat_change_recv.exit_crit_edge, label %dccp_feat_default_value.exit.if.end158.sink.split.i_crit_edge

dccp_feat_default_value.exit.if.end158.sink.split.i_crit_edge: ; preds = %dccp_feat_default_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158.sink.split.i

dccp_feat_default_value.exit.dccp_feat_change_recv.exit_crit_edge: ; preds = %dccp_feat_default_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end158.sink.split.i:                           ; preds = %dccp_feat_default_value.exit.if.end158.sink.split.i_crit_edge, %if.end104.i.if.end158.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end104.i.if.end158.sink.split.i_crit_edge ], [ 1, %dccp_feat_default_value.exit.if.end158.sink.split.i_crit_edge ]
  %empty_confirm155.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %64 = ptrtoint ptr %empty_confirm155.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.sink.i, ptr %empty_confirm155.i, align 4
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.end158.sink.split.i, %if.else113.i.if.end158.i_crit_edge
  %needs_confirm.i = getelementptr i8, ptr %.pn.i.i, i32 -5
  %65 = ptrtoint ptr %needs_confirm.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %needs_confirm.i, align 1
  %needs_mandatory.i = getelementptr i8, ptr %.pn.i.i, i32 -6
  %66 = ptrtoint ptr %needs_mandatory.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %needs_mandatory.i, align 2
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 4, ptr %state.i, align 8
  br label %dccp_feat_change_recv.exit

unknown_feature_or_value.i:                       ; preds = %if.then82.i, %dccp_feat_is_valid_nn_val.exit.i.unknown_feature_or_value.i_crit_edge, %sw.bb3.i230.i.unknown_feature_or_value.i_crit_edge, %if.end45.i.unknown_feature_or_value.i_crit_edge, %if.then37.i.unknown_feature_or_value.i_crit_edge, %dccp_feat_type.exit.i.unknown_feature_or_value.i_crit_edge, %dccp_feat_type.exit.thread.i
  %cmp275.i = phi i1 [ %cmp271.i, %dccp_feat_type.exit.thread.i ], [ false, %dccp_feat_is_valid_nn_val.exit.i.unknown_feature_or_value.i_crit_edge ], [ %cmp.i, %if.then37.i.unknown_feature_or_value.i_crit_edge ], [ %cmp.i, %dccp_feat_type.exit.i.unknown_feature_or_value.i_crit_edge ], [ %cmp.i, %if.then82.i ], [ false, %if.end45.i.unknown_feature_or_value.i_crit_edge ], [ false, %sw.bb3.i230.i.unknown_feature_or_value.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool160.not.i = icmp eq i8 %mandatory, 0
  br i1 %tobool160.not.i, label %if.then161.i, label %unknown_feature_or_value.i.not_valid_or_not_known.i_crit_edge

unknown_feature_or_value.i.not_valid_or_not_known.i_crit_edge: ; preds = %unknown_feature_or_value.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_valid_or_not_known.i

if.then161.i:                                     ; preds = %unknown_feature_or_value.i
  %call.i.i.i = call fastcc ptr @dccp_feat_entry_new(ptr noundef %cond, i8 noundef zeroext %feat, i1 noundef zeroext %cmp275.i) #9
  %cmp.i.i255.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i255.i, label %if.then161.i.dccp_feat_change_recv.exit_crit_edge, label %if.end.i.i.i

if.then161.i.dccp_feat_change_recv.exit_crit_edge: ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_change_recv.exit

if.end.i.i.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %feat_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %feat, ptr %feat_num.i.i.i, align 1
  %is_local.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 6
  %frombool.i.i.i = zext i1 %cmp275.i to i8
  %69 = ptrtoint ptr %is_local.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool.i.i.i, ptr %is_local.i.i.i, align 1
  %state.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %state.i.i.i, align 8
  %needs_confirm.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %needs_confirm.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %needs_confirm.i.i.i, align 1
  %empty_confirm.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %empty_confirm.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %empty_confirm.i.i.i, align 4
  %73 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %call.i.i.i, align 8
  %needs_mandatory.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %needs_mandatory.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %needs_mandatory.i.i.i, align 2
  br label %dccp_feat_change_recv.exit

not_valid_or_not_known.i:                         ; preds = %unknown_feature_or_value.i.not_valid_or_not_known.i_crit_edge, %if.then92.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool168.not.i = icmp eq i8 %mandatory, 0
  %conv170.i = select i1 %tobool168.not.i, i32 5, i32 6
  br label %dccp_feat_change_recv.exit

dccp_feat_change_recv.exit:                       ; preds = %not_valid_or_not_known.i, %if.end.i.i.i, %if.then161.i.dccp_feat_change_recv.exit_crit_edge, %if.end158.i, %dccp_feat_default_value.exit.dccp_feat_change_recv.exit_crit_edge, %if.else110.i.dccp_feat_change_recv.exit_crit_edge, %if.else99.i.dccp_feat_change_recv.exit_crit_edge, %if.end.i251.i, %if.end94.i.dccp_feat_change_recv.exit_crit_edge, %if.then60.i.dccp_feat_change_recv.exit_crit_edge, %if.end.i233.i, %if.end50.i.dccp_feat_change_recv.exit_crit_edge
  %retval.0.i = phi i32 [ %conv170.i, %not_valid_or_not_known.i ], [ 0, %if.end158.i ], [ 0, %if.else99.i.dccp_feat_change_recv.exit_crit_edge ], [ 6, %if.else110.i.dccp_feat_change_recv.exit_crit_edge ], [ 5, %dccp_feat_default_value.exit.dccp_feat_change_recv.exit_crit_edge ], [ 9, %if.then60.i.dccp_feat_change_recv.exit_crit_edge ], [ 0, %if.end.i233.i ], [ 9, %if.end50.i.dccp_feat_change_recv.exit_crit_edge ], [ 0, %if.end.i251.i ], [ 9, %if.end94.i.dccp_feat_change_recv.exit_crit_edge ], [ 0, %if.end.i.i.i ], [ 9, %if.then161.i.dccp_feat_change_recv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %defval.i) #9
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb1.sw.bb7_crit_edge, %sw.bb1.sw.bb7_crit_edge234
  %conv.i.i.i34 = zext i8 %feat to i32
  %75 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %75)
  %76 = icmp ult i8 %75, 9
  %sub.i.i.i35 = add nsw i32 %conv.i.i.i34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i.i36 = icmp eq i8 %feat, -64
  %..i.i.i37 = select i1 %cond.i.i.i36, i32 9, i32 -1
  %retval.0.i.i.i38 = select i1 %76, i32 %sub.i.i.i35, i32 %..i.i.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i38)
  %cmp.i.i39 = icmp slt i32 %retval.0.i.i.i38, 0
  br i1 %cmp.i.i39, label %sw.bb7.dccp_feat_type.exit.i43_crit_edge, label %if.end.i.i

sw.bb7.dccp_feat_type.exit.i43_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_type.exit.i43

if.end.i.i:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %reconciliation.i.i40 = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i38, i32 2
  %77 = ptrtoint ptr %reconciliation.i.i40 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reconciliation.i.i40, align 4
  %conv.i.i41 = trunc i32 %78 to i8
  br label %dccp_feat_type.exit.i43

dccp_feat_type.exit.i43:                          ; preds = %if.end.i.i, %sw.bb7.dccp_feat_type.exit.i43_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i41, %if.end.i.i ], [ -1, %sw.bb7.dccp_feat_type.exit.i43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %opt)
  %cmp.i42 = icmp eq i8 %opt, 35
  %79 = zext i1 %cmp.i42 to i8
  br label %for.cond.i.i47

for.cond.i.i47:                                   ; preds = %if.else.i.i55.for.cond.i.i47_crit_edge, %dccp_feat_type.exit.i43
  %.pn.in.i.i44 = phi ptr [ %cond, %dccp_feat_type.exit.i43 ], [ %.pn.i.i45, %if.else.i.i55.for.cond.i.i47_crit_edge ]
  %80 = ptrtoint ptr %.pn.in.i.i44 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i.i45 = load ptr, ptr %.pn.in.i.i44, align 4
  %cmp.not.i.i46 = icmp eq ptr %.pn.i.i45, %cond
  br i1 %cmp.not.i.i46, label %for.cond.i.i47.dccp_feat_list_lookup.exit.i57_crit_edge, label %for.body.i.i50

for.cond.i.i47.dccp_feat_list_lookup.exit.i57_crit_edge: ; preds = %for.cond.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_lookup.exit.i57

for.body.i.i50:                                   ; preds = %for.cond.i.i47
  %feat_num2.i.i48 = getelementptr i8, ptr %.pn.i.i45, i32 -7
  %81 = ptrtoint ptr %feat_num2.i.i48 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %feat_num2.i.i48, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %feat)
  %cmp4.i.i49 = icmp eq i8 %82, %feat
  br i1 %cmp4.i.i49, label %land.lhs.true.i.i53, label %for.body.i.i50.if.else.i.i55_crit_edge

for.body.i.i50.if.else.i.i55_crit_edge:           ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i55

land.lhs.true.i.i53:                              ; preds = %for.body.i.i50
  %is_local6.i.i51 = getelementptr i8, ptr %.pn.i.i45, i32 -3
  %83 = ptrtoint ptr %is_local6.i.i51 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_local6.i.i51, align 1, !range !213
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %79)
  %cmp10.i.i52 = icmp eq i8 %84, %79
  br i1 %cmp10.i.i52, label %cleanup.split.loop.exit33.i.i, label %land.lhs.true.i.i53.if.else.i.i55_crit_edge

land.lhs.true.i.i53.if.else.i.i55_crit_edge:      ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i55

if.else.i.i55:                                    ; preds = %land.lhs.true.i.i53.if.else.i.i55_crit_edge, %for.body.i.i50.if.else.i.i55_crit_edge
  %cmp15.i.i54 = icmp ugt i8 %82, %feat
  br i1 %cmp15.i.i54, label %if.else.i.i55.dccp_feat_list_lookup.exit.i57_crit_edge, label %if.else.i.i55.for.cond.i.i47_crit_edge

if.else.i.i55.for.cond.i.i47_crit_edge:           ; preds = %if.else.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i47

if.else.i.i55.dccp_feat_list_lookup.exit.i57_crit_edge: ; preds = %if.else.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_lookup.exit.i57

cleanup.split.loop.exit33.i.i:                    ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  %entry1.0.le.i.i56 = getelementptr i8, ptr %.pn.i.i45, i32 -16
  br label %dccp_feat_list_lookup.exit.i57

dccp_feat_list_lookup.exit.i57:                   ; preds = %cleanup.split.loop.exit33.i.i, %if.else.i.i55.dccp_feat_list_lookup.exit.i57_crit_edge, %for.cond.i.i47.dccp_feat_list_lookup.exit.i57_crit_edge
  %retval.0.i172.i = phi ptr [ %entry1.0.le.i.i56, %cleanup.split.loop.exit33.i.i ], [ null, %for.cond.i.i47.dccp_feat_list_lookup.exit.i57_crit_edge ], [ null, %if.else.i.i55.dccp_feat_list_lookup.exit.i57_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %85 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool6.not.i = icmp eq i8 %85, 0
  br i1 %tobool6.not.i, label %dccp_feat_list_lookup.exit.i57.do.end12.i_crit_edge, label %do.end.i58

dccp_feat_list_lookup.exit.i57.do.end12.i_crit_edge: ; preds = %dccp_feat_list_lookup.exit.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

do.end.i58:                                       ; preds = %dccp_feat_list_lookup.exit.i57
  %switch.tableidx213 = add i8 %opt, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx213)
  %86 = icmp ult i8 %switch.tableidx213, 4
  br i1 %86, label %switch.lookup212, label %do.end.i58.dccp_feat_oname.exit.i64_crit_edge

do.end.i58.dccp_feat_oname.exit.i64_crit_edge:    ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_oname.exit.i64

switch.lookup212:                                 ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %87 = sext i8 %switch.tableidx213 to i32
  %switch.gep214 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_feat_parse_options.105, i32 0, i32 %87
  %88 = ptrtoint ptr %switch.gep214 to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load215 = load ptr, ptr %switch.gep214, align 4
  br label %dccp_feat_oname.exit.i64

dccp_feat_oname.exit.i64:                         ; preds = %switch.lookup212, %do.end.i58.dccp_feat_oname.exit.i64_crit_edge
  %retval.0.i173.i = phi ptr [ %switch.load215, %switch.lookup212 ], [ null, %do.end.i58.dccp_feat_oname.exit.i64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %feat)
  %89 = icmp sgt i8 %feat, 9
  %brmerge.i = or i1 %89, %cond.i.i.i36
  %.str.35.mux.i63 = select i1 %89, ptr @.str.35, ptr @.str.45
  br i1 %brmerge.i, label %dccp_feat_oname.exit.i64.dccp_feat_fname.exit.i69_crit_edge, label %if.end9.i.i66

dccp_feat_oname.exit.i64.dccp_feat_fname.exit.i69_crit_edge: ; preds = %dccp_feat_oname.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i69

if.end9.i.i66:                                    ; preds = %dccp_feat_oname.exit.i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %feat)
  %cmp11.i.i65 = icmp slt i8 %feat, 0
  br i1 %cmp11.i.i65, label %if.end9.i.i66.dccp_feat_fname.exit.i69_crit_edge, label %if.end14.i.i68

if.end9.i.i66.dccp_feat_fname.exit.i69_crit_edge: ; preds = %if.end9.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i69

if.end14.i.i68:                                   ; preds = %if.end9.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i67 = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i.i.i34
  %90 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i67, align 4
  br label %dccp_feat_fname.exit.i69

dccp_feat_fname.exit.i69:                         ; preds = %if.end14.i.i68, %if.end9.i.i66.dccp_feat_fname.exit.i69_crit_edge, %dccp_feat_oname.exit.i64.dccp_feat_fname.exit.i69_crit_edge
  %retval.0.i176.i = phi ptr [ %91, %if.end14.i.i68 ], [ %.str.35.mux.i63, %dccp_feat_oname.exit.i64.dccp_feat_fname.exit.i69_crit_edge ], [ @.str.46, %if.end9.i.i66.dccp_feat_fname.exit.i69_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.74, ptr noundef %retval.0.i173.i, ptr noundef %retval.0.i176.i) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %dccp_feat_fname.exit.i69, %dccp_feat_list_lookup.exit.i57.do.end12.i_crit_edge
  br i1 %cmp.i.i39, label %dccp_feat_type.exit.thread.i.i, label %dccp_feat_type.exit.i.i71

dccp_feat_type.exit.thread.i.i:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i.i33) #9
  %92 = ptrtoint ptr %fval.i.i33 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 -1, ptr %fval.i.i33, align 8, !annotation !214
  store ptr %val, ptr %fval.i.i33, align 8
  %len18.i.i = getelementptr inbounds %struct.anon, ptr %fval.i.i33, i32 0, i32 1
  %93 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %len, ptr %len18.i.i, align 4
  br label %dccp_feat_printvals.exit.i74

dccp_feat_type.exit.i.i71:                        ; preds = %do.end12.i
  %reconciliation.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i38, i32 2
  %94 = ptrtoint ptr %reconciliation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reconciliation.i.i.i, align 4
  %conv.i.i177.i = trunc i32 %95 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i.i33) #9
  %96 = ptrtoint ptr %fval.i.i33 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 -1, ptr %fval.i.i33, align 8, !annotation !214
  store ptr %val, ptr %fval.i.i33, align 8
  %len1.i.i70 = getelementptr inbounds %struct.anon, ptr %fval.i.i33, i32 0, i32 1
  %97 = ptrtoint ptr %len1.i.i70 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %len, ptr %len1.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i177.i)
  %cmp.i178.i = icmp eq i8 %conv.i.i177.i, 8
  br i1 %cmp.i178.i, label %if.then.i.i73, label %dccp_feat_type.exit.i.i71.dccp_feat_printvals.exit.i74_crit_edge

dccp_feat_type.exit.i.i71.dccp_feat_printvals.exit.i74_crit_edge: ; preds = %dccp_feat_type.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_printvals.exit.i74

if.then.i.i73:                                    ; preds = %dccp_feat_type.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i72 = tail call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %98 = ptrtoint ptr %fval.i.i33 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %call3.i.i72, ptr %fval.i.i33, align 8
  br label %dccp_feat_printvals.exit.i74

dccp_feat_printvals.exit.i74:                     ; preds = %if.then.i.i73, %dccp_feat_type.exit.i.i71.dccp_feat_printvals.exit.i74_crit_edge, %dccp_feat_type.exit.thread.i.i
  call fastcc void @dccp_feat_printval(i8 noundef zeroext %feat, ptr noundef nonnull %fval.i.i33) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fval.i.i33) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %99 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool14.not.i = icmp eq i8 %99, 0
  br i1 %tobool14.not.i, label %dccp_feat_printvals.exit.i74.do.end27.i_crit_edge, label %do.end18.i

dccp_feat_printvals.exit.i74.do.end27.i_crit_edge: ; preds = %dccp_feat_printvals.exit.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27.i

do.end18.i:                                       ; preds = %dccp_feat_printvals.exit.i74
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool21.not.i = icmp eq i8 %mandatory, 0
  %cond.i75 = select i1 %tobool21.not.i, ptr @.str.9, ptr @.str.71
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond.i75) #12
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end18.i, %dccp_feat_printvals.exit.i74.do.end27.i_crit_edge
  %cmp28.i = icmp eq ptr %retval.0.i172.i, null
  br i1 %cmp28.i, label %if.then30.i, label %if.end45.i79

if.then30.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool32.not.i = icmp ne i8 %mandatory, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i.i)
  %cmp34.i = icmp eq i8 %retval.0.i.i, -1
  %or.cond.i76 = select i1 %tobool32.not.i, i1 %cmp34.i, i1 false
  br i1 %or.cond.i76, label %if.then30.i.cleanup_crit_edge, label %if.end37.i

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37.i:                                       ; preds = %if.then30.i
  %cmp.not.i = xor i1 %cmp.i42, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i.i)
  %cmp41.i = icmp eq i8 %retval.0.i.i, 8
  %or.cond171.i = select i1 %cmp.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond171.i, label %if.end37.i.do.body121.i_crit_edge, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37.i.do.body121.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.i

if.end45.i79:                                     ; preds = %do.end27.i
  %state.i77 = getelementptr inbounds %struct.dccp_feat_entry, ptr %retval.0.i172.i, i32 0, i32 1
  %100 = ptrtoint ptr %state.i77 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i78 = load i8, ptr %state.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i78)
  %cmp46.not.i = icmp eq i8 %bf.load.i78, 2
  br i1 %cmp46.not.i, label %if.end49.i, label %if.end45.i79.cleanup_crit_edge

if.end45.i79.cleanup_crit_edge:                   ; preds = %if.end45.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49.i:                                       ; preds = %if.end45.i79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp51.i = icmp eq i8 %len, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.end58.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %101 = icmp ugt i8 %75, 2
  br i1 %101, label %if.end57.i, label %if.then53.i.do.body121.i_crit_edge

if.then53.i.do.body121.i_crit_edge:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.i

if.end57.i:                                       ; preds = %if.then53.i
  %node.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %retval.0.i172.i, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end57.i.if.end.i.i3.i.i_crit_edge

if.end57.i.if.end.i.i3.i.i_crit_edge:             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i3.i.i

if.end.i.i.i.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %retval.0.i172.i, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i.i.i, align 4
  %104 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %if.end.i.i3.i.i

if.end.i.i3.i.i:                                  ; preds = %if.end.i.i.i.i, %if.end57.i.if.end.i.i3.i.i_crit_edge
  %108 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %retval.0.i172.i, i32 0, i32 7, i32 1
  %109 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %feat_num.i.i.i80 = getelementptr inbounds %struct.dccp_feat_entry, ptr %retval.0.i172.i, i32 0, i32 2
  %110 = ptrtoint ptr %feat_num.i.i.i80 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %feat_num.i.i.i80, align 1
  %conv.i.i.i.i.i.i = zext i8 %111 to i32
  %112 = add i8 %111, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %112)
  %113 = icmp ult i8 %112, 9
  %sub.i.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %111)
  %cond.i.i.i.i.i.i = icmp eq i8 %111, -64
  %..i.i.i.i.i.i = select i1 %cond.i.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i.i = select i1 %113, i32 %sub.i.i.i.i.i.i, i32 %..i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i3.i.i.dccp_feat_list_pop.exit.i_crit_edge, label %dccp_feat_type.exit.i.i.i.i

if.end.i.i3.i.i.dccp_feat_list_pop.exit.i_crit_edge: ; preds = %if.end.i.i3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit.i

dccp_feat_type.exit.i.i.i.i:                      ; preds = %if.end.i.i3.i.i
  %reconciliation.i.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i.i, i32 2
  %114 = ptrtoint ptr %reconciliation.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %reconciliation.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = trunc i32 %115 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i8 %conv.i.i.i.i.i, 4
  br i1 %cmp2.i.i.i.i, label %if.then4.i.i.i.i, label %dccp_feat_type.exit.i.i.i.i.dccp_feat_list_pop.exit.i_crit_edge

dccp_feat_type.exit.i.i.i.i.dccp_feat_list_pop.exit.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit.i

if.then4.i.i.i.i:                                 ; preds = %dccp_feat_type.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %retval.0.i172.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %retval.0.i172.i, align 8
  call void @kfree(ptr noundef %117) #9
  br label %dccp_feat_list_pop.exit.i

dccp_feat_list_pop.exit.i:                        ; preds = %if.then4.i.i.i.i, %dccp_feat_type.exit.i.i.i.i.dccp_feat_list_pop.exit.i_crit_edge, %if.end.i.i3.i.i.dccp_feat_list_pop.exit.i_crit_edge
  %118 = ptrtoint ptr %retval.0.i172.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %retval.0.i172.i, align 8
  call void @kfree(ptr noundef nonnull %retval.0.i172.i) #9
  br label %cleanup

if.end58.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i.i)
  %cmp60.i = icmp eq i8 %retval.0.i.i, 8
  br i1 %cmp60.i, label %if.then62.i, label %if.end86.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %len)
  %cmp64.i = icmp ugt i8 %len, 8
  br i1 %cmp64.i, label %if.then62.i.do.body121.i_crit_edge, label %if.end67.i

if.then62.i.do.body121.i_crit_edge:               ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.i

if.end67.i:                                       ; preds = %if.then62.i
  %119 = ptrtoint ptr %retval.0.i172.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %retval.0.i172.i, align 8
  %call69.i = call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %call69.i)
  %cmp70.i = icmp eq i64 %120, %call69.i
  br i1 %cmp70.i, label %if.end67.i.confirmation_succeeded.i_crit_edge, label %do.body74.i

if.end67.i.confirmation_succeeded.i_crit_edge:    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %confirmation_succeeded.i

do.body74.i:                                      ; preds = %if.end67.i
  %call75.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.do.body121.i_crit_edge, label %do.end80.i

do.body74.i.do.body121.i_crit_edge:               ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.i

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74) #12
  br label %do.body121.i

if.end86.i:                                       ; preds = %if.end58.i
  %121 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %val, align 1
  %call87.i = call fastcc zeroext i8 @dccp_feat_is_valid_sp_val(i8 noundef zeroext %feat, i8 noundef zeroext %122) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call87.i)
  %tobool88.not.i = icmp eq i8 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end86.i.do.body121.i_crit_edge, label %if.end90.i

if.end86.i.do.body121.i_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.i

if.end90.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %cmp92.i = icmp eq i8 %len, 1
  %sub.i = add i8 %len, -1
  %plen.0.i = select i1 %cmp92.i, i8 1, i8 %sub.i
  %not.cmp92.i = xor i1 %cmp92.i, true
  %plist.0.idx.i = zext i1 %not.cmp92.i to i32
  %plist.0.i = getelementptr i8, ptr %val, i32 %plist.0.idx.i
  %123 = ptrtoint ptr %retval.0.i172.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %retval.0.i172.i, align 8
  %tobool.not.i.i = icmp eq ptr %124, null
  %tobool2.not.i.i = icmp eq ptr %plist.0.i, null
  %or.cond.i.i = or i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end.i180.i

do.end.i.i:                                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.2, i32 noundef 1077, ptr noundef nonnull @.str.73) #12
  br label %dccp_feat_reconcile.exit.i

if.end.i180.i:                                    ; preds = %if.end90.i
  %len6.i.i = getelementptr inbounds %struct.anon, ptr %retval.0.i172.i, i32 0, i32 1
  %125 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %len6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp30.not.i.i.i = icmp eq i8 %126, 0
  br i1 %server.0.off0, label %if.then4.i.i, label %for.cond3.preheader.lr.ph.i36.i.i

if.then4.i.i:                                     ; preds = %if.end.i180.i
  br i1 %cmp30.not.i.i.i, label %if.then4.i.i.do.body105.i_crit_edge, label %for.cond3.preheader.lr.ph.i.i.i

if.then4.i.i.do.body105.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

for.cond3.preheader.lr.ph.i.i.i:                  ; preds = %if.then4.i.i
  %wide.trip.count35.i.i.i = zext i8 %126 to i32
  %wide.trip.count.i.i.i = zext i8 %plen.0.i to i32
  br label %for.cond3.preheader.i.i.i

for.cond3.preheader.i.i.i:                        ; preds = %for.inc18.i.i.i.for.cond3.preheader.i.i.i_crit_edge, %for.cond3.preheader.lr.ph.i.i.i
  %indvars.iv33.i.i.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i.i.i ], [ %indvars.iv.next34.i.i.i, %for.inc18.i.i.i.for.cond3.preheader.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %124, i32 %indvars.iv33.i.i.i
  %127 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %for.body8.i.i.i

for.cond3.i.i.i:                                  ; preds = %for.body8.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc18.i.i.i, label %for.cond3.i.i.i.for.body8.i.i.i_crit_edge

for.cond3.i.i.i.for.body8.i.i.i_crit_edge:        ; preds = %for.cond3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i.i.i

for.body8.i.i.i:                                  ; preds = %for.cond3.i.i.i.for.body8.i.i.i_crit_edge, %for.cond3.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.cond3.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %for.cond3.i.i.i.for.body8.i.i.i_crit_edge ]
  %arrayidx11.i.i.i = getelementptr i8, ptr %plist.0.i, i32 %indvars.iv.i.i.i
  %129 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx11.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %130)
  %cmp13.i.i.i = icmp eq i8 %128, %130
  br i1 %cmp13.i.i.i, label %for.body8.i.i.i.dccp_feat_reconcile.exit.i_crit_edge, label %for.cond3.i.i.i

for.body8.i.i.i.dccp_feat_reconcile.exit.i_crit_edge: ; preds = %for.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_reconcile.exit.i

for.inc18.i.i.i:                                  ; preds = %for.cond3.i.i.i
  %indvars.iv.next34.i.i.i = add nuw nsw i32 %indvars.iv33.i.i.i, 1
  %exitcond36.not.i.i.i = icmp eq i32 %indvars.iv.next34.i.i.i, %wide.trip.count35.i.i.i
  br i1 %exitcond36.not.i.i.i, label %for.inc18.i.i.i.do.body105.i_crit_edge, label %for.inc18.i.i.i.for.cond3.preheader.i.i.i_crit_edge

for.inc18.i.i.i.for.cond3.preheader.i.i.i_crit_edge: ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i.i.i

for.inc18.i.i.i.do.body105.i_crit_edge:           ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

for.cond3.preheader.lr.ph.i36.i.i:                ; preds = %if.end.i180.i
  %wide.trip.count35.i34.i.i = zext i8 %plen.0.i to i32
  %wide.trip.count.i35.i.i = zext i8 %126 to i32
  br label %for.cond3.preheader.i38.i.i

for.cond3.preheader.i38.i.i:                      ; preds = %for.inc18.i52.i.i.for.cond3.preheader.i38.i.i_crit_edge, %for.cond3.preheader.lr.ph.i36.i.i
  %indvars.iv33.i37.i.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i36.i.i ], [ %indvars.iv.next34.i50.i.i, %for.inc18.i52.i.i.for.cond3.preheader.i38.i.i_crit_edge ]
  br i1 %cmp30.not.i.i.i, label %for.cond3.preheader.i38.i.i.for.inc18.i52.i.i_crit_edge, label %for.body8.lr.ph.i40.i.i

for.cond3.preheader.i38.i.i.for.inc18.i52.i.i_crit_edge: ; preds = %for.cond3.preheader.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i52.i.i

for.body8.lr.ph.i40.i.i:                          ; preds = %for.cond3.preheader.i38.i.i
  %arrayidx.i39.i.i = getelementptr i8, ptr %plist.0.i, i32 %indvars.iv33.i37.i.i
  %131 = ptrtoint ptr %arrayidx.i39.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i39.i.i, align 1
  br label %for.body8.i47.i.i

for.cond3.i43.i.i:                                ; preds = %for.body8.i47.i.i
  %indvars.iv.next.i41.i.i = add nuw nsw i32 %indvars.iv.i44.i.i, 1
  %exitcond.not.i42.i.i = icmp eq i32 %indvars.iv.next.i41.i.i, %wide.trip.count.i35.i.i
  br i1 %exitcond.not.i42.i.i, label %for.cond3.i43.i.i.for.inc18.i52.i.i_crit_edge, label %for.cond3.i43.i.i.for.body8.i47.i.i_crit_edge

for.cond3.i43.i.i.for.body8.i47.i.i_crit_edge:    ; preds = %for.cond3.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i47.i.i

for.cond3.i43.i.i.for.inc18.i52.i.i_crit_edge:    ; preds = %for.cond3.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i52.i.i

for.body8.i47.i.i:                                ; preds = %for.cond3.i43.i.i.for.body8.i47.i.i_crit_edge, %for.body8.lr.ph.i40.i.i
  %indvars.iv.i44.i.i = phi i32 [ 0, %for.body8.lr.ph.i40.i.i ], [ %indvars.iv.next.i41.i.i, %for.cond3.i43.i.i.for.body8.i47.i.i_crit_edge ]
  %arrayidx11.i45.i.i = getelementptr i8, ptr %124, i32 %indvars.iv.i44.i.i
  %133 = ptrtoint ptr %arrayidx11.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx11.i45.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp13.i46.i.i = icmp eq i8 %132, %134
  br i1 %cmp13.i46.i.i, label %for.body8.i47.i.i.dccp_feat_reconcile.exit.i_crit_edge, label %for.cond3.i43.i.i

for.body8.i47.i.i.dccp_feat_reconcile.exit.i_crit_edge: ; preds = %for.body8.i47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_reconcile.exit.i

for.inc18.i52.i.i:                                ; preds = %for.cond3.i43.i.i.for.inc18.i52.i.i_crit_edge, %for.cond3.preheader.i38.i.i.for.inc18.i52.i.i_crit_edge
  %indvars.iv.next34.i50.i.i = add nuw nsw i32 %indvars.iv33.i37.i.i, 1
  %exitcond36.not.i51.i.i = icmp eq i32 %indvars.iv.next34.i50.i.i, %wide.trip.count35.i34.i.i
  br i1 %exitcond36.not.i51.i.i, label %for.inc18.i52.i.i.do.body105.i_crit_edge, label %for.inc18.i52.i.i.for.cond3.preheader.i38.i.i_crit_edge

for.inc18.i52.i.i.for.cond3.preheader.i38.i.i_crit_edge: ; preds = %for.inc18.i52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i38.i.i

for.inc18.i52.i.i.do.body105.i_crit_edge:         ; preds = %for.inc18.i52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

dccp_feat_reconcile.exit.i:                       ; preds = %for.body8.i47.i.i.dccp_feat_reconcile.exit.i_crit_edge, %for.body8.i.i.i.dccp_feat_reconcile.exit.i_crit_edge, %do.end.i.i
  %retval.0.i182.shrunk.i = phi i8 [ 0, %do.end.i.i ], [ %128, %for.body8.i.i.i.dccp_feat_reconcile.exit.i_crit_edge ], [ %132, %for.body8.i47.i.i.dccp_feat_reconcile.exit.i_crit_edge ]
  %135 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i182.shrunk.i, i8 %136)
  %cmp102.not.i = icmp eq i8 %retval.0.i182.shrunk.i, %136
  br i1 %cmp102.not.i, label %if.end118.i, label %dccp_feat_reconcile.exit.i.do.body105.i_crit_edge

dccp_feat_reconcile.exit.i.do.body105.i_crit_edge: ; preds = %dccp_feat_reconcile.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

do.body105.i:                                     ; preds = %dccp_feat_reconcile.exit.i.do.body105.i_crit_edge, %for.inc18.i52.i.i.do.body105.i_crit_edge, %for.inc18.i.i.i.do.body105.i_crit_edge, %if.then4.i.i.do.body105.i_crit_edge
  %call106.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %do.body105.i.cleanup_crit_edge, label %do.end111.i

do.body105.i.cleanup_crit_edge:                   ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end111.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %val, align 1
  %conv113.i = zext i8 %138 to i32
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.74, i32 noundef %conv113.i) #12
  br label %cleanup

if.end118.i:                                      ; preds = %dccp_feat_reconcile.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %retval.0.i172.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %retval.0.i172.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %retval.0.i182.shrunk.i, ptr %140, align 1
  br label %confirmation_succeeded.i

confirmation_succeeded.i:                         ; preds = %if.end118.i, %if.end67.i.confirmation_succeeded.i_crit_edge
  %142 = ptrtoint ptr %state.i77 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 4, ptr %state.i77, align 8
  br label %cleanup

do.body121.i:                                     ; preds = %if.end86.i.do.body121.i_crit_edge, %do.end80.i, %do.body74.i.do.body121.i_crit_edge, %if.then62.i.do.body121.i_crit_edge, %if.then53.i.do.body121.i_crit_edge, %if.end37.i.do.body121.i_crit_edge
  %call122.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %do.body121.i.do.end132.i_crit_edge, label %do.end127.i

do.body121.i.do.end132.i_crit_edge:               ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end132.i

do.end127.i:                                      ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #11
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.74) #12
  br label %do.end132.i

do.end132.i:                                      ; preds = %do.end127.i, %do.body121.i.do.end132.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool134.not.i = icmp eq i8 %mandatory, 0
  %conv136.i = select i1 %tobool134.not.i, i32 5, i32 6
  br label %cleanup

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge232
  %conv.i = zext i8 %opt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %opt)
  %cmp.i84 = icmp eq i8 %opt, 35
  %conv.i.i.i85 = zext i8 %feat to i32
  %143 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %143)
  %144 = icmp ult i8 %143, 9
  %sub.i.i.i86 = add nsw i32 %conv.i.i.i85, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i.i87 = icmp eq i8 %feat, -64
  %..i.i.i88 = select i1 %cond.i.i.i87, i32 9, i32 -1
  %retval.0.i.i.i89 = select i1 %144, i32 %sub.i.i.i86, i32 %..i.i.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i89)
  %cmp.i.i90 = icmp slt i32 %retval.0.i.i.i89, 0
  br i1 %cmp.i.i90, label %sw.bb11.dccp_feat_type.exit.i96_crit_edge, label %if.end.i.i93

sw.bb11.dccp_feat_type.exit.i96_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_type.exit.i96

if.end.i.i93:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %reconciliation.i.i91 = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i89, i32 2
  %145 = ptrtoint ptr %reconciliation.i.i91 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reconciliation.i.i91, align 4
  %conv.i.i92 = trunc i32 %146 to i8
  br label %dccp_feat_type.exit.i96

dccp_feat_type.exit.i96:                          ; preds = %if.end.i.i93, %sw.bb11.dccp_feat_type.exit.i96_crit_edge
  %retval.0.i.i94 = phi i8 [ %conv.i.i92, %if.end.i.i93 ], [ -1, %sw.bb11.dccp_feat_type.exit.i96_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i) #9
  %147 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 -1, ptr %fval.i, align 8, !annotation !214
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %148 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i95 = icmp eq i8 %148, 0
  br i1 %tobool.not.i95, label %dccp_feat_type.exit.i96.do.end10.i_crit_edge, label %do.end.i97

dccp_feat_type.exit.i96.do.end10.i_crit_edge:     ; preds = %dccp_feat_type.exit.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

do.end.i97:                                       ; preds = %dccp_feat_type.exit.i96
  %switch.tableidx217 = add i8 %opt, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx217)
  %149 = icmp ult i8 %switch.tableidx217, 4
  br i1 %149, label %switch.lookup216, label %do.end.i97.dccp_feat_oname.exit.i104_crit_edge

do.end.i97.dccp_feat_oname.exit.i104_crit_edge:   ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_oname.exit.i104

switch.lookup216:                                 ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #11
  %150 = sext i8 %switch.tableidx217 to i32
  %switch.gep218 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_feat_parse_options.106, i32 0, i32 %150
  %151 = ptrtoint ptr %switch.gep218 to i32
  call void @__asan_load4_noabort(i32 %151)
  %switch.load219 = load ptr, ptr %switch.gep218, align 4
  br label %dccp_feat_oname.exit.i104

dccp_feat_oname.exit.i104:                        ; preds = %switch.lookup216, %do.end.i97.dccp_feat_oname.exit.i104_crit_edge
  %retval.0.i157.i = phi ptr [ %switch.load219, %switch.lookup216 ], [ null, %do.end.i97.dccp_feat_oname.exit.i104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %feat)
  %152 = icmp sgt i8 %feat, 9
  %brmerge.i102 = or i1 %152, %cond.i.i.i87
  %.str.35.mux.i103 = select i1 %152, ptr @.str.35, ptr @.str.45
  br i1 %brmerge.i102, label %dccp_feat_oname.exit.i104.dccp_feat_fname.exit.i109_crit_edge, label %if.end9.i.i106

dccp_feat_oname.exit.i104.dccp_feat_fname.exit.i109_crit_edge: ; preds = %dccp_feat_oname.exit.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i109

if.end9.i.i106:                                   ; preds = %dccp_feat_oname.exit.i104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %feat)
  %cmp11.i.i105 = icmp slt i8 %feat, 0
  br i1 %cmp11.i.i105, label %if.end9.i.i106.dccp_feat_fname.exit.i109_crit_edge, label %if.end14.i.i108

if.end9.i.i106.dccp_feat_fname.exit.i109_crit_edge: ; preds = %if.end9.i.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit.i109

if.end14.i.i108:                                  ; preds = %if.end9.i.i106
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i107 = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i.i.i85
  %153 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i.i107, align 4
  br label %dccp_feat_fname.exit.i109

dccp_feat_fname.exit.i109:                        ; preds = %if.end14.i.i108, %if.end9.i.i106.dccp_feat_fname.exit.i109_crit_edge, %dccp_feat_oname.exit.i104.dccp_feat_fname.exit.i109_crit_edge
  %retval.0.i160.i = phi ptr [ %154, %if.end14.i.i108 ], [ %.str.35.mux.i103, %dccp_feat_oname.exit.i104.dccp_feat_fname.exit.i109_crit_edge ], [ @.str.46, %if.end9.i.i106.dccp_feat_fname.exit.i109_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.86, ptr noundef %retval.0.i157.i, ptr noundef %retval.0.i160.i) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %dccp_feat_fname.exit.i109, %dccp_feat_type.exit.i96.do.end10.i_crit_edge
  br i1 %cmp.i.i90, label %dccp_feat_type.exit.thread.i.i111, label %dccp_feat_type.exit.i.i114

dccp_feat_type.exit.thread.i.i111:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i.i83) #9
  %155 = ptrtoint ptr %fval.i.i83 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 -1, ptr %fval.i.i83, align 8, !annotation !214
  store ptr %val, ptr %fval.i.i83, align 8
  %len18.i.i110 = getelementptr inbounds %struct.anon, ptr %fval.i.i83, i32 0, i32 1
  %156 = ptrtoint ptr %len18.i.i110 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %len, ptr %len18.i.i110, align 4
  br label %dccp_feat_printvals.exit.i117

dccp_feat_type.exit.i.i114:                       ; preds = %do.end10.i
  %reconciliation.i.i.i112 = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i89, i32 2
  %157 = ptrtoint ptr %reconciliation.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %reconciliation.i.i.i112, align 4
  %conv.i.i161.i = trunc i32 %158 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fval.i.i83) #9
  %159 = ptrtoint ptr %fval.i.i83 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 -1, ptr %fval.i.i83, align 8, !annotation !214
  store ptr %val, ptr %fval.i.i83, align 8
  %len1.i.i113 = getelementptr inbounds %struct.anon, ptr %fval.i.i83, i32 0, i32 1
  %160 = ptrtoint ptr %len1.i.i113 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %len, ptr %len1.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i161.i)
  %cmp.i162.i = icmp eq i8 %conv.i.i161.i, 8
  br i1 %cmp.i162.i, label %if.then.i.i116, label %dccp_feat_type.exit.i.i114.dccp_feat_printvals.exit.i117_crit_edge

dccp_feat_type.exit.i.i114.dccp_feat_printvals.exit.i117_crit_edge: ; preds = %dccp_feat_type.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_printvals.exit.i117

if.then.i.i116:                                   ; preds = %dccp_feat_type.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i115 = tail call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %161 = ptrtoint ptr %fval.i.i83 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %call3.i.i115, ptr %fval.i.i83, align 8
  br label %dccp_feat_printvals.exit.i117

dccp_feat_printvals.exit.i117:                    ; preds = %if.then.i.i116, %dccp_feat_type.exit.i.i114.dccp_feat_printvals.exit.i117_crit_edge, %dccp_feat_type.exit.thread.i.i111
  call fastcc void @dccp_feat_printval(i8 noundef zeroext %feat, ptr noundef nonnull %fval.i.i83) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fval.i.i83) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %162 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool12.not.i = icmp eq i8 %162, 0
  br i1 %tobool12.not.i, label %dccp_feat_printvals.exit.i117.do.end25.i_crit_edge, label %do.end16.i

dccp_feat_printvals.exit.i117.do.end25.i_crit_edge: ; preds = %dccp_feat_printvals.exit.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25.i

do.end16.i:                                       ; preds = %dccp_feat_printvals.exit.i117
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool19.not.i = icmp eq i8 %mandatory, 0
  %cond.i118 = select i1 %tobool19.not.i, ptr @.str.9, ptr @.str.71
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond.i118) #12
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end16.i, %dccp_feat_printvals.exit.i117.do.end25.i_crit_edge
  %163 = zext i8 %retval.0.i.i94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %retval.0.i.i94, label %do.end25.i.dccp_feat_handle_nn_established.exit_crit_edge [
    i8 -1, label %if.then29.i
    i8 8, label %if.end40.i
  ]

do.end25.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.then29.i:                                      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool32.not.i119 = icmp eq i8 %mandatory, 0
  %or.cond.i120 = and i1 %tobool32.not.i119, %cmp.i84
  br i1 %or.cond.i120, label %if.then29.i.dccp_feat_handle_nn_established.exit_crit_edge, label %if.then29.i.fast_path_unknown.i_crit_edge

if.then29.i.fast_path_unknown.i_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_unknown.i

if.then29.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.end40.i:                                       ; preds = %do.end25.i
  %164 = add i8 %len, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %164)
  %165 = icmp ult i8 %164, -8
  br i1 %165, label %if.end40.i.fast_path_unknown.i_crit_edge, label %if.end48.i

if.end40.i.fast_path_unknown.i_crit_edge:         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_unknown.i

if.end48.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %opt)
  %cmp50.i = icmp eq i8 %opt, 32
  br i1 %cmp50.i, label %if.then52.i, label %if.else68.i

if.then52.i:                                      ; preds = %if.end48.i
  %call53.i = call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %166 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %call53.i, ptr %fval.i, align 8
  %167 = zext i8 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %feat, label %if.then52.i.fast_path_unknown.i_crit_edge [
    i8 5, label %dccp_feat_is_valid_nn_val.exit.i121
    i8 3, label %sw.bb3.i165.i
  ]

if.then52.i.fast_path_unknown.i_crit_edge:        ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_unknown.i

sw.bb3.i165.i:                                    ; preds = %if.then52.i
  %168 = add i64 %call53.i, -32
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177632, i64 %168)
  %169 = icmp ult i64 %168, 70368744177632
  br i1 %169, label %sw.bb3.i165.i.if.end57.i123_crit_edge, label %sw.bb3.i165.i.fast_path_unknown.i_crit_edge

sw.bb3.i165.i.fast_path_unknown.i_crit_edge:      ; preds = %sw.bb3.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_unknown.i

sw.bb3.i165.i.if.end57.i123_crit_edge:            ; preds = %sw.bb3.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i123

dccp_feat_is_valid_nn_val.exit.i121:              ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %call53.i)
  %cmp.i164.i = icmp ult i64 %call53.i, 65536
  br i1 %cmp.i164.i, label %dccp_feat_is_valid_nn_val.exit.i121.if.end57.i123_crit_edge, label %dccp_feat_is_valid_nn_val.exit.i121.fast_path_unknown.i_crit_edge

dccp_feat_is_valid_nn_val.exit.i121.fast_path_unknown.i_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_unknown.i

dccp_feat_is_valid_nn_val.exit.i121.if.end57.i123_crit_edge: ; preds = %dccp_feat_is_valid_nn_val.exit.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i123

if.end57.i123:                                    ; preds = %dccp_feat_is_valid_nn_val.exit.i121.if.end57.i123_crit_edge, %sw.bb3.i165.i.if.end57.i123_crit_edge
  %call.i.i122 = call fastcc ptr @dccp_feat_entry_new(ptr noundef %dccps_featneg, i8 noundef zeroext %feat, i1 noundef zeroext %cmp.i84) #9
  %cmp.i167.i = icmp eq ptr %call.i.i122, null
  br i1 %cmp.i167.i, label %if.end57.i123.dccp_feat_handle_nn_established.exit_crit_edge, label %lor.lhs.false62.i

if.end57.i123.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %if.end57.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

lor.lhs.false62.i:                                ; preds = %if.end57.i123
  %feat_num.i.i124 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 2
  %170 = ptrtoint ptr %feat_num.i.i124 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %feat, ptr %feat_num.i.i124, align 1
  %is_local.i.i125 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 6
  %frombool.i.i = zext i1 %cmp.i84 to i8
  %171 = ptrtoint ptr %is_local.i.i125 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %frombool.i.i, ptr %is_local.i.i125, align 1
  %state.i.i126 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 1
  %172 = ptrtoint ptr %state.i.i126 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 4, ptr %state.i.i126, align 8
  %needs_confirm.i.i127 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 4
  %173 = ptrtoint ptr %needs_confirm.i.i127 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %needs_confirm.i.i127, align 1
  %empty_confirm.i.i128 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 5
  %174 = ptrtoint ptr %empty_confirm.i.i128 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %empty_confirm.i.i128, align 4
  %175 = ptrtoint ptr %call.i.i122 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 0, ptr %call.i.i122, align 8
  %176 = ptrtoint ptr %fval.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %fval.i, align 8
  store i64 %177, ptr %call.i.i122, align 8
  %needs_mandatory.i.i129 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i122, i32 0, i32 3
  %178 = ptrtoint ptr %needs_mandatory.i.i129 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %needs_mandatory.i.i129, align 2
  %call1.i.i = call fastcc i32 @__dccp_feat_activate(ptr noundef %sk, i32 noundef %retval.0.i.i.i89, i1 noundef zeroext %cmp.i84, ptr noundef nonnull %fval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool65.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool65.not.i, label %if.end67.i130, label %lor.lhs.false62.i.dccp_feat_handle_nn_established.exit_crit_edge

lor.lhs.false62.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.end67.i130:                                    ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ack.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %179 = ptrtoint ptr %icsk_ack.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %icsk_ack.i.i, align 4
  %181 = or i8 %180, 1
  store i8 %181, ptr %icsk_ack.i.i, align 4
  br label %dccp_feat_handle_nn_established.exit

if.else68.i:                                      ; preds = %if.end48.i
  br i1 %cmp.i84, label %if.else68.i.for.cond.i.i134_crit_edge, label %do.body91.i

if.else68.i.for.cond.i.i134_crit_edge:            ; preds = %if.else68.i
  br label %for.cond.i.i134

for.cond.i.i134:                                  ; preds = %if.else.i.i142.for.cond.i.i134_crit_edge, %if.else68.i.for.cond.i.i134_crit_edge
  %.pn.in.i.i131 = phi ptr [ %.pn.i.i132, %if.else.i.i142.for.cond.i.i134_crit_edge ], [ %dccps_featneg, %if.else68.i.for.cond.i.i134_crit_edge ]
  %182 = ptrtoint ptr %.pn.in.i.i131 to i32
  call void @__asan_load4_noabort(i32 %182)
  %.pn.i.i132 = load ptr, ptr %.pn.in.i.i131, align 4
  %cmp.not.i.i133 = icmp eq ptr %.pn.i.i132, %dccps_featneg
  br i1 %cmp.not.i.i133, label %for.cond.i.i134.dccp_feat_handle_nn_established.exit_crit_edge, label %for.body.i.i137

for.cond.i.i134.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %for.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

for.body.i.i137:                                  ; preds = %for.cond.i.i134
  %feat_num2.i.i135 = getelementptr i8, ptr %.pn.i.i132, i32 -7
  %183 = ptrtoint ptr %feat_num2.i.i135 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %feat_num2.i.i135, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %184, i8 %feat)
  %cmp4.i.i136 = icmp eq i8 %184, %feat
  br i1 %cmp4.i.i136, label %land.lhs.true.i.i140, label %for.body.i.i137.if.else.i.i142_crit_edge

for.body.i.i137.if.else.i.i142_crit_edge:         ; preds = %for.body.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i142

land.lhs.true.i.i140:                             ; preds = %for.body.i.i137
  %is_local6.i.i138 = getelementptr i8, ptr %.pn.i.i132, i32 -3
  %185 = ptrtoint ptr %is_local6.i.i138 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_local6.i.i138, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp10.i.i139 = icmp eq i8 %186, 1
  br i1 %cmp10.i.i139, label %dccp_feat_list_lookup.exit.i144, label %land.lhs.true.i.i140.if.else.i.i142_crit_edge

land.lhs.true.i.i140.if.else.i.i142_crit_edge:    ; preds = %land.lhs.true.i.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i142

if.else.i.i142:                                   ; preds = %land.lhs.true.i.i140.if.else.i.i142_crit_edge, %for.body.i.i137.if.else.i.i142_crit_edge
  %cmp15.i.i141 = icmp ugt i8 %184, %feat
  br i1 %cmp15.i.i141, label %if.else.i.i142.dccp_feat_handle_nn_established.exit_crit_edge, label %if.else.i.i142.for.cond.i.i134_crit_edge

if.else.i.i142.for.cond.i.i134_crit_edge:         ; preds = %if.else.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i134

if.else.i.i142.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %if.else.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

dccp_feat_list_lookup.exit.i144:                  ; preds = %land.lhs.true.i.i140
  %feat_num2.i.i135.le = getelementptr i8, ptr %.pn.i.i132, i32 -7
  %entry1.0.le.i.i143 = getelementptr i8, ptr %.pn.i.i132, i32 -16
  %cmp75.i = icmp eq ptr %entry1.0.le.i.i143, null
  br i1 %cmp75.i, label %dccp_feat_list_lookup.exit.i144.dccp_feat_handle_nn_established.exit_crit_edge, label %lor.lhs.false77.i

dccp_feat_list_lookup.exit.i144.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %dccp_feat_list_lookup.exit.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

lor.lhs.false77.i:                                ; preds = %dccp_feat_list_lookup.exit.i144
  %state.i145 = getelementptr i8, ptr %.pn.i.i132, i32 -8
  %187 = ptrtoint ptr %state.i145 to i32
  call void @__asan_load1_noabort(i32 %187)
  %bf.load.i146 = load i8, ptr %state.i145, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i146)
  %cmp78.not.i = icmp eq i8 %bf.load.i146, 2
  br i1 %cmp78.not.i, label %if.end81.i, label %lor.lhs.false77.i.dccp_feat_handle_nn_established.exit_crit_edge

lor.lhs.false77.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.end81.i:                                       ; preds = %lor.lhs.false77.i
  %call82.i147 = call i64 @dccp_decode_value_var(ptr noundef %val, i8 noundef zeroext %len) #9
  %188 = ptrtoint ptr %fval.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %call82.i147, ptr %fval.i, align 8
  %189 = ptrtoint ptr %entry1.0.le.i.i143 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %entry1.0.le.i.i143, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call82.i147, i64 %190)
  %cmp84.not.i = icmp eq i64 %call82.i147, %190
  br i1 %cmp84.not.i, label %if.end87.i, label %if.end81.i.dccp_feat_handle_nn_established.exit_crit_edge

if.end81.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.end87.i:                                       ; preds = %if.end81.i
  %call1.i181.i = call fastcc i32 @__dccp_feat_activate(ptr noundef %sk, i32 noundef %retval.0.i.i.i89, i1 noundef zeroext true, ptr noundef nonnull %fval.i) #9
  %call.i.i.i176 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i.i132) #9
  br i1 %call.i.i.i176, label %if.end.i.i.i178, label %if.end87.i.if.end.i.i3.i_crit_edge

if.end87.i.if.end.i.i3.i_crit_edge:               ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i3.i

if.end.i.i.i178:                                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i177 = getelementptr i8, ptr %.pn.i.i132, i32 4
  %191 = ptrtoint ptr %prev.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %prev.i.i.i177, align 4
  %193 = ptrtoint ptr %.pn.i.i132 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %.pn.i.i132, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %192, ptr %prev1.i.i.i.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %194, ptr %192, align 4
  br label %if.end.i.i3.i

if.end.i.i3.i:                                    ; preds = %if.end.i.i.i178, %if.end87.i.if.end.i.i3.i_crit_edge
  %197 = ptrtoint ptr %.pn.i.i132 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i.i132, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.i.i132, i32 4
  %198 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %199 = ptrtoint ptr %feat_num2.i.i135.le to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %feat_num2.i.i135.le, align 1
  %conv.i.i.i.i.i181 = zext i8 %200 to i32
  %201 = add i8 %200, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %201)
  %202 = icmp ult i8 %201, 9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i181, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %200)
  %cond.i.i.i.i.i = icmp eq i8 %200, -64
  %..i.i.i.i.i = select i1 %cond.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i = select i1 %202, i32 %sub.i.i.i.i.i, i32 %..i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge, label %dccp_feat_type.exit.i.i.i

if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge:  ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit

dccp_feat_type.exit.i.i.i:                        ; preds = %if.end.i.i3.i
  %reconciliation.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i, i32 2
  %203 = ptrtoint ptr %reconciliation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %reconciliation.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %204 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i)
  %cmp2.i.i.i = icmp eq i8 %conv.i.i.i.i, 4
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge

dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_list_pop.exit

if.then4.i.i.i:                                   ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %entry1.0.le.i.i143 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %entry1.0.le.i.i143, align 8
  call void @kfree(ptr noundef %206) #9
  br label %dccp_feat_list_pop.exit

dccp_feat_list_pop.exit:                          ; preds = %if.then4.i.i.i, %dccp_feat_type.exit.i.i.i.dccp_feat_list_pop.exit_crit_edge, %if.end.i.i3.i.dccp_feat_list_pop.exit_crit_edge
  %207 = ptrtoint ptr %entry1.0.le.i.i143 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 0, ptr %entry1.0.le.i.i143, align 8
  call void @kfree(ptr noundef nonnull %entry1.0.le.i.i143) #9
  br label %dccp_feat_handle_nn_established.exit

do.body91.i:                                      ; preds = %if.else68.i
  %call92.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %do.body91.i.fast_path_failed.i_crit_edge, label %do.end97.i

do.body91.i.fast_path_failed.i_crit_edge:         ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_failed.i

do.end97.i:                                       ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #11
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.86, i32 noundef %conv.i) #12
  br label %fast_path_failed.i

fast_path_unknown.i:                              ; preds = %dccp_feat_is_valid_nn_val.exit.i121.fast_path_unknown.i_crit_edge, %sw.bb3.i165.i.fast_path_unknown.i_crit_edge, %if.then52.i.fast_path_unknown.i_crit_edge, %if.end40.i.fast_path_unknown.i_crit_edge, %if.then29.i.fast_path_unknown.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool106.not.i = icmp eq i8 %mandatory, 0
  br i1 %tobool106.not.i, label %if.then107.i, label %fast_path_unknown.i.fast_path_failed.i_crit_edge

fast_path_unknown.i.fast_path_failed.i_crit_edge: ; preds = %fast_path_unknown.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fast_path_failed.i

if.then107.i:                                     ; preds = %fast_path_unknown.i
  %call.i.i.i148 = call fastcc ptr @dccp_feat_entry_new(ptr noundef %dccps_featneg, i8 noundef zeroext %feat, i1 noundef zeroext %cmp.i84) #9
  %cmp.i.i182.i = icmp eq ptr %call.i.i.i148, null
  br i1 %cmp.i.i182.i, label %if.then107.i.dccp_feat_handle_nn_established.exit_crit_edge, label %if.end.i.i.i156

if.then107.i.dccp_feat_handle_nn_established.exit_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_handle_nn_established.exit

if.end.i.i.i156:                                  ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i.i.i149 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 2
  %208 = ptrtoint ptr %feat_num.i.i.i149 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %feat, ptr %feat_num.i.i.i149, align 1
  %is_local.i.i.i150 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 6
  %frombool.i.i.i151 = zext i1 %cmp.i84 to i8
  %209 = ptrtoint ptr %is_local.i.i.i150 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %frombool.i.i.i151, ptr %is_local.i.i.i150, align 1
  %state.i.i.i152 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 1
  %210 = ptrtoint ptr %state.i.i.i152 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 4, ptr %state.i.i.i152, align 8
  %needs_confirm.i.i.i153 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 4
  %211 = ptrtoint ptr %needs_confirm.i.i.i153 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %needs_confirm.i.i.i153, align 1
  %empty_confirm.i.i.i154 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 5
  %212 = ptrtoint ptr %empty_confirm.i.i.i154 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %empty_confirm.i.i.i154, align 4
  %213 = ptrtoint ptr %call.i.i.i148 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 0, ptr %call.i.i.i148, align 8
  %needs_mandatory.i.i.i155 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i.i148, i32 0, i32 3
  %214 = ptrtoint ptr %needs_mandatory.i.i.i155 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %needs_mandatory.i.i.i155, align 2
  br label %dccp_feat_handle_nn_established.exit

fast_path_failed.i:                               ; preds = %fast_path_unknown.i.fast_path_failed.i_crit_edge, %do.end97.i, %do.body91.i.fast_path_failed.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mandatory)
  %tobool114.not.i = icmp eq i8 %mandatory, 0
  %conv116.i = select i1 %tobool114.not.i, i32 5, i32 6
  br label %dccp_feat_handle_nn_established.exit

dccp_feat_handle_nn_established.exit:             ; preds = %fast_path_failed.i, %if.end.i.i.i156, %if.then107.i.dccp_feat_handle_nn_established.exit_crit_edge, %dccp_feat_list_pop.exit, %if.end81.i.dccp_feat_handle_nn_established.exit_crit_edge, %lor.lhs.false77.i.dccp_feat_handle_nn_established.exit_crit_edge, %dccp_feat_list_lookup.exit.i144.dccp_feat_handle_nn_established.exit_crit_edge, %if.else.i.i142.dccp_feat_handle_nn_established.exit_crit_edge, %for.cond.i.i134.dccp_feat_handle_nn_established.exit_crit_edge, %if.end67.i130, %lor.lhs.false62.i.dccp_feat_handle_nn_established.exit_crit_edge, %if.end57.i123.dccp_feat_handle_nn_established.exit_crit_edge, %if.then29.i.dccp_feat_handle_nn_established.exit_crit_edge, %do.end25.i.dccp_feat_handle_nn_established.exit_crit_edge
  %retval.0.i157 = phi i32 [ %conv116.i, %fast_path_failed.i ], [ 0, %if.then29.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %do.end25.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 9, %lor.lhs.false62.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %lor.lhs.false77.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %dccp_feat_list_lookup.exit.i144.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %if.end81.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %dccp_feat_list_pop.exit ], [ 0, %if.end67.i130 ], [ 9, %if.end57.i123.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %if.end.i.i.i156 ], [ 9, %if.then107.i.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %if.else.i.i142.dccp_feat_handle_nn_established.exit_crit_edge ], [ 0, %for.cond.i.i134.dccp_feat_handle_nn_established.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fval.i) #9
  br label %cleanup

cleanup:                                          ; preds = %dccp_feat_handle_nn_established.exit, %do.end132.i, %confirmation_succeeded.i, %do.end111.i, %do.body105.i.cleanup_crit_edge, %dccp_feat_list_pop.exit.i, %if.end45.i79.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge, %dccp_feat_change_recv.exit, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i32 [ %retval.0.i157, %dccp_feat_handle_nn_established.exit ], [ %retval.0.i, %dccp_feat_change_recv.exit ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %conv136.i, %do.end132.i ], [ 0, %dccp_feat_list_pop.exit.i ], [ 0, %confirmation_succeeded.i ], [ 6, %if.then30.i.cleanup_crit_edge ], [ 0, %if.end37.i.cleanup_crit_edge ], [ 0, %if.end45.i79.cleanup_crit_edge ], [ 5, %do.end111.i ], [ 5, %do.body105.i.cleanup_crit_edge ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_init(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %on = alloca i8, align 1
  %off = alloca i8, align 1
  %tx = alloca %struct.anon.198, align 8
  %rx = alloca %struct.anon.198, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %on) #9
  %0 = ptrtoint ptr %on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off) #9
  %1 = ptrtoint ptr %off to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %off, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx) #9
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tx, align 8, !annotation !214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx) #9
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %rx, align 8, !annotation !214
  %4 = load i32, ptr @sysctl_dccp_sequence_window, align 4
  %conv = zext i32 %4 to i64
  %5 = add nsw i64 %conv, -32
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177632, i64 %5)
  %6 = icmp ult i64 %5, 70368744177632
  br i1 %6, label %dccp_feat_default_value.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dccp_feat_default_value.exit.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp5.i = icmp eq i32 %4, 100
  br i1 %cmp5.i, label %dccp_feat_default_value.exit.i.if.end_crit_edge, label %if.end8.i

dccp_feat_default_value.exit.i.if.end_crit_edge:  ; preds = %dccp_feat_default_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end8.i:                                        ; preds = %dccp_feat_default_value.exit.i
  %call.i.i = tail call fastcc ptr @dccp_feat_entry_new(ptr noundef %dccps_featneg, i8 noundef zeroext 3, i1 noundef zeroext true) #9
  %cmp.i23.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i23.i, label %if.end8.i.cleanup_crit_edge, label %if.end.i24.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i24.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %feat_num.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %feat_num.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %feat_num.i.i, align 1
  %is_local.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %is_local.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_local.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %state.i.i, align 8
  %needs_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %needs_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %needs_confirm.i.i, align 1
  %empty_confirm.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %empty_confirm.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %empty_confirm.i.i, align 4
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %call.i.i, align 8
  %needs_mandatory.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %needs_mandatory.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %needs_mandatory.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.end.i24.i, %dccp_feat_default_value.exit.i.if.end_crit_edge
  %call2 = call fastcc i32 @__feat_register_sp(ptr noundef %dccps_featneg, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %off, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @__feat_register_sp(ptr noundef %dccps_featneg, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %on, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %len = getelementptr inbounds %struct.anon.198, ptr %tx, i32 0, i32 1
  %call10 = call i32 @ccid_get_builtin_ccids(ptr noundef nonnull %tx, ptr noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %len15 = getelementptr inbounds %struct.anon.198, ptr %rx, i32 0, i32 1
  %call16 = call i32 @ccid_get_builtin_ccids(ptr noundef nonnull %rx, ptr noundef %len15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end13
  %14 = load i32, ptr @sysctl_dccp_tx_ccid, align 4
  %conv21 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx, align 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %len, align 4
  %cmp.not.i = icmp eq ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp227.not.i = icmp eq i8 %18, 0
  %or.cond.i = or i1 %cmp.not.i, %cmp227.not.i
  br i1 %or.cond.i, label %if.end20.free_ccid_lists_crit_edge, label %for.body.preheader.i

if.end20.free_ccid_lists_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ccid_lists

for.body.preheader.i:                             ; preds = %if.end20
  %wide.trip.count.i = zext i8 %18 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %does_occur.029.i = phi i8 [ 0, %for.body.preheader.i ], [ %does_occur.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %16, i32 %indvars.iv.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv21)
  %cmp6.i = icmp eq i8 %20, %conv21
  br i1 %cmp6.i, label %if.then8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %16, align 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.i, align 1
  %inc.i = add i8 %does_occur.029.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i.for.inc.i_crit_edge
  %does_occur.1.i = phi i8 [ %inc.i, %if.then8.i ], [ %does_occur.029.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %does_occur.1.i)
  %tobool.not.i = icmp eq i8 %does_occur.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.free_ccid_lists_crit_edge, label %lor.lhs.false

for.end.i.free_ccid_lists_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ccid_lists

lor.lhs.false:                                    ; preds = %for.end.i
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv21, ptr %16, align 1
  %25 = load i32, ptr @sysctl_dccp_rx_ccid, align 4
  %conv26 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx, align 8
  %28 = ptrtoint ptr %len15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len15, align 4
  %cmp.not.i60 = icmp eq ptr %27, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp227.not.i61 = icmp eq i8 %29, 0
  %or.cond.i62 = or i1 %cmp.not.i60, %cmp227.not.i61
  br i1 %or.cond.i62, label %lor.lhs.false.free_ccid_lists_crit_edge, label %for.body.preheader.i64

lor.lhs.false.free_ccid_lists_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ccid_lists

for.body.preheader.i64:                           ; preds = %lor.lhs.false
  %wide.trip.count.i63 = zext i8 %29 to i32
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc.i75.for.body.i69_crit_edge, %for.body.preheader.i64
  %indvars.iv.i65 = phi i32 [ 0, %for.body.preheader.i64 ], [ %indvars.iv.next.i73, %for.inc.i75.for.body.i69_crit_edge ]
  %does_occur.029.i66 = phi i8 [ 0, %for.body.preheader.i64 ], [ %does_occur.1.i72, %for.inc.i75.for.body.i69_crit_edge ]
  %arrayidx.i67 = getelementptr i8, ptr %27, i32 %indvars.iv.i65
  %30 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i67, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %conv26)
  %cmp6.i68 = icmp eq i8 %31, %conv26
  br i1 %cmp6.i68, label %if.then8.i71, label %for.body.i69.for.inc.i75_crit_edge

for.body.i69.for.inc.i75_crit_edge:               ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i75

if.then8.i71:                                     ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %27, align 1
  %34 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx.i67, align 1
  %inc.i70 = add i8 %does_occur.029.i66, 1
  br label %for.inc.i75

for.inc.i75:                                      ; preds = %if.then8.i71, %for.body.i69.for.inc.i75_crit_edge
  %does_occur.1.i72 = phi i8 [ %inc.i70, %if.then8.i71 ], [ %does_occur.029.i66, %for.body.i69.for.inc.i75_crit_edge ]
  %indvars.iv.next.i73 = add nuw nsw i32 %indvars.iv.i65, 1
  %exitcond.not.i74 = icmp eq i32 %indvars.iv.next.i73, %wide.trip.count.i63
  br i1 %exitcond.not.i74, label %for.end.i77, label %for.inc.i75.for.body.i69_crit_edge

for.inc.i75.for.body.i69_crit_edge:               ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i69

for.end.i77:                                      ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %does_occur.1.i72)
  %tobool.not.i76 = icmp eq i8 %does_occur.1.i72, 0
  br i1 %tobool.not.i76, label %for.end.i77.free_ccid_lists_crit_edge, label %if.end32

for.end.i77.free_ccid_lists_crit_edge:            ; preds = %for.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ccid_lists

if.end32:                                         ; preds = %for.end.i77
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv26, ptr %27, align 1
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx, align 8
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len, align 4
  %call35 = call fastcc i32 @__feat_register_sp(ptr noundef %dccps_featneg, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %37, i8 noundef zeroext %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.free_ccid_lists_crit_edge

if.end32.free_ccid_lists_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ccid_lists

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx, align 8
  %42 = ptrtoint ptr %len15 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %len15, align 4
  %call41 = call fastcc i32 @__feat_register_sp(ptr noundef %dccps_featneg, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %41, i8 noundef zeroext %43)
  br label %free_ccid_lists

free_ccid_lists:                                  ; preds = %if.end38, %if.end32.free_ccid_lists_crit_edge, %for.end.i77.free_ccid_lists_crit_edge, %lor.lhs.false.free_ccid_lists_crit_edge, %for.end.i.free_ccid_lists_crit_edge, %if.end20.free_ccid_lists_crit_edge
  %rc.0 = phi i32 [ %call35, %if.end32.free_ccid_lists_crit_edge ], [ %call41, %if.end38 ], [ 0, %for.end.i.free_ccid_lists_crit_edge ], [ 0, %if.end20.free_ccid_lists_crit_edge ], [ 0, %for.end.i77.free_ccid_lists_crit_edge ], [ 0, %lor.lhs.false.free_ccid_lists_crit_edge ]
  %44 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx, align 8
  call void @kfree(ptr noundef %45) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_ccid_lists, %if.end13.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %rx, %free_ccid_lists ], [ %tx, %if.end13.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %rc.0, %free_ccid_lists ], [ -105, %if.end13.cleanup.sink.split_crit_edge ]
  %46 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %46)
  %.sink = load ptr, ptr %.sink.in, align 8
  call void @kfree(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -105, %if.end9.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %on) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccid_get_builtin_ccids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_feat_activate_values(ptr noundef %sk, ptr noundef readonly %fn_list) local_unnamed_addr #0 align 64 {
entry:
  %fvals = alloca [10 x [2 x ptr]], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fvals) #9
  %0 = call ptr @memset(ptr %fvals, i32 0, i32 80)
  %1 = ptrtoint ptr %fn_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn146 = load ptr, ptr %fn_list, align 4
  %cmp.not148 = icmp eq ptr %.pn146, %fn_list
  br i1 %cmp.not148, label %entry.for.cond37.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond37.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn149 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn146, %entry.for.body_crit_edge ]
  %cur.0150 = getelementptr i8, ptr %.pn149, i32 -16
  %empty_confirm = getelementptr i8, ptr %.pn149, i32 -4
  %2 = ptrtoint ptr %empty_confirm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %empty_confirm, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %feat_num = getelementptr i8, ptr %.pn149, i32 -7
  %4 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %feat_num, align 1
  %conv.i = zext i8 %5 to i32
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %6)
  %7 = icmp ult i8 %6, 9
  %sub.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %5)
  %cond.i = icmp eq i8 %5, -64
  %..i = select i1 %cond.i, i32 9, i32 -1
  %retval.0.i = select i1 %7, i32 %sub.i, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le170 = zext i8 %5 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv.i.le170, ptr noundef nonnull @.str.2, i32 noundef 1530, ptr noundef nonnull @.str.17) #12
  tail call void @dump_stack() #12
  br label %activation_failed

if.end11:                                         ; preds = %if.end
  %state = getelementptr i8, ptr %.pn149, i32 -8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load)
  %cmp12.not = icmp eq i8 %bf.load, 4
  br i1 %cmp12.not, label %if.end27, label %do.end17

do.end17:                                         ; preds = %if.end11
  %conv.i.le = zext i8 %5 to i32
  %is_local = getelementptr i8, ptr %.pn149, i32 -3
  %9 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_local, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool19.not, ptr @.str.22, ptr @.str.21
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %11 = icmp sgt i8 %5, 9
  %brmerge = or i1 %11, %cond.i
  %.str.35.mux = select i1 %11, ptr @.str.35, ptr @.str.45
  br i1 %brmerge, label %do.end17.dccp_feat_fname.exit_crit_edge, label %if.end9.i

do.end17.dccp_feat_fname.exit_crit_edge:          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end9.i:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11.i = icmp slt i8 %5, 0
  br i1 %cmp11.i, label %if.end9.i.dccp_feat_fname.exit_crit_edge, label %if.end14.i

if.end9.i.dccp_feat_fname.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i.le
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  br label %dccp_feat_fname.exit

dccp_feat_fname.exit:                             ; preds = %if.end14.i, %if.end9.i.dccp_feat_fname.exit_crit_edge, %do.end17.dccp_feat_fname.exit_crit_edge
  %retval.0.i137 = phi ptr [ %13, %if.end14.i ], [ %.str.35.mux, %do.end17.dccp_feat_fname.exit_crit_edge ], [ @.str.46, %if.end9.i.dccp_feat_fname.exit_crit_edge ]
  %bf.cast25 = zext i8 %bf.load to i32
  %arrayidx = getelementptr [5 x ptr], ptr @dccp_feat_sname, i32 0, i32 %bf.cast25
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef %retval.0.i137, ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef 1537, ptr noundef nonnull @.str.17) #12
  br label %activation_failed

if.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %is_local29 = getelementptr i8, ptr %.pn149, i32 -3
  %16 = ptrtoint ptr %is_local29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_local29, align 1, !range !213
  %18 = zext i8 %17 to i32
  %arrayidx31 = getelementptr [10 x [2 x ptr]], ptr %fvals, i32 0, i32 %retval.0.i, i32 %18
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cur.0150, ptr %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn149, align 4
  %cmp.not = icmp eq ptr %.pn, %fn_list
  br i1 %cmp.not, label %for.inc.for.cond37.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond37.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.inc.for.cond37.preheader_crit_edge, %entry.for.cond37.preheader_crit_edge
  br label %for.cond37

for.cond37:                                       ; preds = %lor.lhs.false.for.cond37_crit_edge, %for.cond37.preheader
  %idx.0 = phi i32 [ %dec, %lor.lhs.false.for.cond37_crit_edge ], [ 10, %for.cond37.preheader ]
  %dec = add nsw i32 %idx.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %cmp38 = icmp sgt i32 %idx.0, 0
  br i1 %cmp38, label %for.body40, label %for.end56

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr [10 x [2 x ptr]], ptr %fvals, i32 0, i32 %dec
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx41, align 4
  %call43 = tail call fastcc i32 @__dccp_feat_activate(ptr noundef %sk, i32 noundef %dec, i1 noundef zeroext false, ptr noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %for.body40.do.end52_crit_edge

for.body40.do.end52_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

lor.lhs.false:                                    ; preds = %for.body40
  %arrayidx46 = getelementptr [10 x [2 x ptr]], ptr %fvals, i32 0, i32 %dec, i32 1
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx46, align 4
  %call47 = tail call fastcc i32 @__dccp_feat_activate(ptr noundef %sk, i32 noundef %dec, i1 noundef zeroext true, ptr noundef %24)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false.for.cond37_crit_edge, label %lor.lhs.false.do.end52_crit_edge

lor.lhs.false.do.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

lor.lhs.false.for.cond37_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37

do.end52:                                         ; preds = %lor.lhs.false.do.end52_crit_edge, %for.body40.do.end52_crit_edge
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %dec, ptr noundef nonnull @.str.2, i32 noundef 1552, ptr noundef nonnull @.str.17) #12
  br label %activation_failed

for.end56:                                        ; preds = %for.cond37
  %25 = ptrtoint ptr %fn_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fn_list, align 4
  %cmp68.not153 = icmp eq ptr %26, %fn_list
  br i1 %cmp68.not153, label %for.end56.do.body82_crit_edge, label %for.end56.for.body71_crit_edge

for.end56.for.body71_crit_edge:                   ; preds = %for.end56
  br label %for.body71

for.end56.do.body82_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

for.body71:                                       ; preds = %for.inc75.for.body71_crit_edge, %for.end56.for.body71_crit_edge
  %.pn134.in154 = phi ptr [ %.pn134158, %for.inc75.for.body71_crit_edge ], [ %26, %for.end56.for.body71_crit_edge ]
  %cur.1156 = getelementptr i8, ptr %.pn134.in154, i32 -16
  %27 = ptrtoint ptr %.pn134.in154 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn134158 = load ptr, ptr %.pn134.in154, align 8
  %needs_confirm = getelementptr i8, ptr %.pn134.in154, i32 -5
  %28 = ptrtoint ptr %needs_confirm to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %needs_confirm, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool72.not = icmp eq i8 %29, 0
  br i1 %tobool72.not, label %if.then73, label %for.body71.for.inc75_crit_edge

for.body71.for.inc75_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75

if.then73:                                        ; preds = %for.body71
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn134.in154) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then73.list_del.exit.i_crit_edge

if.then73.list_del.exit.i_crit_edge:              ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn134.in154, i32 4
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %.pn134.in154 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn134.in154, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then73.list_del.exit.i_crit_edge
  %36 = ptrtoint ptr %.pn134.in154 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn134.in154, align 4
  %prev.i.i = getelementptr i8, ptr %.pn134.in154, i32 4
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %cur.1156, null
  br i1 %cmp.not.i.i, label %list_del.exit.i.for.inc75_crit_edge, label %if.end.i.i3.i

list_del.exit.i.for.inc75_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75

if.end.i.i3.i:                                    ; preds = %list_del.exit.i
  %feat_num.i.i = getelementptr i8, ptr %.pn134.in154, i32 -7
  %38 = ptrtoint ptr %feat_num.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %feat_num.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %39 to i32
  %40 = add i8 %39, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %40)
  %41 = icmp ult i8 %40, 9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %39)
  %cond.i.i.i.i.i = icmp eq i8 %39, -64
  %..i.i.i.i.i = select i1 %cond.i.i.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i.i.i = select i1 %41, i32 %sub.i.i.i.i.i, i32 %..i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge, label %dccp_feat_type.exit.i.i.i

if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_type.exit.i.i.i:                        ; preds = %if.end.i.i3.i
  %reconciliation.i.i.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i.i.i, i32 2
  %42 = ptrtoint ptr %reconciliation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reconciliation.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %43 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i.i)
  %cmp2.i.i.i = icmp eq i8 %conv.i.i.i.i, 4
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge

dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge: ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_val_destructor.exit.i.i

if.then4.i.i.i:                                   ; preds = %dccp_feat_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %cur.1156 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.1156, align 8
  tail call void @kfree(ptr noundef %45) #9
  br label %dccp_feat_val_destructor.exit.i.i

dccp_feat_val_destructor.exit.i.i:                ; preds = %if.then4.i.i.i, %dccp_feat_type.exit.i.i.i.dccp_feat_val_destructor.exit.i.i_crit_edge, %if.end.i.i3.i.dccp_feat_val_destructor.exit.i.i_crit_edge
  %46 = ptrtoint ptr %cur.1156 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %cur.1156, align 8
  tail call void @kfree(ptr noundef nonnull %cur.1156) #9
  br label %for.inc75

for.inc75:                                        ; preds = %dccp_feat_val_destructor.exit.i.i, %list_del.exit.i.for.inc75_crit_edge, %for.body71.for.inc75_crit_edge
  %cmp68.not = icmp eq ptr %.pn134158, %fn_list
  br i1 %cmp68.not, label %for.inc75.do.body82_crit_edge, label %for.inc75.for.body71_crit_edge

for.inc75.for.body71_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71

for.inc75.do.body82_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.body82:                                        ; preds = %for.inc75.do.body82_crit_edge, %for.end56.do.body82_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %47 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool83.not = icmp eq i8 %47, 0
  br i1 %tobool83.not, label %do.body82.cleanup_crit_edge, label %do.end87

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end87:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17) #12
  br label %cleanup

activation_failed:                                ; preds = %do.end52, %dccp_feat_fname.exit, %do.end
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %48 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dccps_hc_rx_ccid, align 8
  tail call void @ccid_hc_rx_delete(ptr noundef %49, ptr noundef %sk) #9
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %50 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  tail call void @ccid_hc_tx_delete(ptr noundef %51, ptr noundef %sk) #9
  %52 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %dccps_hc_tx_ccid, align 4
  %53 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %dccps_hc_rx_ccid, align 8
  %dccps_hc_rx_ackvec = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %54 = ptrtoint ptr %dccps_hc_rx_ackvec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dccps_hc_rx_ackvec, align 4
  tail call void @dccp_ackvec_free(ptr noundef %55) #9
  %56 = ptrtoint ptr %dccps_hc_rx_ackvec to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %dccps_hc_rx_ackvec, align 4
  br label %cleanup

cleanup:                                          ; preds = %activation_failed, %do.end87, %do.body82.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %activation_failed ], [ 0, %do.end87 ], [ 0, %do.body82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fvals) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dccp_feat_activate(ptr noundef %sk, i32 noundef %idx, i1 noundef zeroext %is_local, ptr noundef readonly %fval) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %idx)
  %cmp1 = icmp ugt i32 %idx, 9
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %idx
  %activation_hdlr = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %idx, i32 4
  %0 = lshr i32 778, %idx
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq ptr %fval, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %default_value = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %idx, i32 3
  %2 = ptrtoint ptr %default_value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %default_value, align 4
  %conv = zext i8 %3 to i64
  br label %if.end25

if.else:                                          ; preds = %if.end4
  %4 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %idx, label %if.then11 [
    i32 4, label %if.else.if.else23_crit_edge
    i32 2, label %if.else.if.else23_crit_edge70
  ]

if.else.if.else23_crit_edge70:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else23

if.else.if.else23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else23

if.then11:                                        ; preds = %if.else
  %5 = ptrtoint ptr %fval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fval, align 8
  %cmp12 = icmp eq ptr %6, null
  br i1 %cmp12, label %do.end, label %if.else18

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %idx, ptr noundef nonnull @.str.2, i32 noundef 325, ptr noundef nonnull @.str.98) #12
  %default_value16 = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %idx, i32 3
  %7 = ptrtoint ptr %default_value16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %default_value16, align 4
  %conv17 = zext i8 %8 to i64
  br label %if.end25

if.else18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %conv21 = zext i8 %10 to i64
  br label %if.end25

if.else23:                                        ; preds = %if.else.if.else23_crit_edge, %if.else.if.else23_crit_edge70
  %11 = ptrtoint ptr %fval to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fval, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.else18, %do.end, %if.then6
  %val.0 = phi i64 [ %conv, %if.then6 ], [ %conv17, %do.end ], [ %conv21, %if.else18 ], [ %12, %if.else23 ]
  %13 = lshr i32 936, %idx
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  %cmp30 = xor i1 %15, %is_local
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %16 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool34.not = icmp eq i8 %16, 0
  br i1 %tobool34.not, label %if.end25.do.end49_crit_edge, label %do.end38

if.end25.do.end49_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end38:                                         ; preds = %if.end25
  %cond = select i1 %cmp30, ptr @.str.102, ptr @.str.103
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 4
  %conv.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %19 = icmp sgt i8 %18, 9
  br i1 %19, label %do.end38.dccp_feat_fname.exit_crit_edge, label %if.end.i

do.end38.dccp_feat_fname.exit_crit_edge:          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end.i:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %18)
  %cmp6.i = icmp eq i8 %18, -64
  br i1 %cmp6.i, label %if.end.i.dccp_feat_fname.exit_crit_edge, label %if.end9.i

if.end.i.dccp_feat_fname.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp11.i = icmp slt i8 %18, 0
  br i1 %cmp11.i, label %if.end9.i.dccp_feat_fname.exit_crit_edge, label %if.end14.i

if.end9.i.dccp_feat_fname.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_fname.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [10 x ptr], ptr @dccp_feat_fname.feature_names, i32 0, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br label %dccp_feat_fname.exit

dccp_feat_fname.exit:                             ; preds = %if.end14.i, %if.end9.i.dccp_feat_fname.exit_crit_edge, %if.end.i.dccp_feat_fname.exit_crit_edge, %do.end38.dccp_feat_fname.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end14.i ], [ @.str.35, %do.end38.dccp_feat_fname.exit_crit_edge ], [ @.str.45, %if.end.i.dccp_feat_fname.exit_crit_edge ], [ @.str.46, %if.end9.i.dccp_feat_fname.exit_crit_edge ]
  %cond45 = select i1 %cmp5, ptr @.str.104, ptr @.str.9
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull %cond, ptr noundef %retval.0.i, ptr noundef nonnull %cond45, i64 noundef %val.0) #12
  br label %do.end49

do.end49:                                         ; preds = %dccp_feat_fname.exit, %if.end25.do.end49_crit_edge
  %22 = ptrtoint ptr %activation_hdlr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %activation_hdlr, align 4
  %call53 = tail call i32 %23(ptr noundef %sk, i64 noundef %val.0, i1 noundef zeroext %cmp30) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end49 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccid_hc_rx_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccid_hc_tx_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_ackvec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_hdlr_ccid(ptr noundef %sk, i64 noundef %ccid, i1 noundef zeroext %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ccid to i8
  %call1 = tail call ptr @ccid_new(i8 noundef zeroext %conv, ptr noundef %sk, i1 noundef zeroext %rx) #9
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %rx, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid, align 8
  tail call void @ccid_hc_rx_delete(ptr noundef %1, ptr noundef %sk) #9
  %2 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %dccps_hc_rx_ccid, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %3 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  tail call void @ccid_hc_tx_delete(ptr noundef %4, ptr noundef %sk) #9
  %5 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %dccps_hc_tx_ccid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dccp_hdlr_seq_win(ptr nocapture noundef %sk, i64 noundef %seq_win, i1 noundef zeroext %rx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rx, label %dccp_update_gsr.exit, label %if.else

dccp_update_gsr.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_r_seq_win = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %dccps_r_seq_win to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %dccps_r_seq_win, align 8
  %bf.shl = shl i64 %seq_win, 16
  %bf.clear = and i64 %bf.load, 65535
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %dccps_r_seq_win, align 8
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %1 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %dccps_gsr, align 8
  %div32.i = lshr i64 %bf.shl, 18
  %3 = sub i64 %2, %div32.i
  %add4.i = add i64 %3, 1
  %and5.i = and i64 %add4.i, 281474976710655
  %dccps_swl.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 1
  %dccps_isr.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 6
  %4 = ptrtoint ptr %dccps_isr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccps_isr.i, align 8
  %6 = sub i64 %5, %add4.i
  %sub.i34.i = shl i64 %6, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i34.i)
  %cmp.i35.i = icmp slt i64 %sub.i34.i, 1
  %spec.store.select.i = select i1 %cmp.i35.i, i64 %and5.i, i64 %5
  %7 = ptrtoint ptr %dccps_swl.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %spec.store.select.i, ptr %dccps_swl.i, align 8
  %bf.lshr16.i = and i64 %seq_win, 281474976710655
  %mul.i = mul nuw nsw i64 %bf.lshr16.i, 3
  %div1733.i = lshr i64 %mul.i, 2
  %add18.i = add i64 %2, %div1733.i
  %and19.i = and i64 %add18.i, 281474976710655
  %dccps_swh.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %dccps_swh.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and19.i, ptr %dccps_swh.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_l_seq_win = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 18
  %9 = ptrtoint ptr %dccps_l_seq_win to i32
  call void @__asan_load8_noabort(i32 %9)
  %bf.load1 = load i64, ptr %dccps_l_seq_win, align 8
  %bf.shl3 = shl i64 %seq_win, 16
  %bf.clear4 = and i64 %bf.load1, 65535
  %bf.set5 = or i64 %bf.clear4, %bf.shl3
  store i64 %bf.set5, ptr %dccps_l_seq_win, align 8
  %dccps_gss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %dccps_gss to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dccps_gss, align 8
  %bf.lshr.i = and i64 %seq_win, 281474976710655
  %12 = sub i64 %11, %bf.lshr.i
  %add2.i = add i64 %12, 1
  %and3.i = and i64 %add2.i, 281474976710655
  %dccps_awl.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 3
  %dccps_iss.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 5
  %13 = ptrtoint ptr %dccps_iss.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dccps_iss.i, align 8
  %15 = sub i64 %14, %add2.i
  %sub.i.i13 = shl i64 %15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i13)
  %cmp.i.i14 = icmp slt i64 %sub.i.i13, 1
  %spec.store.select.i15 = select i1 %cmp.i.i14, i64 %and3.i, i64 %14
  %16 = ptrtoint ptr %dccps_awl.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %spec.store.select.i15, ptr %dccps_awl.i, align 8
  %dccps_awh.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %dccps_awh.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %11, ptr %dccps_awh.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %dccp_update_gsr.exit
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dccp_hdlr_ack_ratio(ptr nocapture noundef writeonly %sk, i64 noundef %ratio, i1 noundef zeroext %rx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ratio to i16
  br i1 %rx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_r_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %dccps_r_ack_ratio to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %dccps_r_ack_ratio, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_l_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 16
  %1 = ptrtoint ptr %dccps_l_ack_ratio to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %dccps_l_ack_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_hdlr_ackvec(ptr nocapture noundef %sk, i64 noundef %enable, i1 noundef zeroext %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rx, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %enable)
  %tobool1.not = icmp eq i64 %enable, 0
  %dccps_hc_rx_ackvec11 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %dccps_hc_rx_ackvec11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ackvec11, align 4
  br i1 %tobool1.not, label %if.then10.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then2:                                         ; preds = %land.lhs.true
  %2 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call4 = tail call ptr @dccp_ackvec_alloc(i32 noundef %cond.i) #9
  %6 = ptrtoint ptr %dccps_hc_rx_ackvec11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %dccps_hc_rx_ackvec11, align 4
  %cmp7 = icmp eq ptr %call4, null
  br i1 %cmp7, label %if.then2.cleanup_crit_edge, label %if.then2.if.end15_crit_edge

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dccp_ackvec_free(ptr noundef %1) #9
  %7 = ptrtoint ptr %dccps_hc_rx_ackvec11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dccps_hc_rx_ackvec11, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10.critedge, %if.then2.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dccp_hdlr_ndp(ptr nocapture noundef %sk, i64 noundef %enable, i1 noundef zeroext %rx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rx, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %enable)
  %cmp.not = icmp eq i64 %enable, 0
  %dccps_send_ndp_count = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %dccps_send_ndp_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %dccps_send_ndp_count, align 8
  %bf.shl = select i1 %cmp.not, i64 0, i64 128
  %bf.clear = and i64 %bf.load, -129
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %dccps_send_ndp_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_hdlr_min_cscov(ptr nocapture noundef %sk, i64 noundef %cscov, i1 noundef zeroext %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_pcrlen = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %dccps_pcrlen to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %dccps_pcrlen, align 8
  br i1 %rx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.value = shl i64 %cscov, 8
  %bf.shl = and i64 %bf.value, 3840
  %bf.clear = and i64 %bf.load, -3841
  %bf.set = or i64 %bf.clear, %bf.shl
  %1 = ptrtoint ptr %dccps_pcrlen to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %bf.set, ptr %dccps_pcrlen, align 8
  br label %if.end41

if.else:                                          ; preds = %entry
  %bf.lshr = lshr i64 %bf.load, 12
  %2 = trunc i64 %bf.lshr to i8
  %bf.cast = and i8 %2, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast)
  %cmp = icmp eq i8 %bf.cast, 0
  br i1 %cmp, label %if.then5, label %if.else14

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bf.value9 = shl i64 %cscov, 12
  %bf.shl10 = and i64 %bf.value9, 61440
  %bf.clear11 = and i64 %bf.load, -61441
  %bf.set12 = or i64 %bf.clear11, %bf.shl10
  %3 = ptrtoint ptr %dccps_pcrlen to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %bf.set12, ptr %dccps_pcrlen, align 8
  br label %if.end41

if.else14:                                        ; preds = %if.else
  %conv20 = zext i8 %bf.cast to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv20, i64 %cscov)
  %cmp21 = icmp ult i64 %conv20, %cscov
  br i1 %cmp21, label %do.body, label %if.else14.if.end41_crit_edge

if.else14.if.end41_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.body:                                          ; preds = %if.else14
  %call24 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body.if.end41_crit_edge, label %do.end

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dccps_pcrlen to i32
  call void @__asan_load8_noabort(i32 %4)
  %bf.load29 = load i64, ptr %dccps_pcrlen, align 8
  %5 = trunc i64 %bf.load29 to i32
  %6 = lshr i32 %5, 12
  %bf.cast32 = and i32 %6, 15
  %conv34 = trunc i64 %cscov to i32
  %conv35 = and i32 %conv34, 255
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %bf.cast32, i32 noundef %conv35) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end, %do.body.if.end41_crit_edge, %if.else14.if.end41_crit_edge, %if.then5, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ccid_new(i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_ackvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dccp_decode_value_var(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_feat_printval(i8 noundef zeroext %feat_num, ptr noundef readonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %feat_num to i32
  %0 = add i8 %feat_num, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %0)
  %1 = icmp ult i8 %0, 9
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat_num)
  %cond.i.i = icmp eq i8 %feat_num, -64
  %..i.i = select i1 %cond.i.i, i32 9, i32 -1
  %retval.0.i.i = select i1 %1, i32 %sub.i.i, i32 %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %entry.dccp_feat_type.exit_crit_edge, label %if.end.i

entry.dccp_feat_type.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_type.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reconciliation.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i, i32 2
  %2 = ptrtoint ptr %reconciliation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reconciliation.i, align 4
  %conv.i = trunc i32 %3 to i8
  br label %dccp_feat_type.exit

dccp_feat_type.exit:                              ; preds = %if.end.i, %entry.dccp_feat_type.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %entry.dccp_feat_type.exit_crit_edge ]
  %cmp = icmp eq ptr %val, null
  br i1 %cmp, label %dccp_feat_type.exit.do.body_crit_edge, label %lor.lhs.false

dccp_feat_type.exit.do.body_crit_edge:            ; preds = %dccp_feat_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %dccp_feat_type.exit
  %conv = zext i8 %retval.0.i to i32
  %4 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %retval.0.i, label %do.body50 [
    i8 4, label %land.lhs.true
    i8 8, label %do.body38
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %val, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %land.lhs.true.do.body_crit_edge, label %for.cond.preheader

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.preheader:                               ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1675.not = icmp eq i8 %8, 0
  br i1 %cmp1675.not, label %for.cond.preheader.if.end64_crit_edge, label %for.cond.preheader.do.body18_crit_edge

for.cond.preheader.do.body18_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body18

for.cond.preheader.if.end64_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %dccp_feat_type.exit.do.body_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %9 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body.if.end64_crit_edge, label %do.end

do.body.if.end64_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %if.end64

do.body18:                                        ; preds = %for.inc.do.body18_crit_edge, %for.cond.preheader.do.body18_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.do.body18_crit_edge ], [ 0, %for.cond.preheader.do.body18_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %10 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp eq i8 %10, 0
  br i1 %tobool19.not, label %do.body18.for.inc_crit_edge, label %do.end23

do.body18.for.inc_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool26.not = icmp eq i32 %indvars.iv, 0
  %cond = select i1 %tobool26.not, ptr @.str.9, ptr @.str.52
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %val, align 8
  %arrayidx = getelementptr i8, ptr %12, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %14 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %cond, i32 noundef %conv28) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end23, %do.body18.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len, align 4
  %17 = zext i8 %16 to i32
  %cmp16 = icmp ult i32 %indvars.iv.next, %17
  br i1 %cmp16, label %for.inc.do.body18_crit_edge, label %for.inc.if.end64_crit_edge

for.inc.if.end64_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.body38:                                        ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %18 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  br i1 %tobool39.not, label %do.body38.if.end64_crit_edge, label %do.end43

do.body38.if.end64_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %val, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %20) #12
  br label %if.end64

do.body50:                                        ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %21 = load i8, ptr @dccp_debug, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool51.not = icmp eq i8 %21, 0
  br i1 %tobool51.not, label %do.body50.if.end64_crit_edge, label %do.end55

do.body50.if.end64_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end55, %do.body50.if.end64_crit_edge, %do.end43, %do.body38.if.end64_crit_edge, %for.inc.if.end64_crit_edge, %do.end, %do.body.if.end64_crit_edge, %for.cond.preheader.if.end64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccid_support_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @dccp_feat_is_valid_sp_val(i8 noundef zeroext %feat_num, i8 noundef zeroext %val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %feat_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %feat_num, label %entry.return_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb7_crit_edge
    i8 4, label %entry.sw.bb7_crit_edge20
    i8 6, label %entry.sw.bb7_crit_edge21
    i8 7, label %entry.sw.bb7_crit_edge22
    i8 9, label %entry.sw.bb7_crit_edge23
    i8 -64, label %entry.sw.bb7_crit_edge24
    i8 8, label %sw.bb12
  ]

entry.sw.bb7_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = and i8 %val, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %2 = icmp eq i8 %1, 2
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge20, %entry.sw.bb7_crit_edge21, %entry.sw.bb7_crit_edge22, %entry.sw.bb7_crit_edge23, %entry.sw.bb7_crit_edge24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %val)
  %cmp9 = icmp ult i8 %val, 2
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %val)
  %cmp14 = icmp ult i8 %val, 16
  br label %return

return:                                           ; preds = %sw.bb12, %sw.bb7, %sw.bb, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp14, %sw.bb12 ], [ %cmp9, %sw.bb7 ], [ %2, %sw.bb ], [ false, %entry.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dccp_feat_entry_new(ptr noundef %head, i8 noundef zeroext %feat, i1 noundef zeroext %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %local to i8
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %head, %entry ], [ %.pn, %if.else.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.cond.kmalloc.exit_crit_edge, label %for.body

for.cond.kmalloc.exit_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

for.body:                                         ; preds = %for.cond
  %feat_num = getelementptr i8, ptr %.pn, i32 -7
  %1 = ptrtoint ptr %feat_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %feat_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %feat)
  %cmp3 = icmp eq i8 %2, %feat
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %is_local = getelementptr i8, ptr %.pn, i32 -3
  %3 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_local, align 1, !range !213
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %frombool)
  %cmp8 = icmp eq i8 %4, %frombool
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -16
  %cmp.i = icmp eq ptr %entry1.0.le, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i, !prof !216

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %conv.i.i.i = zext i8 %feat to i32
  %5 = add i8 %feat, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %6 = icmp ult i8 %5, 9
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %feat)
  %cond.i.i.i = icmp eq i8 %feat, -64
  %..i.i.i = select i1 %cond.i.i.i, i32 9, i32 -1
  %retval.0.i.i.i = select i1 %6, i32 %sub.i.i.i, i32 %..i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i52 = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i52, label %if.end.i.if.end5.i_crit_edge, label %dccp_feat_type.exit.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

dccp_feat_type.exit.i:                            ; preds = %if.end.i
  %reconciliation.i.i = getelementptr [10 x %struct.anon.199], ptr @dccp_feat_table, i32 0, i32 %retval.0.i.i.i, i32 2
  %7 = ptrtoint ptr %reconciliation.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconciliation.i.i, align 4
  %conv.i.i = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i)
  %cmp2.i = icmp eq i8 %conv.i.i, 4
  br i1 %cmp2.i, label %if.then4.i, label %dccp_feat_type.exit.i.if.end5.i_crit_edge

dccp_feat_type.exit.i.if.end5.i_crit_edge:        ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %dccp_feat_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.0.le, align 8
  tail call void @kfree(ptr noundef %10) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %dccp_feat_type.exit.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %11 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %entry1.0.le, align 8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %cmp14 = icmp ugt i8 %2, %feat
  br i1 %cmp14, label %if.else.kmalloc.exit_crit_edge, label %if.else.for.cond_crit_edge

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.else.kmalloc.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.else.kmalloc.exit_crit_edge, %for.cond.kmalloc.exit_crit_edge
  %head.addr.0 = phi ptr [ %head, %for.cond.kmalloc.exit_crit_edge ], [ %.pn, %if.else.kmalloc.exit_crit_edge ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !203) #9
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %15, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef %cond.i, i32 noundef 24) #13
  %cmp25.not = icmp eq ptr %call7.i, null
  br i1 %cmp25.not, label %kmalloc.exit.cleanup_crit_edge, label %if.then27

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %kmalloc.exit
  %feat_num28 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %feat_num28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %feat, ptr %feat_num28, align 1
  %is_local30 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call7.i, i32 0, i32 6
  %18 = ptrtoint ptr %is_local30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %is_local30, align 1
  %node32 = getelementptr inbounds %struct.dccp_feat_entry, ptr %call7.i, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.addr.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node32, ptr noundef %20, ptr noundef %head.addr.0) #9
  br i1 %call.i.i, label %if.end.i.i53, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i53:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node32, ptr %prev.i, align 4
  %22 = ptrtoint ptr %node32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head.addr.0, ptr %node32, align 8
  %prev3.i.i = getelementptr inbounds %struct.dccp_feat_entry, ptr %call7.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node32, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i53, %if.then27.cleanup_crit_edge, %kmalloc.exit.cleanup_crit_edge, %if.end5.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kmalloc.exit.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ %entry1.0.le, %if.end5.i ], [ %call7.i, %if.then27.cleanup_crit_edge ], [ %call7.i, %if.end.i.i53 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_feat_reconcile(ptr nocapture noundef readonly %fv, ptr noundef readonly %arr, i8 noundef zeroext %len, i1 noundef zeroext %is_server, i1 noundef zeroext %reorder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fv, align 8
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %arr, null
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.2, i32 noundef 1077, ptr noundef nonnull @.str.73) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %is_server, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %len6 = getelementptr inbounds %struct.anon, ptr %fv, i32 0, i32 1
  %2 = ptrtoint ptr %len6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp30.not.i = icmp eq i8 %3, 0
  br i1 %cmp30.not.i, label %if.then4.if.end11_crit_edge, label %for.cond3.preheader.lr.ph.i

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp628.not.i = icmp eq i8 %len, 0
  %wide.trip.count35.i = zext i8 %3 to i32
  %wide.trip.count.i = zext i8 %len to i32
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc18.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %indvars.iv33.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next34.i, %for.inc18.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp628.not.i, label %for.cond3.preheader.i.for.inc18.i_crit_edge, label %for.body8.lr.ph.i

for.cond3.preheader.i.for.inc18.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i

for.body8.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 %indvars.iv33.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  br label %for.body8.i

for.cond3.i:                                      ; preds = %for.body8.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond3.i.for.inc18.i_crit_edge, label %for.cond3.i.for.body8.i_crit_edge

for.cond3.i.for.body8.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.cond3.i.for.inc18.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i

for.body8.i:                                      ; preds = %for.cond3.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %indvars.iv.next.i, %for.cond3.i.for.body8.i_crit_edge ]
  %arrayidx11.i = getelementptr i8, ptr %arr, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp13.i = icmp eq i8 %5, %7
  br i1 %cmp13.i, label %if.then.i, label %for.cond3.i

if.then.i:                                        ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i = zext i8 %5 to i32
  br label %if.end11

for.inc18.i:                                      ; preds = %for.cond3.i.for.inc18.i_crit_edge, %for.cond3.preheader.i.for.inc18.i_crit_edge
  %indvars.iv.next34.i = add nuw nsw i32 %indvars.iv33.i, 1
  %exitcond36.not.i = icmp eq i32 %indvars.iv.next34.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %for.inc18.i.if.end11_crit_edge, label %for.inc18.i.for.cond3.preheader.i_crit_edge

for.inc18.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i

for.inc18.i.if.end11_crit_edge:                   ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp30.not.i32 = icmp eq i8 %len, 0
  br i1 %cmp30.not.i32, label %if.else.if.end11_crit_edge, label %for.cond3.preheader.lr.ph.i36

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond3.preheader.lr.ph.i36:                    ; preds = %if.else
  %len9 = getelementptr inbounds %struct.anon, ptr %fv, i32 0, i32 1
  %8 = ptrtoint ptr %len9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp628.not.i33 = icmp eq i8 %9, 0
  %wide.trip.count35.i34 = zext i8 %len to i32
  %wide.trip.count.i35 = zext i8 %9 to i32
  br label %for.cond3.preheader.i38

for.cond3.preheader.i38:                          ; preds = %for.inc18.i52.for.cond3.preheader.i38_crit_edge, %for.cond3.preheader.lr.ph.i36
  %indvars.iv33.i37 = phi i32 [ 0, %for.cond3.preheader.lr.ph.i36 ], [ %indvars.iv.next34.i50, %for.inc18.i52.for.cond3.preheader.i38_crit_edge ]
  br i1 %cmp628.not.i33, label %for.cond3.preheader.i38.for.inc18.i52_crit_edge, label %for.body8.lr.ph.i40

for.cond3.preheader.i38.for.inc18.i52_crit_edge:  ; preds = %for.cond3.preheader.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i52

for.body8.lr.ph.i40:                              ; preds = %for.cond3.preheader.i38
  %arrayidx.i39 = getelementptr i8, ptr %arr, i32 %indvars.iv33.i37
  %10 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i39, align 1
  br label %for.body8.i47

for.cond3.i43:                                    ; preds = %for.body8.i47
  %indvars.iv.next.i41 = add nuw nsw i32 %indvars.iv.i44, 1
  %exitcond.not.i42 = icmp eq i32 %indvars.iv.next.i41, %wide.trip.count.i35
  br i1 %exitcond.not.i42, label %for.cond3.i43.for.inc18.i52_crit_edge, label %for.cond3.i43.for.body8.i47_crit_edge

for.cond3.i43.for.body8.i47_crit_edge:            ; preds = %for.cond3.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i47

for.cond3.i43.for.inc18.i52_crit_edge:            ; preds = %for.cond3.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i52

for.body8.i47:                                    ; preds = %for.cond3.i43.for.body8.i47_crit_edge, %for.body8.lr.ph.i40
  %indvars.iv.i44 = phi i32 [ 0, %for.body8.lr.ph.i40 ], [ %indvars.iv.next.i41, %for.cond3.i43.for.body8.i47_crit_edge ]
  %arrayidx11.i45 = getelementptr i8, ptr %1, i32 %indvars.iv.i44
  %12 = ptrtoint ptr %arrayidx11.i45 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i45, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp13.i46 = icmp eq i8 %11, %13
  br i1 %cmp13.i46, label %if.then.i49, label %for.cond3.i43

if.then.i49:                                      ; preds = %for.body8.i47
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i48 = zext i8 %11 to i32
  br label %if.end11

for.inc18.i52:                                    ; preds = %for.cond3.i43.for.inc18.i52_crit_edge, %for.cond3.preheader.i38.for.inc18.i52_crit_edge
  %indvars.iv.next34.i50 = add nuw nsw i32 %indvars.iv33.i37, 1
  %exitcond36.not.i51 = icmp eq i32 %indvars.iv.next34.i50, %wide.trip.count35.i34
  br i1 %exitcond36.not.i51, label %for.inc18.i52.if.end11_crit_edge, label %for.inc18.i52.for.cond3.preheader.i38_crit_edge

for.inc18.i52.for.cond3.preheader.i38_crit_edge:  ; preds = %for.inc18.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i38

for.inc18.i52.if.end11_crit_edge:                 ; preds = %for.inc18.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %for.inc18.i52.if.end11_crit_edge, %if.then.i49, %if.else.if.end11_crit_edge, %for.inc18.i.if.end11_crit_edge, %if.then.i, %if.then4.if.end11_crit_edge
  %rc.0 = phi i32 [ %conv9.i, %if.then.i ], [ -1, %if.then4.if.end11_crit_edge ], [ %conv9.i48, %if.then.i49 ], [ -1, %if.else.if.end11_crit_edge ], [ -1, %for.inc18.i.if.end11_crit_edge ], [ -1, %for.inc18.i52.if.end11_crit_edge ]
  br i1 %reorder, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp slt i32 %rc.0, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %conv = trunc i32 %rc.0 to i8
  %len18 = getelementptr inbounds %struct.anon, ptr %fv, i32 0, i32 1
  %14 = ptrtoint ptr %len18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp227.not.i = icmp eq i8 %15, 0
  br i1 %cmp227.not.i, label %if.end16.dccp_feat_prefer.exit_crit_edge, label %for.body.preheader.i

if.end16.dccp_feat_prefer.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_prefer.exit

for.body.preheader.i:                             ; preds = %if.end16
  %wide.trip.count.i55 = zext i8 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i56 = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i58, %for.inc.i.for.body.i_crit_edge ]
  %does_occur.029.i = phi i8 [ 0, %for.body.preheader.i ], [ %does_occur.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i57 = getelementptr i8, ptr %1, i32 %indvars.iv.i56
  %16 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i57, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %conv)
  %cmp6.i = icmp eq i8 %17, %conv
  br i1 %cmp6.i, label %if.then8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %20 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i57, align 1
  %inc.i = add i8 %does_occur.029.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i.for.inc.i_crit_edge
  %does_occur.1.i = phi i8 [ %inc.i, %if.then8.i ], [ %does_occur.029.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i58 = add nuw nsw i32 %indvars.iv.i56, 1
  %exitcond.not.i59 = icmp eq i32 %indvars.iv.next.i58, %wide.trip.count.i55
  br i1 %exitcond.not.i59, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %does_occur.1.i)
  %tobool.not.i = icmp eq i8 %does_occur.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.dccp_feat_prefer.exit_crit_edge, label %if.then13.i

for.end.i.dccp_feat_prefer.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_feat_prefer.exit

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %1, align 1
  br label %dccp_feat_prefer.exit

dccp_feat_prefer.exit:                            ; preds = %if.then13.i, %for.end.i.dccp_feat_prefer.exit_crit_edge, %if.end16.dccp_feat_prefer.exit_crit_edge
  %does_occur.2.i = phi i8 [ %does_occur.1.i, %if.then13.i ], [ 0, %for.end.i.dccp_feat_prefer.exit_crit_edge ], [ 0, %if.end16.dccp_feat_prefer.exit_crit_edge ]
  %conv20 = zext i8 %does_occur.2.i to i32
  br label %cleanup

cleanup:                                          ; preds = %dccp_feat_prefer.exit, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %conv20, %dccp_feat_prefer.exit ], [ 0, %do.end ], [ %rc.0, %if.end11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !201, !202}
!llvm.named.register.sp = !{!203}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @sysctl_dccp_sequence_window, !1, !"sysctl_dccp_sequence_window", i1 false, i1 false}
!1 = !{!"../net/dccp/feat.c", i32 26, i32 15}
!2 = !{ptr @sysctl_dccp_rx_ccid, !3, !"sysctl_dccp_rx_ccid", i1 false, i1 false}
!3 = !{!"../net/dccp/feat.c", i32 27, i32 6}
!4 = !{ptr @sysctl_dccp_tx_ccid, !5, !"sysctl_dccp_tx_ccid", i1 false, i1 false}
!5 = !{!"../net/dccp/feat.c", i32 28, i32 3}
!6 = !{ptr @__ksymtab_dccp_feat_list_purge, !7, !"__ksymtab_dccp_feat_list_purge", i1 false, i1 false}
!7 = !{!"../net/dccp/feat.c", i32 549, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/dccp/feat.c", i32 660, i32 5}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dccp_feat_insert_opts._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @dccp_feat_insert_opts._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dccp/feat.c", i32 664, i32 3}
!16 = !{ptr @dccp_feat_insert_opts._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dccp_feat_insert_opts._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dccp_feat_insert_opts._entry.6, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @dccp_feat_insert_opts._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/dccp/feat.c", i32 792, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dccp_feat_nn_get._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dccp_feat_nn_get._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_dccp_feat_nn_get, !28, !"__ksymtab_dccp_feat_nn_get", i1 false, i1 false}
!28 = !{!"../net/dccp/feat.c", i32 795, i32 1}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/dccp/feat.c", i32 823, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dccp_feat_signal_nn_change._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dccp_feat_signal_nn_change._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_dccp_feat_signal_nn_change, !35, !"__ksymtab_dccp_feat_signal_nn_change", i1 false, i1 false}
!35 = !{!"../net/dccp/feat.c", i32 832, i32 1}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/dccp/feat.c", i32 993, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dccp_feat_finalise_settings._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dccp_feat_finalise_settings._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/dccp/feat.c", i32 1530, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dccp_feat_activate_values._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dccp_feat_activate_values._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/dccp/feat.c", i32 1534, i32 4}
!48 = !{ptr @dccp_feat_activate_values._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dccp_feat_activate_values._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/dccp/feat.c", i32 1552, i32 4}
!54 = !{ptr @dccp_feat_activate_values._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dccp_feat_activate_values._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/dccp/feat.c", i32 1561, i32 2}
!58 = !{ptr @dccp_feat_activate_values._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dccp_feat_activate_values._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @dccp_feat_table, !61, !"dccp_feat_table", i1 false, i1 false}
!61 = !{!"../net/dccp/feat.c", i32 152, i32 3}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/dccp/feat.c", i32 122, i32 4}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dccp_hdlr_min_cscov._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dccp_hdlr_min_cscov._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/dccp/feat.c", i32 246, i32 31}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/dccp/feat.c", i32 247, i32 31}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/dccp/feat.c", i32 248, i32 31}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/dccp/feat.c", i32 249, i32 31}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/dccp/feat.c", i32 216, i32 22}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/dccp/feat.c", i32 217, i32 19}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/dccp/feat.c", i32 218, i32 26}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/dccp/feat.c", i32 219, i32 29}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/dccp/feat.c", i32 220, i32 27}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/dccp/feat.c", i32 221, i32 23}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/dccp/feat.c", i32 222, i32 29}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/dccp/feat.c", i32 223, i32 28}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/dccp/feat.c", i32 224, i32 28}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/dccp/feat.c", i32 225, i32 27}
!95 = !{ptr @dccp_feat_fname.feature_names, !96, !"feature_names", i1 false, i1 false}
!96 = !{!"../net/dccp/feat.c", i32 215, i32 27}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/dccp/feat.c", i32 231, i32 10}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/dccp/feat.c", i32 233, i32 10}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/dccp/feat.c", i32 259, i32 3}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @dccp_feat_printval._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @dccp_feat_printval._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/dccp/feat.c", i32 262, i32 4}
!108 = !{ptr @dccp_feat_printval._entry.49, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dccp_feat_printval._entry_ptr.51, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/dccp/feat.c", i32 264, i32 3}
!113 = !{ptr @dccp_feat_printval._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @dccp_feat_printval._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/dccp/feat.c", i32 266, i32 3}
!117 = !{ptr @dccp_feat_printval._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dccp_feat_printval._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @dccp_feat_ccid_deps.ccid2_dependencies, !120, !"ccid2_dependencies", i1 false, i1 false}
!120 = !{!"../net/dccp/feat.c", i32 844, i32 38}
!121 = !{ptr @dccp_feat_ccid_deps.ccid3_dependencies, !122, !"ccid3_dependencies", i1 false, i1 false}
!122 = !{!"../net/dccp/feat.c", i32 869, i32 38}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/dccp/feat.c", i32 281, i32 2}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @dccp_feat_print_entry._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @dccp_feat_print_entry._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/dccp/feat.c", i32 284, i32 2}
!130 = !{ptr @dccp_feat_print_entry._entry.61, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dccp_feat_print_entry._entry_ptr.63, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/dccp/feat.c", i32 205, i32 2}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @dccp_feat_default_value._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @dccp_feat_default_value._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/dccp/feat.c", i32 1118, i32 2}
!141 = !{ptr @dccp_feat_change_recv._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @dccp_feat_change_recv._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @dccp_feat_change_recv._entry.69, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @dccp_feat_change_recv._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/dccp/feat.c", i32 1077, i32 3}
!148 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @dccp_feat_reconcile._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @dccp_feat_reconcile._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/dccp/feat.c", i32 1225, i32 2}
!153 = !{ptr @dccp_feat_confirm_recv._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @dccp_feat_confirm_recv._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @dccp_feat_confirm_recv._entry.75, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @dccp_feat_confirm_recv._entry_ptr.76, !152, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/dccp/feat.c", i32 1260, i32 3}
!159 = !{ptr @dccp_feat_confirm_recv._entry.77, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dccp_feat_confirm_recv._entry_ptr.79, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/dccp/feat.c", i32 1282, i32 3}
!163 = !{ptr @dccp_feat_confirm_recv._entry.80, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dccp_feat_confirm_recv._entry_ptr.82, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/dccp/feat.c", i32 1292, i32 2}
!167 = !{ptr @dccp_feat_confirm_recv._entry.83, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dccp_feat_confirm_recv._entry_ptr.85, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/dccp/feat.c", i32 1324, i32 2}
!171 = !{ptr @dccp_feat_handle_nn_established._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dccp_feat_handle_nn_established._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @dccp_feat_handle_nn_established._entry.87, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @dccp_feat_handle_nn_established._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/dccp/feat.c", i32 1378, i32 3}
!177 = !{ptr @dccp_feat_handle_nn_established._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dccp_feat_handle_nn_established._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/dccp/feat.c", i32 239, i32 2}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/dccp/feat.c", i32 239, i32 13}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/dccp/feat.c", i32 239, i32 29}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/dccp/feat.c", i32 239, i32 41}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/dccp/feat.c", i32 239, i32 53}
!189 = !{ptr @dccp_feat_sname, !190, !"dccp_feat_sname", i1 false, i1 false}
!190 = !{!"../net/dccp/feat.c", i32 238, i32 26}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/dccp/feat.c", i32 325, i32 4}
!193 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @__dccp_feat_activate._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @__dccp_feat_activate._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/dccp/feat.c", i32 337, i32 2}
!198 = !{ptr @__dccp_feat_activate._entry.99, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @__dccp_feat_activate._entry_ptr.101, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!203 = !{!"sp"}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{i8 0, i8 2}
!214 = !{!"auto-init"}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{!"branch_weights", i32 1, i32 2000}
