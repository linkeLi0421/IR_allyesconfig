; ModuleID = '/llk/IR_all_yes/net/dccp/options.c_pt.bc'
source_filename = "../net/dccp/options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_parse_options\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_parse_options\09\09\09\09"
module asm "\09.long\09__crc_dccp_parse_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_parse_options\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_insert_option\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_insert_option\09\09\09\09"
module asm "\09.long\09__crc_dccp_insert_option\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_insert_option:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_insert_option\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_insert_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.196, i32 }
%union.anon.196 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dccp_request_sock = type { %struct.inet_request_sock, i64, i64, i64, i64, i32, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dccp_ackvec = type { [506 x i8], i16, i16, i48, [6 x i8], [2 x i8], i8, %struct.list_head }

@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s opt: NDP count=%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dccp_parse_options\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/dccp/options.c\00", [45 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr = internal global ptr @dccp_parse_options._entry, section ".printk_index", align 4
@dccp_parse_options._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: Timestamp with zero value\0A\00", [63 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.5 = internal global ptr @dccp_parse_options._entry.3, section ".printk_index", align 4
@dccp_parse_options._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s rx opt: TIMESTAMP=%u, ackno=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.8 = internal global ptr @dccp_parse_options._entry.6, section ".printk_index", align 4
@dccp_parse_options._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s rx opt: TIMESTAMP_ECHO=%u, len=%d, ackno=%llu\00", [41 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.11 = internal global ptr @dccp_parse_options._entry.9, section ".printk_index", align 4
@dccp_parse_options._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.14 = internal global ptr @dccp_parse_options._entry.12, section ".printk_index", align 4
@dccp_parse_options._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", ELAPSED_TIME=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.17 = internal global ptr @dccp_parse_options._entry.15, section ".printk_index", align 4
@dccp_parse_options._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s rx opt: ELAPSED_TIME=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.20 = internal global ptr @dccp_parse_options._entry.18, section ".printk_index", align 4
@dccp_parse_options._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\012DCCP(%p): option %d(len=%d) not implemented, ignoring at %s:%d/%s()\0A\00", [57 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.23 = internal global ptr @dccp_parse_options._entry.21, section ".printk_index", align 4
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dccp_parse_options._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: DCCP(%p): Option %d (len=%d) error=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@dccp_parse_options._entry_ptr.26 = internal global ptr @dccp_parse_options._entry.24, section ".printk_index", align 4
@__kstrtab_dccp_parse_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_parse_options = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_parse_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_parse_options to i32), ptr @__kstrtab_dccp_parse_options, ptr @__kstrtabns_dccp_parse_options }, section "___ksymtab_gpl+dccp_parse_options", align 4
@__kstrtab_dccp_insert_option = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_insert_option = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_insert_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_insert_option to i32), ptr @__kstrtab_dccp_insert_option, ptr @__kstrtabns_dccp_insert_option }, section "___ksymtab_gpl+dccp_insert_option", align 4
@dccp_insert_fn_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: length %u for feature %u too large\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dccp_insert_fn_opt\00", [45 x i8] zeroinitializer }, align 32
@dccp_insert_fn_opt._entry_ptr = internal global ptr @dccp_insert_fn_opt._entry, section ".printk_index", align 4
@dccp_insert_fn_opt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: packet too small for feature %d option!\0A\00", [49 x i8] zeroinitializer }, align 32
@dccp_insert_fn_opt._entry_ptr.31 = internal global ptr @dccp_insert_fn_opt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"server\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"client\00", [25 x i8] zeroinitializer }, align 32
@dccp_insert_option_ackvec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Lacking space for %u bytes on %s packet\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dccp_insert_option_ackvec\00", [38 x i8] zeroinitializer }, align 32
@dccp_insert_option_ackvec._entry_ptr = internal global ptr @dccp_insert_option_ackvec._entry, section ".printk_index", align 4
@dccp_insert_option_ackvec._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014%s: No space left for Ack Vector (%u) on skb (%u+%u), MPS=%u ==> reduce payload size?\0A\00", [39 x i8] zeroinitializer }, align 32
@dccp_insert_option_ackvec._entry_ptr.40 = internal global ptr @dccp_insert_option_ackvec._entry.38, section ".printk_index", align 4
@switch.table.dccp_parse_options = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 4, i32 12, i32 0, i32 8, i32 8, i32 8, i32 8], [36 x i8] zeroinitializer }, align 32
@switch.table.dccp_parse_options.41 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@switch.table.dccp_parse_options.42 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@switch.table.dccp_parse_options.43 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@switch.table.dccp_parse_options.44 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [142 x i64] [i64 140, i64 8, i64 0, i64 1, i64 32, i64 33, i64 34, i64 35, i64 37, i64 38, i64 39, i64 41, i64 42, i64 43, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 4, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 117, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 140, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 152, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 166, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 176, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 188, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 211, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 235, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 256, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 511, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 520, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 316, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 317, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 318, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"../include/linux/dccp.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 319, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 410, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [22 x i8] c"../net/dccp/options.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 421, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [32 x i8] c"switch.table.dccp_parse_options\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [35 x i8] c"switch.table.dccp_parse_options.41\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [35 x i8] c"switch.table.dccp_parse_options.42\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [35 x i8] c"switch.table.dccp_parse_options.43\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [35 x i8] c"switch.table.dccp_parse_options.44\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @__ksymtab_dccp_insert_option, ptr @__ksymtab_dccp_parse_options, ptr @dccp_insert_fn_opt._entry, ptr @dccp_insert_fn_opt._entry.29, ptr @dccp_insert_fn_opt._entry_ptr, ptr @dccp_insert_fn_opt._entry_ptr.31, ptr @dccp_insert_option_ackvec._entry, ptr @dccp_insert_option_ackvec._entry.38, ptr @dccp_insert_option_ackvec._entry_ptr, ptr @dccp_insert_option_ackvec._entry_ptr.40, ptr @dccp_parse_options._entry, ptr @dccp_parse_options._entry.12, ptr @dccp_parse_options._entry.15, ptr @dccp_parse_options._entry.18, ptr @dccp_parse_options._entry.21, ptr @dccp_parse_options._entry.24, ptr @dccp_parse_options._entry.3, ptr @dccp_parse_options._entry.6, ptr @dccp_parse_options._entry.9, ptr @dccp_parse_options._entry_ptr, ptr @dccp_parse_options._entry_ptr.11, ptr @dccp_parse_options._entry_ptr.14, ptr @dccp_parse_options._entry_ptr.17, ptr @dccp_parse_options._entry_ptr.20, ptr @dccp_parse_options._entry_ptr.23, ptr @dccp_parse_options._entry_ptr.26, ptr @dccp_parse_options._entry_ptr.5, ptr @dccp_parse_options._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @switch.table.dccp_parse_options, ptr @switch.table.dccp_parse_options.41, ptr @switch.table.dccp_parse_options.42, ptr @switch.table.dccp_parse_options.43, ptr @switch.table.dccp_parse_options.44], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_parse_options._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_insert_fn_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_insert_fn_opt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_insert_option_ackvec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_insert_option_ackvec._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_parse_options to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_parse_options.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_parse_options.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_parse_options.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_parse_options.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @dccp_decode_value_var(ptr nocapture noundef readonly %bf, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %len)
  %cmp = icmp ugt i8 %len, 5
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %bf, i32 1
  %0 = ptrtoint ptr %bf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bf, align 1
  %conv2 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv2, 40
  br label %if.end11.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %len)
  %cmp4 = icmp eq i8 %len, 5
  br i1 %cmp4, label %if.end.if.end11.thread_crit_edge, label %if.end11

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end.if.end11.thread_crit_edge, %if.end.thread
  %value.066 = phi i64 [ %shl, %if.end.thread ], [ 0, %if.end.if.end11.thread_crit_edge ]
  %bf.addr.065 = phi ptr [ %incdec.ptr, %if.end.thread ], [ %bf, %if.end.if.end11.thread_crit_edge ]
  %incdec.ptr7 = getelementptr i8, ptr %bf.addr.065, i32 1
  %2 = ptrtoint ptr %bf.addr.065 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bf.addr.065, align 1
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 32
  %add10 = or i64 %shl9, %value.066
  br label %if.end20.thread

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len)
  %cmp13 = icmp ugt i8 %len, 3
  br i1 %cmp13, label %if.end11.if.end20.thread_crit_edge, label %if.end20

if.end11.if.end20.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %if.end11.if.end20.thread_crit_edge, %if.end11.thread
  %value.171 = phi i64 [ %add10, %if.end11.thread ], [ 0, %if.end11.if.end20.thread_crit_edge ]
  %bf.addr.170 = phi ptr [ %incdec.ptr7, %if.end11.thread ], [ %bf, %if.end11.if.end20.thread_crit_edge ]
  %incdec.ptr16 = getelementptr i8, ptr %bf.addr.170, i32 1
  %4 = ptrtoint ptr %bf.addr.170 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bf.addr.170, align 1
  %conv17 = zext i8 %5 to i64
  %shl18 = shl nuw nsw i64 %conv17, 24
  %add19 = add nsw i64 %shl18, %value.171
  br label %if.end29.thread

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len)
  %cmp22 = icmp eq i8 %len, 3
  br i1 %cmp22, label %if.end20.if.end29.thread_crit_edge, label %if.end29

if.end20.if.end29.thread_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.end20.if.end29.thread_crit_edge, %if.end20.thread
  %value.276 = phi i64 [ %add19, %if.end20.thread ], [ 0, %if.end20.if.end29.thread_crit_edge ]
  %bf.addr.275 = phi ptr [ %incdec.ptr16, %if.end20.thread ], [ %bf, %if.end20.if.end29.thread_crit_edge ]
  %incdec.ptr25 = getelementptr i8, ptr %bf.addr.275, i32 1
  %6 = ptrtoint ptr %bf.addr.275 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bf.addr.275, align 1
  %conv26 = zext i8 %7 to i64
  %shl27 = shl nuw nsw i64 %conv26, 16
  %add28 = add i64 %shl27, %value.276
  br label %if.end38.thread

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %cmp31 = icmp ugt i8 %len, 1
  br i1 %cmp31, label %if.end29.if.end38.thread_crit_edge, label %if.end38

if.end29.if.end38.thread_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %if.end29.if.end38.thread_crit_edge, %if.end29.thread
  %value.381 = phi i64 [ %add28, %if.end29.thread ], [ 0, %if.end29.if.end38.thread_crit_edge ]
  %bf.addr.380 = phi ptr [ %incdec.ptr25, %if.end29.thread ], [ %bf, %if.end29.if.end38.thread_crit_edge ]
  %incdec.ptr34 = getelementptr i8, ptr %bf.addr.380, i32 1
  %8 = ptrtoint ptr %bf.addr.380 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bf.addr.380, align 1
  %conv35 = zext i8 %9 to i64
  %shl36 = shl nuw nsw i64 %conv35, 8
  %add37 = add i64 %shl36, %value.381
  br label %if.then42

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp40.not = icmp eq i8 %len, 0
  br i1 %cmp40.not, label %if.end38.if.end45_crit_edge, label %if.end38.if.then42_crit_edge

if.end38.if.then42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end38.if.then42_crit_edge, %if.end38.thread
  %value.486 = phi i64 [ %add37, %if.end38.thread ], [ 0, %if.end38.if.then42_crit_edge ]
  %bf.addr.485 = phi ptr [ %incdec.ptr34, %if.end38.thread ], [ %bf, %if.end38.if.then42_crit_edge ]
  %10 = ptrtoint ptr %bf.addr.485 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bf.addr.485, align 1
  %conv43 = zext i8 %11 to i64
  %add44 = add i64 %value.486, %conv43
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end38.if.end45_crit_edge
  %value.5 = phi i64 [ %add44, %if.then42 ], [ 0, %if.end38.if.end45_crit_edge ]
  ret i64 %value.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_parse_options(ptr noundef %sk, ptr noundef %dreq, ptr nocapture noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i.i.i, 1
  %trunc.i.i = trunc i8 %bf.lshr.i.i to i4
  %switch.tableidx = xor i4 %trunc.i.i, -8
  %6 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %.not = icmp eq i4 %switch.tableidx, -1
  br i1 %.not, label %entry.dccp_hdr_len.exit_crit_edge, label %switch.lookup

entry.dccp_hdr_len.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_hdr_len.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.dccp_parse_options, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dccp_hdr_len.exit

dccp_hdr_len.exit:                                ; preds = %switch.lookup, %entry.dccp_hdr_len.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 12, %entry.dccp_hdr_len.exit_crit_edge ]
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %9 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %9, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.i.i = add nuw nsw i32 %retval.0.i.i.i, %add.i.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dccph_doff, align 2
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr.i.i, i32 %mul
  %dccps_options_received = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26
  %12 = call ptr @memset(ptr %dccps_options_received, i32 0, i32 24)
  %cmp.not603 = icmp eq ptr %add.ptr, %add.ptr3
  br i1 %cmp.not603, label %dccp_hdr_len.exit.cleanup_crit_edge, label %while.body.lr.ph

dccp_hdr_len.exit.cleanup_crit_edge:              ; preds = %dccp_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %dccp_hdr_len.exit
  %cmp26.not = icmp eq ptr %dreq, null
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %dccpor_elapsed_time236 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 3
  %dccps_role.i528 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %dccpor_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 2
  %dccpd_ack_seq160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %dreq_timestamp_echo = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 8
  %dreq_timestamp_time = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 9
  %dccps_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 14
  %dccpor_timestamp = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 1
  %dccps_timestamp_time = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 15
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.lshr)
  %cmp68 = icmp eq i8 %bf.lshr, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.lshr)
  %cmp44.not = icmp ne i8 %bf.lshr, 2
  %spec.select = zext i1 %cmp44.not to i32
  br label %while.body

while.body:                                       ; preds = %ignore_option.while.body_crit_edge, %while.body.lr.ph
  %opt_ptr.0605 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %opt_ptr.1, %ignore_option.while.body_crit_edge ]
  %mandatory.0604 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select505, %ignore_option.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %opt_ptr.0605, i32 1
  %13 = ptrtoint ptr %opt_ptr.0605 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %opt_ptr.0605, align 1
  %conv5 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %14)
  %cmp6 = icmp ugt i8 %14, 31
  br i1 %cmp6, label %if.then, label %while.body.if.end25_crit_edge

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %while.body
  %cmp8 = icmp eq ptr %incdec.ptr, %add.ptr3
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp13 = icmp ult i8 %16, 2
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %incdec.ptr11 = getelementptr i8, ptr %opt_ptr.0605, i32 2
  %sub = add i8 %16, -2
  %conv19 = zext i8 %sub to i32
  %add.ptr20 = getelementptr i8, ptr %incdec.ptr11, i32 %conv19
  %cmp21 = icmp ugt ptr %add.ptr20, %add.ptr3
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end16.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %value.1 = phi ptr [ %incdec.ptr11, %if.end16.if.end25_crit_edge ], [ null, %while.body.if.end25_crit_edge ]
  %len.1 = phi i8 [ %sub, %if.end16.if.end25_crit_edge ], [ 0, %while.body.if.end25_crit_edge ]
  %opt_ptr.1 = phi ptr [ %add.ptr20, %if.end16.if.end25_crit_edge ], [ %incdec.ptr, %while.body.if.end25_crit_edge ]
  br i1 %cmp26.not, label %if.end25.if.end39_crit_edge, label %land.lhs.true

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end25
  %.fr = freeze i8 %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %cmp29 = icmp slt i8 %.fr, 0
  %17 = and i8 %.fr, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %17)
  %switch = icmp eq i8 %17, 38
  %or.cond = or i1 %cmp29, %switch
  br i1 %or.cond, label %land.lhs.true.ignore_option_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true.ignore_option_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.end25.if.end39_crit_edge
  %18 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %do.end271 [
    i8 0, label %if.end39.ignore_option_crit_edge
    i8 1, label %sw.bb
    i8 37, label %sw.bb48
    i8 32, label %if.end39.sw.bb66_crit_edge
    i8 33, label %if.end39.sw.bb66_crit_edge708
    i8 34, label %if.end39.sw.bb66_crit_edge709
    i8 35, label %if.end39.sw.bb66_crit_edge710
    i8 41, label %sw.bb86
    i8 42, label %sw.bb131
    i8 43, label %sw.bb211
    i8 -128, label %if.end39.sw.bb254_crit_edge
    i8 -127, label %if.end39.sw.bb254_crit_edge711
    i8 -126, label %if.end39.sw.bb254_crit_edge712
    i8 -125, label %if.end39.sw.bb254_crit_edge713
    i8 -124, label %if.end39.sw.bb254_crit_edge714
    i8 -123, label %if.end39.sw.bb254_crit_edge715
    i8 -122, label %if.end39.sw.bb254_crit_edge716
    i8 -121, label %if.end39.sw.bb254_crit_edge717
    i8 -120, label %if.end39.sw.bb254_crit_edge718
    i8 -119, label %if.end39.sw.bb254_crit_edge719
    i8 -118, label %if.end39.sw.bb254_crit_edge720
    i8 -117, label %if.end39.sw.bb254_crit_edge721
    i8 -116, label %if.end39.sw.bb254_crit_edge722
    i8 -115, label %if.end39.sw.bb254_crit_edge723
    i8 -114, label %if.end39.sw.bb254_crit_edge724
    i8 -113, label %if.end39.sw.bb254_crit_edge725
    i8 -112, label %if.end39.sw.bb254_crit_edge726
    i8 -111, label %if.end39.sw.bb254_crit_edge727
    i8 -110, label %if.end39.sw.bb254_crit_edge728
    i8 -109, label %if.end39.sw.bb254_crit_edge729
    i8 -108, label %if.end39.sw.bb254_crit_edge730
    i8 -107, label %if.end39.sw.bb254_crit_edge731
    i8 -106, label %if.end39.sw.bb254_crit_edge732
    i8 -105, label %if.end39.sw.bb254_crit_edge733
    i8 -104, label %if.end39.sw.bb254_crit_edge734
    i8 -103, label %if.end39.sw.bb254_crit_edge735
    i8 -102, label %if.end39.sw.bb254_crit_edge736
    i8 -101, label %if.end39.sw.bb254_crit_edge737
    i8 -100, label %if.end39.sw.bb254_crit_edge738
    i8 -99, label %if.end39.sw.bb254_crit_edge739
    i8 -98, label %if.end39.sw.bb254_crit_edge740
    i8 -97, label %if.end39.sw.bb254_crit_edge741
    i8 -96, label %if.end39.sw.bb254_crit_edge742
    i8 -95, label %if.end39.sw.bb254_crit_edge743
    i8 -94, label %if.end39.sw.bb254_crit_edge744
    i8 -93, label %if.end39.sw.bb254_crit_edge745
    i8 -92, label %if.end39.sw.bb254_crit_edge746
    i8 -91, label %if.end39.sw.bb254_crit_edge747
    i8 -90, label %if.end39.sw.bb254_crit_edge748
    i8 -89, label %if.end39.sw.bb254_crit_edge749
    i8 -88, label %if.end39.sw.bb254_crit_edge750
    i8 -87, label %if.end39.sw.bb254_crit_edge751
    i8 -86, label %if.end39.sw.bb254_crit_edge752
    i8 -85, label %if.end39.sw.bb254_crit_edge753
    i8 -84, label %if.end39.sw.bb254_crit_edge754
    i8 -83, label %if.end39.sw.bb254_crit_edge755
    i8 -82, label %if.end39.sw.bb254_crit_edge756
    i8 -81, label %if.end39.sw.bb254_crit_edge757
    i8 -80, label %if.end39.sw.bb254_crit_edge758
    i8 -79, label %if.end39.sw.bb254_crit_edge759
    i8 -78, label %if.end39.sw.bb254_crit_edge760
    i8 -77, label %if.end39.sw.bb254_crit_edge761
    i8 -76, label %if.end39.sw.bb254_crit_edge762
    i8 -75, label %if.end39.sw.bb254_crit_edge763
    i8 -74, label %if.end39.sw.bb254_crit_edge764
    i8 -73, label %if.end39.sw.bb254_crit_edge765
    i8 -72, label %if.end39.sw.bb254_crit_edge766
    i8 -71, label %if.end39.sw.bb254_crit_edge767
    i8 -70, label %if.end39.sw.bb254_crit_edge768
    i8 -69, label %if.end39.sw.bb254_crit_edge769
    i8 -68, label %if.end39.sw.bb254_crit_edge770
    i8 -67, label %if.end39.sw.bb254_crit_edge771
    i8 -66, label %if.end39.sw.bb254_crit_edge772
    i8 -65, label %if.end39.sw.bb254_crit_edge773
    i8 38, label %if.end39.sw.bb259_crit_edge
    i8 39, label %if.end39.sw.bb259_crit_edge774
    i8 -64, label %if.end39.sw.bb264_crit_edge
    i8 -63, label %if.end39.sw.bb264_crit_edge775
    i8 -62, label %if.end39.sw.bb264_crit_edge776
    i8 -61, label %if.end39.sw.bb264_crit_edge777
    i8 -60, label %if.end39.sw.bb264_crit_edge778
    i8 -59, label %if.end39.sw.bb264_crit_edge779
    i8 -58, label %if.end39.sw.bb264_crit_edge780
    i8 -57, label %if.end39.sw.bb264_crit_edge781
    i8 -56, label %if.end39.sw.bb264_crit_edge782
    i8 -55, label %if.end39.sw.bb264_crit_edge783
    i8 -54, label %if.end39.sw.bb264_crit_edge784
    i8 -53, label %if.end39.sw.bb264_crit_edge785
    i8 -52, label %if.end39.sw.bb264_crit_edge786
    i8 -51, label %if.end39.sw.bb264_crit_edge787
    i8 -50, label %if.end39.sw.bb264_crit_edge788
    i8 -49, label %if.end39.sw.bb264_crit_edge789
    i8 -48, label %if.end39.sw.bb264_crit_edge790
    i8 -47, label %if.end39.sw.bb264_crit_edge791
    i8 -46, label %if.end39.sw.bb264_crit_edge792
    i8 -45, label %if.end39.sw.bb264_crit_edge793
    i8 -44, label %if.end39.sw.bb264_crit_edge794
    i8 -43, label %if.end39.sw.bb264_crit_edge795
    i8 -42, label %if.end39.sw.bb264_crit_edge796
    i8 -41, label %if.end39.sw.bb264_crit_edge797
    i8 -40, label %if.end39.sw.bb264_crit_edge798
    i8 -39, label %if.end39.sw.bb264_crit_edge799
    i8 -38, label %if.end39.sw.bb264_crit_edge800
    i8 -37, label %if.end39.sw.bb264_crit_edge801
    i8 -36, label %if.end39.sw.bb264_crit_edge802
    i8 -35, label %if.end39.sw.bb264_crit_edge803
    i8 -34, label %if.end39.sw.bb264_crit_edge804
    i8 -33, label %if.end39.sw.bb264_crit_edge805
    i8 -32, label %if.end39.sw.bb264_crit_edge806
    i8 -31, label %if.end39.sw.bb264_crit_edge807
    i8 -30, label %if.end39.sw.bb264_crit_edge808
    i8 -29, label %if.end39.sw.bb264_crit_edge809
    i8 -28, label %if.end39.sw.bb264_crit_edge810
    i8 -27, label %if.end39.sw.bb264_crit_edge811
    i8 -26, label %if.end39.sw.bb264_crit_edge812
    i8 -25, label %if.end39.sw.bb264_crit_edge813
    i8 -24, label %if.end39.sw.bb264_crit_edge814
    i8 -23, label %if.end39.sw.bb264_crit_edge815
    i8 -22, label %if.end39.sw.bb264_crit_edge816
    i8 -21, label %if.end39.sw.bb264_crit_edge817
    i8 -20, label %if.end39.sw.bb264_crit_edge818
    i8 -19, label %if.end39.sw.bb264_crit_edge819
    i8 -18, label %if.end39.sw.bb264_crit_edge820
    i8 -17, label %if.end39.sw.bb264_crit_edge821
    i8 -16, label %if.end39.sw.bb264_crit_edge822
    i8 -15, label %if.end39.sw.bb264_crit_edge823
    i8 -14, label %if.end39.sw.bb264_crit_edge824
    i8 -13, label %if.end39.sw.bb264_crit_edge825
    i8 -12, label %if.end39.sw.bb264_crit_edge826
    i8 -11, label %if.end39.sw.bb264_crit_edge827
    i8 -10, label %if.end39.sw.bb264_crit_edge828
    i8 -9, label %if.end39.sw.bb264_crit_edge829
    i8 -8, label %if.end39.sw.bb264_crit_edge830
    i8 -7, label %if.end39.sw.bb264_crit_edge831
    i8 -6, label %if.end39.sw.bb264_crit_edge832
    i8 -5, label %if.end39.sw.bb264_crit_edge833
    i8 -4, label %if.end39.sw.bb264_crit_edge834
    i8 -3, label %if.end39.sw.bb264_crit_edge835
    i8 -2, label %if.end39.sw.bb264_crit_edge836
    i8 -1, label %if.end39.sw.bb264_crit_edge837
  ]

if.end39.sw.bb264_crit_edge837:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge836:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge835:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge834:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge833:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge832:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge831:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge830:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge829:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge828:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge827:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge826:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge825:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge824:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge823:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge822:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge821:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge820:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge819:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge818:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge817:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge816:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge815:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge814:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge813:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge812:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge811:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge810:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge809:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge808:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge807:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge806:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge805:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge804:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge803:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge802:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge801:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge800:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge799:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge798:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge797:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge796:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge795:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge794:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge793:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge792:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge791:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge790:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge789:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge788:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge787:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge786:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge785:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge784:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge783:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge782:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge781:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge780:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge779:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge778:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge777:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge776:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge775:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb264_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

if.end39.sw.bb259_crit_edge774:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb259

if.end39.sw.bb259_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb259

if.end39.sw.bb254_crit_edge773:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge772:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge771:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge770:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge769:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge768:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge767:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge766:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge765:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge764:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge763:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge762:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge761:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge760:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge759:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge758:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge757:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge756:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge755:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge754:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge753:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge752:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge751:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge750:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge749:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge748:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge747:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge746:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge745:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge744:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge743:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge742:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge741:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge740:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge739:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge738:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge737:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge736:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge735:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge734:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge733:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge732:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge731:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge730:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge729:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge728:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge727:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge726:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge725:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge724:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge723:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge722:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge721:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge720:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge719:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge718:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge717:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge716:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge715:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge714:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge713:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge712:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge711:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb254_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb254

if.end39.sw.bb66_crit_edge710:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

if.end39.sw.bb66_crit_edge709:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

if.end39.sw.bb66_crit_edge708:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

if.end39.sw.bb66_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

if.end39.ignore_option_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mandatory.0604)
  %tobool.not = icmp eq i32 %mandatory.0604, 0
  br i1 %tobool.not, label %sw.bb.ignore_option_crit_edge, label %sw.bb.do.body285_crit_edge

sw.bb.do.body285_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

sw.bb.ignore_option_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

sw.bb48:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %len.1)
  %cmp50 = icmp ugt i8 %len.1, 6
  br i1 %cmp50, label %sw.bb48.do.body285_crit_edge, label %if.end53

sw.bb48.do.body285_crit_edge:                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

if.end53:                                         ; preds = %sw.bb48
  %19 = zext i8 %len.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %len.1, label %if.end11.i [
    i8 6, label %if.end.thread.i
    i8 5, label %if.end53.if.end11.thread.i_crit_edge
  ]

if.end53.if.end11.thread.i_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread.i

if.end.thread.i:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %value.1, i32 1
  %20 = ptrtoint ptr %value.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value.1, align 1
  %conv2.i = zext i8 %21 to i64
  %shl.i = shl nuw nsw i64 %conv2.i, 40
  br label %if.end11.thread.i

if.end11.thread.i:                                ; preds = %if.end.thread.i, %if.end53.if.end11.thread.i_crit_edge
  %value.066.i = phi i64 [ %shl.i, %if.end.thread.i ], [ 0, %if.end53.if.end11.thread.i_crit_edge ]
  %bf.addr.065.i = phi ptr [ %incdec.ptr.i, %if.end.thread.i ], [ %value.1, %if.end53.if.end11.thread.i_crit_edge ]
  %incdec.ptr7.i = getelementptr i8, ptr %bf.addr.065.i, i32 1
  %22 = ptrtoint ptr %bf.addr.065.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bf.addr.065.i, align 1
  %conv8.i = zext i8 %23 to i64
  %shl9.i = shl nuw nsw i64 %conv8.i, 32
  %add10.i = or i64 %shl9.i, %value.066.i
  br label %if.end20.thread.i

if.end11.i:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len.1)
  %cmp13.i = icmp ugt i8 %len.1, 3
  br i1 %cmp13.i, label %if.end11.i.if.end20.thread.i_crit_edge, label %if.end20.i

if.end11.i.if.end20.thread.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %if.end11.i.if.end20.thread.i_crit_edge, %if.end11.thread.i
  %value.171.i = phi i64 [ %add10.i, %if.end11.thread.i ], [ 0, %if.end11.i.if.end20.thread.i_crit_edge ]
  %bf.addr.170.i = phi ptr [ %incdec.ptr7.i, %if.end11.thread.i ], [ %value.1, %if.end11.i.if.end20.thread.i_crit_edge ]
  %incdec.ptr16.i = getelementptr i8, ptr %bf.addr.170.i, i32 1
  %24 = ptrtoint ptr %bf.addr.170.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bf.addr.170.i, align 1
  %conv17.i = zext i8 %25 to i64
  %shl18.i = shl nuw nsw i64 %conv17.i, 24
  %add19.i = add nsw i64 %shl18.i, %value.171.i
  br label %if.end29.thread.i

if.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len.1)
  %cmp22.i = icmp eq i8 %len.1, 3
  br i1 %cmp22.i, label %if.end20.i.if.end29.thread.i_crit_edge, label %if.end29.i

if.end20.i.if.end29.thread.i_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread.i

if.end29.thread.i:                                ; preds = %if.end20.i.if.end29.thread.i_crit_edge, %if.end20.thread.i
  %value.276.i = phi i64 [ %add19.i, %if.end20.thread.i ], [ 0, %if.end20.i.if.end29.thread.i_crit_edge ]
  %bf.addr.275.i = phi ptr [ %incdec.ptr16.i, %if.end20.thread.i ], [ %value.1, %if.end20.i.if.end29.thread.i_crit_edge ]
  %incdec.ptr25.i = getelementptr i8, ptr %bf.addr.275.i, i32 1
  %26 = ptrtoint ptr %bf.addr.275.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bf.addr.275.i, align 1
  %conv26.i = zext i8 %27 to i64
  %shl27.i = shl nuw nsw i64 %conv26.i, 16
  %add28.i = add i64 %shl27.i, %value.276.i
  br label %if.end38.thread.i

if.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len.1)
  %cmp31.i = icmp ugt i8 %len.1, 1
  br i1 %cmp31.i, label %if.end29.i.if.end38.thread.i_crit_edge, label %if.end38.i

if.end29.i.if.end38.thread.i_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.thread.i

if.end38.thread.i:                                ; preds = %if.end29.i.if.end38.thread.i_crit_edge, %if.end29.thread.i
  %value.381.i = phi i64 [ %add28.i, %if.end29.thread.i ], [ 0, %if.end29.i.if.end38.thread.i_crit_edge ]
  %bf.addr.380.i = phi ptr [ %incdec.ptr25.i, %if.end29.thread.i ], [ %value.1, %if.end29.i.if.end38.thread.i_crit_edge ]
  %incdec.ptr34.i = getelementptr i8, ptr %bf.addr.380.i, i32 1
  %28 = ptrtoint ptr %bf.addr.380.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bf.addr.380.i, align 1
  %conv35.i = zext i8 %29 to i64
  %shl36.i = shl nuw nsw i64 %conv35.i, 8
  %add37.i = add i64 %shl36.i, %value.381.i
  br label %if.then42.i

if.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.1)
  %cmp40.not.i = icmp eq i8 %len.1, 0
  br i1 %cmp40.not.i, label %if.end38.i.dccp_decode_value_var.exit_crit_edge, label %if.end38.i.if.then42.i_crit_edge

if.end38.i.if.then42.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42.i

if.end38.i.dccp_decode_value_var.exit_crit_edge:  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_decode_value_var.exit

if.then42.i:                                      ; preds = %if.end38.i.if.then42.i_crit_edge, %if.end38.thread.i
  %value.486.i = phi i64 [ %add37.i, %if.end38.thread.i ], [ 0, %if.end38.i.if.then42.i_crit_edge ]
  %bf.addr.485.i = phi ptr [ %incdec.ptr34.i, %if.end38.thread.i ], [ %value.1, %if.end38.i.if.then42.i_crit_edge ]
  %30 = ptrtoint ptr %bf.addr.485.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bf.addr.485.i, align 1
  %conv43.i = zext i8 %31 to i64
  %add44.i = add i64 %value.486.i, %conv43.i
  br label %dccp_decode_value_var.exit

dccp_decode_value_var.exit:                       ; preds = %if.then42.i, %if.end38.i.dccp_decode_value_var.exit_crit_edge
  %value.5.i = phi i64 [ %add44.i, %if.then42.i ], [ 0, %if.end38.i.dccp_decode_value_var.exit_crit_edge ]
  %32 = ptrtoint ptr %dccps_options_received to i32
  call void @__asan_load8_noabort(i32 %32)
  %bf.load55 = load i64, ptr %dccps_options_received, align 8
  %bf.shl = shl i64 %value.5.i, 16
  %bf.clear = and i64 %bf.load55, 65535
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %dccps_options_received, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %33 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool56.not = icmp eq i8 %33, 0
  br i1 %tobool56.not, label %dccp_decode_value_var.exit.ignore_option_crit_edge, label %do.end

dccp_decode_value_var.exit.ignore_option_crit_edge: ; preds = %dccp_decode_value_var.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

do.end:                                           ; preds = %dccp_decode_value_var.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dccps_role.i528 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %dccps_role.i528, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %switch.gep677 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_parse_options.41, i32 0, i32 %bf.cast.i
  %35 = ptrtoint ptr %switch.gep677 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load678 = load ptr, ptr %switch.gep677, align 4
  %bf.lshr61 = and i64 %value.5.i, 281474976710655
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %switch.load678, i64 noundef %bf.lshr61) #10
  br label %ignore_option

sw.bb66:                                          ; preds = %if.end39.sw.bb66_crit_edge, %if.end39.sw.bb66_crit_edge708, %if.end39.sw.bb66_crit_edge709, %if.end39.sw.bb66_crit_edge710
  br i1 %cmp68, label %sw.bb66.ignore_option_crit_edge, label %if.end71

sw.bb66.ignore_option_crit_edge:                  ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

if.end71:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.1)
  %cmp73 = icmp eq i8 %len.1, 0
  br i1 %cmp73, label %if.end71.do.body285_crit_edge, label %if.end76

if.end71.do.body285_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

if.end76:                                         ; preds = %if.end71
  %conv77 = trunc i32 %mandatory.0604 to i8
  %36 = ptrtoint ptr %value.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %value.1, align 1
  %add.ptr78 = getelementptr i8, ptr %value.1, i32 1
  %sub80 = add i8 %len.1, -1
  %call82 = tail call i32 @dccp_feat_parse_options(ptr noundef %sk, ptr noundef %dreq, i8 noundef zeroext %conv77, i8 noundef zeroext %14, i8 noundef zeroext %37, ptr noundef %add.ptr78, i8 noundef zeroext %sub80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end76.ignore_option_crit_edge, label %if.end76.do.body337_crit_edge

if.end76.do.body337_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body337

if.end76.ignore_option_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

sw.bb86:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %len.1)
  %cmp88.not = icmp eq i8 %len.1, 4
  br i1 %cmp88.not, label %if.end91, label %sw.bb86.do.body285_crit_edge

sw.bb86.do.body285_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

if.end91:                                         ; preds = %sw.bb86
  %38 = ptrtoint ptr %value.1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %value.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp93 = icmp eq i32 %39, 0
  br i1 %cmp93, label %do.body98, label %if.end110, !prof !79

do.body98:                                        ; preds = %if.end91
  %call99 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body98.ignore_option_crit_edge, label %do.end104

do.body98.ignore_option_crit_edge:                ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %ignore_option

if.end110:                                        ; preds = %if.end91
  br i1 %cmp26.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dreq_timestamp_echo to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dreq_timestamp_echo, align 8
  %call114 = tail call i32 @dccp_timestamp() #7
  %41 = ptrtoint ptr %dreq_timestamp_time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call114, ptr %dreq_timestamp_time, align 4
  br label %do.body117

if.else:                                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dccps_timestamp_echo to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %dccps_timestamp_echo, align 4
  %43 = ptrtoint ptr %dccpor_timestamp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %dccpor_timestamp, align 8
  %call115 = tail call i32 @dccp_timestamp() #7
  %44 = ptrtoint ptr %dccps_timestamp_time to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call115, ptr %dccps_timestamp_time, align 8
  br label %do.body117

do.body117:                                       ; preds = %if.else, %if.then113
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %45 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool118.not = icmp eq i8 %45, 0
  br i1 %tobool118.not, label %do.body117.do.end130_crit_edge, label %do.end122

do.body117.do.end130_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

do.end122:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dccps_role.i528 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i507 = load i8, ptr %dccps_role.i528, align 8
  %bf.lshr.i508 = lshr i8 %bf.load.i507, 6
  %bf.cast.i509 = zext i8 %bf.lshr.i508 to i32
  %switch.gep680 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_parse_options.42, i32 0, i32 %bf.cast.i509
  %47 = ptrtoint ptr %switch.gep680 to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load681 = load ptr, ptr %switch.gep680, align 4
  %48 = ptrtoint ptr %dccpd_ack_seq160 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dccpd_ack_seq160, align 8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull %switch.load681, i32 noundef %39, i64 noundef %49) #10
  br label %do.end130

do.end130:                                        ; preds = %do.end122, %do.body117.do.end130_crit_edge
  %50 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %icsk_ack.i, align 4
  %52 = or i8 %51, 1
  store i8 %52, ptr %icsk_ack.i, align 4
  br label %ignore_option

sw.bb131:                                         ; preds = %if.end39
  %conv132 = zext i8 %len.1 to i32
  %53 = zext i8 %len.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %len.1, label %sw.bb131.do.body285_crit_edge [
    i8 4, label %sw.bb131.if.end144_crit_edge
    i8 6, label %sw.bb131.if.end144_crit_edge838
    i8 8, label %sw.bb131.if.end144_crit_edge839
  ]

sw.bb131.if.end144_crit_edge839:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

sw.bb131.if.end144_crit_edge838:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

sw.bb131.if.end144_crit_edge:                     ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

sw.bb131.do.body285_crit_edge:                    ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

if.end144:                                        ; preds = %sw.bb131.if.end144_crit_edge, %sw.bb131.if.end144_crit_edge838, %sw.bb131.if.end144_crit_edge839
  %54 = ptrtoint ptr %value.1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %value.1, align 1
  %56 = ptrtoint ptr %dccpor_timestamp_echo to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dccpor_timestamp_echo, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %57 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool149.not = icmp eq i8 %57, 0
  br i1 %tobool149.not, label %if.end144.do.end164_crit_edge, label %do.end153

if.end144.do.end164_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164

do.end153:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dccps_role.i528 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i517 = load i8, ptr %dccps_role.i528, align 8
  %bf.lshr.i518 = lshr i8 %bf.load.i517, 6
  %bf.cast.i519 = zext i8 %bf.lshr.i518 to i32
  %switch.gep683 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_parse_options.43, i32 0, i32 %bf.cast.i519
  %59 = ptrtoint ptr %switch.gep683 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load684 = load ptr, ptr %switch.gep683, align 4
  %add = add nuw nsw i32 %conv132, 2
  %60 = ptrtoint ptr %dccpd_ack_seq160 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dccpd_ack_seq160, align 8
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull %switch.load684, i32 noundef %55, i32 noundef %add, i64 noundef %61) #10
  br label %do.end164

do.end164:                                        ; preds = %do.end153, %if.end144.do.end164_crit_edge
  %add.ptr165 = getelementptr i8, ptr %value.1, i32 4
  %62 = zext i8 %len.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %len.1, label %if.else190 [
    i8 4, label %do.body170
    i8 6, label %if.then185
  ]

do.body170:                                       ; preds = %do.end164
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %63 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool171.not = icmp eq i8 %63, 0
  br i1 %tobool171.not, label %do.body170.ignore_option_crit_edge, label %do.end175

do.body170.ignore_option_crit_edge:               ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

do.end175:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %ignore_option

if.then185:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %add.ptr165 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %add.ptr165, align 1
  %conv189 = zext i16 %65 to i32
  br label %do.body195

if.else190:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr165 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr165, align 1
  br label %do.body195

do.body195:                                       ; preds = %if.else190, %if.then185
  %elapsed_time.0 = phi i32 [ %conv189, %if.then185 ], [ %67, %if.else190 ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %68 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool196.not = icmp eq i8 %68, 0
  br i1 %tobool196.not, label %do.body195.do.end205_crit_edge, label %do.end200

do.body195.do.end205_crit_edge:                   ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end205

do.end200:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %elapsed_time.0) #10
  br label %do.end205

do.end205:                                        ; preds = %do.end200, %do.body195.do.end205_crit_edge
  %69 = ptrtoint ptr %dccpor_elapsed_time236 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dccpor_elapsed_time236, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %elapsed_time.0, i32 %70)
  %cmp206 = icmp ugt i32 %elapsed_time.0, %70
  br i1 %cmp206, label %if.then208, label %do.end205.ignore_option_crit_edge

do.end205.ignore_option_crit_edge:                ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

if.then208:                                       ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dccpor_elapsed_time236 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %elapsed_time.0, ptr %dccpor_elapsed_time236, align 8
  br label %ignore_option

sw.bb211:                                         ; preds = %if.end39
  %72 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i526 = load i8, ptr %dccpd_type, align 8
  %bf.lshr.mask.i = and i8 %bf.load.i526, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask.i)
  %cmp.i527 = icmp ne i8 %bf.lshr.mask.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load.i526)
  %cmp3.i = icmp ugt i8 %bf.load.i526, 15
  %tobool213.not = and i1 %cmp3.i, %cmp.i527
  br i1 %tobool213.not, label %if.end215, label %sw.bb211.ignore_option_crit_edge

sw.bb211.ignore_option_crit_edge:                 ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

if.end215:                                        ; preds = %sw.bb211
  %73 = zext i8 %len.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %len.1, label %if.end215.do.body285_crit_edge [
    i8 2, label %if.then219
    i8 4, label %if.then229
  ]

if.end215.do.body285_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

if.then219:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %value.1 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %value.1, align 1
  %conv224 = zext i16 %75 to i32
  br label %if.end235

if.then229:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %value.1 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %value.1, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then229, %if.then219
  %elapsed_time.1 = phi i32 [ %conv224, %if.then219 ], [ %77, %if.then229 ]
  %78 = ptrtoint ptr %dccpor_elapsed_time236 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dccpor_elapsed_time236, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %elapsed_time.1, i32 %79)
  %cmp237 = icmp ugt i32 %elapsed_time.1, %79
  br i1 %cmp237, label %if.then239, label %if.end235.do.body242_crit_edge

if.end235.do.body242_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242

if.then239:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dccpor_elapsed_time236 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %elapsed_time.1, ptr %dccpor_elapsed_time236, align 8
  br label %do.body242

do.body242:                                       ; preds = %if.then239, %if.end235.do.body242_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %81 = load i8, ptr @dccp_debug, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool243.not = icmp eq i8 %81, 0
  br i1 %tobool243.not, label %do.body242.ignore_option_crit_edge, label %do.end247

do.body242.ignore_option_crit_edge:               ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

do.end247:                                        ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %dccps_role.i528 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i529 = load i8, ptr %dccps_role.i528, align 8
  %bf.lshr.i530 = lshr i8 %bf.load.i529, 6
  %bf.cast.i531 = zext i8 %bf.lshr.i530 to i32
  %switch.gep686 = getelementptr inbounds [4 x ptr], ptr @switch.table.dccp_parse_options.44, i32 0, i32 %bf.cast.i531
  %83 = ptrtoint ptr %switch.gep686 to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load687 = load ptr, ptr %switch.gep686, align 4
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, ptr noundef nonnull %switch.load687, i32 noundef %elapsed_time.1) #10
  br label %ignore_option

sw.bb254:                                         ; preds = %if.end39.sw.bb254_crit_edge, %if.end39.sw.bb254_crit_edge711, %if.end39.sw.bb254_crit_edge712, %if.end39.sw.bb254_crit_edge713, %if.end39.sw.bb254_crit_edge714, %if.end39.sw.bb254_crit_edge715, %if.end39.sw.bb254_crit_edge716, %if.end39.sw.bb254_crit_edge717, %if.end39.sw.bb254_crit_edge718, %if.end39.sw.bb254_crit_edge719, %if.end39.sw.bb254_crit_edge720, %if.end39.sw.bb254_crit_edge721, %if.end39.sw.bb254_crit_edge722, %if.end39.sw.bb254_crit_edge723, %if.end39.sw.bb254_crit_edge724, %if.end39.sw.bb254_crit_edge725, %if.end39.sw.bb254_crit_edge726, %if.end39.sw.bb254_crit_edge727, %if.end39.sw.bb254_crit_edge728, %if.end39.sw.bb254_crit_edge729, %if.end39.sw.bb254_crit_edge730, %if.end39.sw.bb254_crit_edge731, %if.end39.sw.bb254_crit_edge732, %if.end39.sw.bb254_crit_edge733, %if.end39.sw.bb254_crit_edge734, %if.end39.sw.bb254_crit_edge735, %if.end39.sw.bb254_crit_edge736, %if.end39.sw.bb254_crit_edge737, %if.end39.sw.bb254_crit_edge738, %if.end39.sw.bb254_crit_edge739, %if.end39.sw.bb254_crit_edge740, %if.end39.sw.bb254_crit_edge741, %if.end39.sw.bb254_crit_edge742, %if.end39.sw.bb254_crit_edge743, %if.end39.sw.bb254_crit_edge744, %if.end39.sw.bb254_crit_edge745, %if.end39.sw.bb254_crit_edge746, %if.end39.sw.bb254_crit_edge747, %if.end39.sw.bb254_crit_edge748, %if.end39.sw.bb254_crit_edge749, %if.end39.sw.bb254_crit_edge750, %if.end39.sw.bb254_crit_edge751, %if.end39.sw.bb254_crit_edge752, %if.end39.sw.bb254_crit_edge753, %if.end39.sw.bb254_crit_edge754, %if.end39.sw.bb254_crit_edge755, %if.end39.sw.bb254_crit_edge756, %if.end39.sw.bb254_crit_edge757, %if.end39.sw.bb254_crit_edge758, %if.end39.sw.bb254_crit_edge759, %if.end39.sw.bb254_crit_edge760, %if.end39.sw.bb254_crit_edge761, %if.end39.sw.bb254_crit_edge762, %if.end39.sw.bb254_crit_edge763, %if.end39.sw.bb254_crit_edge764, %if.end39.sw.bb254_crit_edge765, %if.end39.sw.bb254_crit_edge766, %if.end39.sw.bb254_crit_edge767, %if.end39.sw.bb254_crit_edge768, %if.end39.sw.bb254_crit_edge769, %if.end39.sw.bb254_crit_edge770, %if.end39.sw.bb254_crit_edge771, %if.end39.sw.bb254_crit_edge772, %if.end39.sw.bb254_crit_edge773
  %84 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dccps_hc_rx_ccid, align 8
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %sw.bb254.ignore_option_crit_edge, label %lor.lhs.false.i

sw.bb254.ignore_option_crit_edge:                 ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

lor.lhs.false.i:                                  ; preds = %sw.bb254
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %ccid_hc_rx_parse_options.i = getelementptr inbounds %struct.ccid_operations, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %ccid_hc_rx_parse_options.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ccid_hc_rx_parse_options.i, align 4
  %tobool1.not.i = icmp eq ptr %89, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ignore_option_crit_edge, label %ccid_hc_rx_parse_options.exit

lor.lhs.false.i.ignore_option_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

ccid_hc_rx_parse_options.exit:                    ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %89(ptr noundef %sk, i8 noundef zeroext %bf.lshr, i8 noundef zeroext %14, ptr noundef %value.1, i8 noundef zeroext %len.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool256.not = icmp eq i32 %call.i, 0
  br i1 %tobool256.not, label %ccid_hc_rx_parse_options.exit.ignore_option_crit_edge, label %ccid_hc_rx_parse_options.exit.do.body285_crit_edge

ccid_hc_rx_parse_options.exit.do.body285_crit_edge: ; preds = %ccid_hc_rx_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

ccid_hc_rx_parse_options.exit.ignore_option_crit_edge: ; preds = %ccid_hc_rx_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

sw.bb259:                                         ; preds = %if.end39.sw.bb259_crit_edge, %if.end39.sw.bb259_crit_edge774
  %90 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i541 = load i8, ptr %dccpd_type, align 8
  %bf.lshr.mask.i542 = and i8 %bf.load.i541, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask.i542)
  %cmp.i543 = icmp ne i8 %bf.lshr.mask.i542, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load.i541)
  %cmp3.i544 = icmp ugt i8 %bf.load.i541, 15
  %tobool261.not = and i1 %cmp3.i544, %cmp.i543
  br i1 %tobool261.not, label %sw.bb259.sw.bb264_crit_edge, label %sw.bb259.ignore_option_crit_edge

sw.bb259.ignore_option_crit_edge:                 ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

sw.bb259.sw.bb264_crit_edge:                      ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb264

sw.bb264:                                         ; preds = %sw.bb259.sw.bb264_crit_edge, %if.end39.sw.bb264_crit_edge, %if.end39.sw.bb264_crit_edge775, %if.end39.sw.bb264_crit_edge776, %if.end39.sw.bb264_crit_edge777, %if.end39.sw.bb264_crit_edge778, %if.end39.sw.bb264_crit_edge779, %if.end39.sw.bb264_crit_edge780, %if.end39.sw.bb264_crit_edge781, %if.end39.sw.bb264_crit_edge782, %if.end39.sw.bb264_crit_edge783, %if.end39.sw.bb264_crit_edge784, %if.end39.sw.bb264_crit_edge785, %if.end39.sw.bb264_crit_edge786, %if.end39.sw.bb264_crit_edge787, %if.end39.sw.bb264_crit_edge788, %if.end39.sw.bb264_crit_edge789, %if.end39.sw.bb264_crit_edge790, %if.end39.sw.bb264_crit_edge791, %if.end39.sw.bb264_crit_edge792, %if.end39.sw.bb264_crit_edge793, %if.end39.sw.bb264_crit_edge794, %if.end39.sw.bb264_crit_edge795, %if.end39.sw.bb264_crit_edge796, %if.end39.sw.bb264_crit_edge797, %if.end39.sw.bb264_crit_edge798, %if.end39.sw.bb264_crit_edge799, %if.end39.sw.bb264_crit_edge800, %if.end39.sw.bb264_crit_edge801, %if.end39.sw.bb264_crit_edge802, %if.end39.sw.bb264_crit_edge803, %if.end39.sw.bb264_crit_edge804, %if.end39.sw.bb264_crit_edge805, %if.end39.sw.bb264_crit_edge806, %if.end39.sw.bb264_crit_edge807, %if.end39.sw.bb264_crit_edge808, %if.end39.sw.bb264_crit_edge809, %if.end39.sw.bb264_crit_edge810, %if.end39.sw.bb264_crit_edge811, %if.end39.sw.bb264_crit_edge812, %if.end39.sw.bb264_crit_edge813, %if.end39.sw.bb264_crit_edge814, %if.end39.sw.bb264_crit_edge815, %if.end39.sw.bb264_crit_edge816, %if.end39.sw.bb264_crit_edge817, %if.end39.sw.bb264_crit_edge818, %if.end39.sw.bb264_crit_edge819, %if.end39.sw.bb264_crit_edge820, %if.end39.sw.bb264_crit_edge821, %if.end39.sw.bb264_crit_edge822, %if.end39.sw.bb264_crit_edge823, %if.end39.sw.bb264_crit_edge824, %if.end39.sw.bb264_crit_edge825, %if.end39.sw.bb264_crit_edge826, %if.end39.sw.bb264_crit_edge827, %if.end39.sw.bb264_crit_edge828, %if.end39.sw.bb264_crit_edge829, %if.end39.sw.bb264_crit_edge830, %if.end39.sw.bb264_crit_edge831, %if.end39.sw.bb264_crit_edge832, %if.end39.sw.bb264_crit_edge833, %if.end39.sw.bb264_crit_edge834, %if.end39.sw.bb264_crit_edge835, %if.end39.sw.bb264_crit_edge836, %if.end39.sw.bb264_crit_edge837
  %91 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  %tobool.not.i546 = icmp eq ptr %92, null
  br i1 %tobool.not.i546, label %sw.bb264.ignore_option_crit_edge, label %lor.lhs.false.i548

sw.bb264.ignore_option_crit_edge:                 ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

lor.lhs.false.i548:                               ; preds = %sw.bb264
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %ccid_hc_tx_parse_options.i = getelementptr inbounds %struct.ccid_operations, ptr %94, i32 0, i32 17
  %95 = ptrtoint ptr %ccid_hc_tx_parse_options.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ccid_hc_tx_parse_options.i, align 4
  %tobool1.not.i547 = icmp eq ptr %96, null
  br i1 %tobool1.not.i547, label %lor.lhs.false.i548.ignore_option_crit_edge, label %ccid_hc_tx_parse_options.exit

lor.lhs.false.i548.ignore_option_crit_edge:       ; preds = %lor.lhs.false.i548
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

ccid_hc_tx_parse_options.exit:                    ; preds = %lor.lhs.false.i548
  %call.i549 = tail call i32 %96(ptr noundef %sk, i8 noundef zeroext %bf.lshr, i8 noundef zeroext %14, ptr noundef %value.1, i8 noundef zeroext %len.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i549)
  %tobool266.not = icmp eq i32 %call.i549, 0
  br i1 %tobool266.not, label %ccid_hc_tx_parse_options.exit.ignore_option_crit_edge, label %ccid_hc_tx_parse_options.exit.do.body285_crit_edge

ccid_hc_tx_parse_options.exit.do.body285_crit_edge: ; preds = %ccid_hc_tx_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

ccid_hc_tx_parse_options.exit.ignore_option_crit_edge: ; preds = %ccid_hc_tx_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_option

do.end271:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv274 = zext i8 %len.1 to i32
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %sk, i32 noundef %conv5, i32 noundef %conv274, ptr noundef nonnull @.str.2, i32 noundef 236, ptr noundef nonnull @.str.1) #10
  br label %ignore_option

ignore_option:                                    ; preds = %do.end271, %ccid_hc_tx_parse_options.exit.ignore_option_crit_edge, %lor.lhs.false.i548.ignore_option_crit_edge, %sw.bb264.ignore_option_crit_edge, %sw.bb259.ignore_option_crit_edge, %ccid_hc_rx_parse_options.exit.ignore_option_crit_edge, %lor.lhs.false.i.ignore_option_crit_edge, %sw.bb254.ignore_option_crit_edge, %do.end247, %do.body242.ignore_option_crit_edge, %sw.bb211.ignore_option_crit_edge, %if.then208, %do.end205.ignore_option_crit_edge, %do.end175, %do.body170.ignore_option_crit_edge, %do.end130, %do.end104, %do.body98.ignore_option_crit_edge, %if.end76.ignore_option_crit_edge, %sw.bb66.ignore_option_crit_edge, %do.end, %dccp_decode_value_var.exit.ignore_option_crit_edge, %sw.bb.ignore_option_crit_edge, %if.end39.ignore_option_crit_edge, %land.lhs.true.ignore_option_crit_edge
  %mandatory.1 = phi i32 [ %mandatory.0604, %do.end271 ], [ %mandatory.0604, %ccid_hc_tx_parse_options.exit.ignore_option_crit_edge ], [ %mandatory.0604, %sw.bb259.ignore_option_crit_edge ], [ %mandatory.0604, %ccid_hc_rx_parse_options.exit.ignore_option_crit_edge ], [ %mandatory.0604, %sw.bb211.ignore_option_crit_edge ], [ %mandatory.0604, %do.end247 ], [ %mandatory.0604, %do.body242.ignore_option_crit_edge ], [ %mandatory.0604, %do.end175 ], [ %mandatory.0604, %do.body170.ignore_option_crit_edge ], [ %mandatory.0604, %if.then208 ], [ %mandatory.0604, %do.end205.ignore_option_crit_edge ], [ %mandatory.0604, %do.end104 ], [ %mandatory.0604, %do.body98.ignore_option_crit_edge ], [ %mandatory.0604, %do.end130 ], [ %mandatory.0604, %sw.bb66.ignore_option_crit_edge ], [ %mandatory.0604, %if.end76.ignore_option_crit_edge ], [ %mandatory.0604, %do.end ], [ %mandatory.0604, %dccp_decode_value_var.exit.ignore_option_crit_edge ], [ %mandatory.0604, %if.end39.ignore_option_crit_edge ], [ %mandatory.0604, %land.lhs.true.ignore_option_crit_edge ], [ %mandatory.0604, %lor.lhs.false.i.ignore_option_crit_edge ], [ %mandatory.0604, %sw.bb254.ignore_option_crit_edge ], [ %mandatory.0604, %lor.lhs.false.i548.ignore_option_crit_edge ], [ %mandatory.0604, %sw.bb264.ignore_option_crit_edge ], [ %spec.select, %sw.bb.ignore_option_crit_edge ]
  %value.2 = phi ptr [ %value.1, %do.end271 ], [ %value.1, %ccid_hc_tx_parse_options.exit.ignore_option_crit_edge ], [ %value.1, %sw.bb259.ignore_option_crit_edge ], [ %value.1, %ccid_hc_rx_parse_options.exit.ignore_option_crit_edge ], [ %value.1, %sw.bb211.ignore_option_crit_edge ], [ %value.1, %do.end247 ], [ %value.1, %do.body242.ignore_option_crit_edge ], [ %add.ptr165, %do.end175 ], [ %add.ptr165, %do.body170.ignore_option_crit_edge ], [ %add.ptr165, %if.then208 ], [ %add.ptr165, %do.end205.ignore_option_crit_edge ], [ %value.1, %do.end104 ], [ %value.1, %do.body98.ignore_option_crit_edge ], [ %value.1, %do.end130 ], [ %value.1, %sw.bb66.ignore_option_crit_edge ], [ %value.1, %if.end76.ignore_option_crit_edge ], [ %value.1, %do.end ], [ %value.1, %dccp_decode_value_var.exit.ignore_option_crit_edge ], [ %value.1, %if.end39.ignore_option_crit_edge ], [ %value.1, %land.lhs.true.ignore_option_crit_edge ], [ %value.1, %lor.lhs.false.i.ignore_option_crit_edge ], [ %value.1, %sw.bb254.ignore_option_crit_edge ], [ %value.1, %lor.lhs.false.i548.ignore_option_crit_edge ], [ %value.1, %sw.bb264.ignore_option_crit_edge ], [ %value.1, %sw.bb.ignore_option_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp277.not = icmp eq i8 %14, 1
  %spec.select505 = select i1 %cmp277.not, i32 %mandatory.1, i32 0
  %cmp.not = icmp eq ptr %opt_ptr.1, %add.ptr3
  br i1 %cmp.not, label %while.end, label %ignore_option.while.body_crit_edge

ignore_option.while.body_crit_edge:               ; preds = %ignore_option
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %ignore_option
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select505)
  %phi.cmp = icmp eq i32 %spec.select505, 0
  br i1 %phi.cmp, label %while.end.cleanup_crit_edge, label %while.end.do.body285_crit_edge

while.end.do.body285_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body285

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body285:                                       ; preds = %while.end.do.body285_crit_edge, %ccid_hc_tx_parse_options.exit.do.body285_crit_edge, %ccid_hc_rx_parse_options.exit.do.body285_crit_edge, %if.end215.do.body285_crit_edge, %sw.bb131.do.body285_crit_edge, %sw.bb86.do.body285_crit_edge, %if.end71.do.body285_crit_edge, %sw.bb48.do.body285_crit_edge, %sw.bb.do.body285_crit_edge
  %value.3 = phi ptr [ %value.2, %while.end.do.body285_crit_edge ], [ %value.1, %sw.bb.do.body285_crit_edge ], [ %value.1, %sw.bb48.do.body285_crit_edge ], [ %value.1, %if.end71.do.body285_crit_edge ], [ %value.1, %sw.bb86.do.body285_crit_edge ], [ %value.1, %ccid_hc_rx_parse_options.exit.do.body285_crit_edge ], [ %value.1, %ccid_hc_tx_parse_options.exit.do.body285_crit_edge ], [ %value.1, %sw.bb131.do.body285_crit_edge ], [ %value.1, %if.end215.do.body285_crit_edge ]
  %97 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %98 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx302 = getelementptr [15 x i32], ptr %98, i32 0, i32 14
  %99 = ptrtoint ptr %arrayidx302 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu, align 4
  %arrayidx305 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx305, align 4
  %add306 = add i32 %105, %99
  %106 = inttoptr i32 %add306 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add307 = add i32 %108, 1
  store i32 %add307, ptr %106, align 4
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !81
  %and.i.i = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool318.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool318.not, label %if.then327, label %do.body285.do.end330_crit_edge, !prof !79

do.body285.do.end330_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end330

if.then327:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end330

do.end330:                                        ; preds = %if.then327, %do.body285.do.end330_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #7, !srcloc !82
  br label %do.body337

do.body337:                                       ; preds = %do.end330, %if.end76.do.body337_crit_edge
  %rc.0 = phi i32 [ 5, %do.end330 ], [ %call82, %if.end76.do.body337_crit_edge ]
  %value.4 = phi ptr [ %value.3, %do.end330 ], [ %value.1, %if.end76.do.body337_crit_edge ]
  %call338 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %do.body337.do.end350_crit_edge, label %do.end343

do.body337.do.end350_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end350

do.end343:                                        ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #9
  %conv345 = zext i8 %14 to i32
  %conv346 = zext i8 %len.1 to i32
  %call347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, ptr noundef %sk, i32 noundef %conv345, i32 noundef %conv346, i32 noundef %rc.0) #10
  br label %do.end350

do.end350:                                        ; preds = %do.end343, %do.body337.do.end350_crit_edge
  %conv351 = trunc i32 %rc.0 to i8
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %110 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv351, ptr %dccpd_reset_code, align 1
  %dccpd_reset_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %111 = ptrtoint ptr %dccpd_reset_data to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %14, ptr %dccpd_reset_data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.1)
  %cmp358.not = icmp eq i8 %len.1, 0
  br i1 %cmp358.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx366557 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 27
  %112 = ptrtoint ptr %arrayidx366557 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx366557, align 1
  br label %cond.end374

cond.end:                                         ; preds = %do.end350
  %113 = ptrtoint ptr %value.4 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %value.4, align 1
  %arrayidx366 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 27
  %115 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx366, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len.1)
  %cmp368.not = icmp eq i8 %len.1, 1
  br i1 %cmp368.not, label %cond.end.cond.end374_crit_edge, label %cond.true370

cond.end.cond.end374_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end374

cond.true370:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx371 = getelementptr i8, ptr %value.4, i32 1
  %116 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx371, align 1
  br label %cond.end374

cond.end374:                                      ; preds = %cond.true370, %cond.end.cond.end374_crit_edge, %cond.end.thread
  %cond375 = phi i8 [ %117, %cond.true370 ], [ 0, %cond.end.cond.end374_crit_edge ], [ 0, %cond.end.thread ]
  %arrayidx380 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %118 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %cond375, ptr %arrayidx380, align 2
  br label %cleanup

cleanup:                                          ; preds = %cond.end374, %while.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %dccp_hdr_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %cond.end374 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %dccp_hdr_len.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_parse_options(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_timestamp() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dccp_encode_value_var(i64 noundef %value, ptr nocapture noundef writeonly %to, i8 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %len)
  %cmp = icmp ugt i8 %len, 5
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = lshr i64 %value, 40
  %conv2 = trunc i64 %and to i8
  %incdec.ptr = getelementptr i8, ptr %to, i32 1
  %0 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2, ptr %to, align 1
  br label %if.end11.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %len)
  %cmp4 = icmp eq i8 %len, 5
  br i1 %cmp4, label %if.end.if.end11.thread_crit_edge, label %if.end11

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end.if.end11.thread_crit_edge, %if.end.thread
  %to.addr.064 = phi ptr [ %incdec.ptr, %if.end.thread ], [ %to, %if.end.if.end11.thread_crit_edge ]
  %and7 = lshr i64 %value, 32
  %conv9 = trunc i64 %and7 to i8
  %incdec.ptr10 = getelementptr i8, ptr %to.addr.064, i32 1
  %1 = ptrtoint ptr %to.addr.064 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv9, ptr %to.addr.064, align 1
  br label %if.end20.thread

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len)
  %cmp13 = icmp ugt i8 %len, 3
  br i1 %cmp13, label %if.end11.if.end20.thread_crit_edge, label %if.end20

if.end11.if.end20.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %if.end11.if.end20.thread_crit_edge, %if.end11.thread
  %to.addr.167 = phi ptr [ %incdec.ptr10, %if.end11.thread ], [ %to, %if.end11.if.end20.thread_crit_edge ]
  %and16 = lshr i64 %value, 24
  %conv18 = trunc i64 %and16 to i8
  %incdec.ptr19 = getelementptr i8, ptr %to.addr.167, i32 1
  %2 = ptrtoint ptr %to.addr.167 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv18, ptr %to.addr.167, align 1
  br label %if.end29.thread

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len)
  %cmp22 = icmp eq i8 %len, 3
  br i1 %cmp22, label %if.end20.if.end29.thread_crit_edge, label %if.end29

if.end20.if.end29.thread_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.end20.if.end29.thread_crit_edge, %if.end20.thread
  %to.addr.270 = phi ptr [ %incdec.ptr19, %if.end20.thread ], [ %to, %if.end20.if.end29.thread_crit_edge ]
  %and25 = lshr i64 %value, 16
  %conv27 = trunc i64 %and25 to i8
  %incdec.ptr28 = getelementptr i8, ptr %to.addr.270, i32 1
  %3 = ptrtoint ptr %to.addr.270 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv27, ptr %to.addr.270, align 1
  br label %if.end38.thread

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %cmp31 = icmp ugt i8 %len, 1
  br i1 %cmp31, label %if.end29.if.end38.thread_crit_edge, label %if.end38

if.end29.if.end38.thread_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %if.end29.if.end38.thread_crit_edge, %if.end29.thread
  %to.addr.373 = phi ptr [ %incdec.ptr28, %if.end29.thread ], [ %to, %if.end29.if.end38.thread_crit_edge ]
  %and34 = lshr i64 %value, 8
  %conv36 = trunc i64 %and34 to i8
  %incdec.ptr37 = getelementptr i8, ptr %to.addr.373, i32 1
  %4 = ptrtoint ptr %to.addr.373 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv36, ptr %to.addr.373, align 1
  br label %if.then42

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp40.not = icmp eq i8 %len, 0
  br i1 %cmp40.not, label %if.end38.if.end46_crit_edge, label %if.end38.if.then42_crit_edge

if.end38.if.then42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then42:                                        ; preds = %if.end38.if.then42_crit_edge, %if.end38.thread
  %to.addr.476 = phi ptr [ %incdec.ptr37, %if.end38.thread ], [ %to, %if.end38.if.then42_crit_edge ]
  %conv44 = trunc i64 %value to i8
  %5 = ptrtoint ptr %to.addr.476 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv44, ptr %to.addr.476, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_insert_option(ptr noundef %skb, i8 noundef zeroext %option, ptr nocapture noundef readonly %value, i8 noundef zeroext %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %0 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dccpd_opt_len, align 2
  %conv = zext i16 %1 to i32
  %conv1 = zext i8 %len to i32
  %add = add nuw nsw i32 %conv, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 990, i32 %add)
  %cmp = icmp ugt i32 %add, 990
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add5 = add nuw nsw i32 %conv1, 2
  %2 = trunc i32 %add5 to i16
  %conv11 = add i16 %1, %2
  %3 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv11, ptr %dccpd_opt_len, align 2
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add5) #7
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %option, ptr %call, align 1
  %conv16 = trunc i32 %add5 to i8
  %incdec.ptr17 = getelementptr i8, ptr %call, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv16, ptr %incdec.ptr, align 1
  %6 = call ptr @memcpy(ptr %incdec.ptr17, ptr %value, i32 %conv1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_insert_option_mandatory(ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %0 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dccpd_opt_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 991, i16 %1)
  %cmp = icmp ugt i16 %1, 991
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw nsw i16 %1, 1
  %2 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %inc, ptr %dccpd_opt_len, align 2
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_insert_fn_opt(ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %feat, ptr noundef readonly %val, i8 noundef zeroext %len, i1 noundef zeroext %repeat_first) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %len)
  %cmp = icmp ugt i8 %len, -5
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %feat to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv5) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %cmp10 = icmp eq ptr %val, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp13 = icmp eq i8 %len, 0
  %spec.select = or i1 %cmp10, %cmp13
  %spec.select88 = select i1 %repeat_first, i8 4, i8 3
  %len.addr.086 = select i1 %spec.select, i8 0, i8 %len, !prof !79
  %0 = select i1 %spec.select, i8 3, i8 %spec.select88, !prof !79
  %conv21 = zext i8 %len.addr.086 to i32
  %add22 = add nuw i8 %0, %len.addr.086
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %1 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dccpd_opt_len, align 2
  %conv24 = zext i16 %2 to i32
  %conv25 = zext i8 %add22 to i32
  %add26 = add nuw nsw i32 %conv24, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %add26)
  %cmp27 = icmp ugt i32 %add26, 992
  br i1 %cmp27, label %do.body30, label %if.end43

do.body30:                                        ; preds = %if.end9
  %call31 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %do.end36

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %conv38 = zext i8 %feat to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %conv38) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end9
  %not.spec.select.demorgan = or i1 %cmp10, %cmp13
  %not.spec.select = xor i1 %not.spec.select.demorgan, true
  %repeat_first.addr.0.off085 = and i1 %not.spec.select, %repeat_first
  %conv50 = trunc i32 %add26 to i16
  %3 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv50, ptr %dccpd_opt_len, align 2
  %call52 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv25) #7
  %incdec.ptr = getelementptr i8, ptr %call52, i32 1
  %4 = ptrtoint ptr %call52 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %call52, align 1
  %incdec.ptr53 = getelementptr i8, ptr %call52, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add22, ptr %incdec.ptr, align 1
  %incdec.ptr54 = getelementptr i8, ptr %call52, i32 3
  %6 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %feat, ptr %incdec.ptr53, align 1
  br i1 %repeat_first.addr.0.off085, label %if.then56, label %if.end43.if.end58_crit_edge

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %incdec.ptr57 = getelementptr i8, ptr %call52, i32 4
  %9 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %incdec.ptr54, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end43.if.end58_crit_edge
  %to.0 = phi ptr [ %incdec.ptr57, %if.then56 ], [ %incdec.ptr54, %if.end43.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.addr.086)
  %tobool59.not = icmp eq i8 %len.addr.086, 0
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %if.then60

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %to.0, ptr %val, i32 %conv21)
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end58.cleanup_crit_edge, %do.end36, %do.body30.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.end36 ], [ -1, %do.body30.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_insert_options(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %0 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %dccpd_opt_len, align 2
  %dccps_send_ndp_count = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %1 = ptrtoint ptr %dccps_send_ndp_count to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load = load i64, ptr %dccps_send_ndp_count, align 8
  %2 = and i64 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dccps_ndp_count.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 20
  %3 = ptrtoint ptr %dccps_ndp_count.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %dccps_ndp_count.i, align 8
  %bf.lshr.i = lshr i64 %bf.load.i, 16
  %dccpd_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %dccpd_type.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %dccpd_type.i.i, align 8
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 4
  %trunc.i.i = trunc i8 %bf.lshr.i.i to i4
  %5 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.49)
  switch i4 %trunc.i.i, label %dccp_non_data_packet.exit.i [
    i4 3, label %land.lhs.true.if.then.i_crit_edge
    i4 6, label %land.lhs.true.if.then.i_crit_edge123
    i4 5, label %land.lhs.true.if.then.i_crit_edge124
    i4 7, label %land.lhs.true.if.then.i_crit_edge125
    i4 -8, label %land.lhs.true.if.then.i_crit_edge126
  ]

land.lhs.true.if.then.i_crit_edge126:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.if.then.i_crit_edge125:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.if.then.i_crit_edge124:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.if.then.i_crit_edge123:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

dccp_non_data_packet.exit.i:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %bf.lshr.i.i)
  %cmp18.i.not.i = icmp eq i8 %bf.lshr.i.i, 9
  br i1 %cmp18.i.not.i, label %dccp_non_data_packet.exit.i.if.then.i_crit_edge, label %if.else.i

dccp_non_data_packet.exit.i.if.then.i_crit_edge:  ; preds = %dccp_non_data_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %dccp_non_data_packet.exit.i.if.then.i_crit_edge, %land.lhs.true.if.then.i_crit_edge, %land.lhs.true.if.then.i_crit_edge123, %land.lhs.true.if.then.i_crit_edge124, %land.lhs.true.if.then.i_crit_edge125, %land.lhs.true.if.then.i_crit_edge126
  %6 = add i64 %bf.load.i, 65536
  br label %if.end.i

if.else.i:                                        ; preds = %dccp_non_data_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear8.i = and i64 %bf.load.i, 65535
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i64 [ %bf.clear8.i, %if.else.i ], [ %6, %if.then.i ]
  %7 = ptrtoint ptr %dccps_ndp_count.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %storemerge.i, ptr %dccps_ndp_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %bf.load.i)
  %cmp.not.i = icmp ult i64 %bf.load.i, 65536
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then10.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %bf.load.i)
  %cmp.i.i = icmp ult i64 %bf.load.i, 16777216
  br i1 %cmp.i.i, label %if.then10.i.dccp_ndp_len.exit.i_crit_edge, label %if.end.i.i, !prof !83

if.then10.i.dccp_ndp_len.exit.i_crit_edge:        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ndp_len.exit.i

if.end.i.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bf.load.i)
  %cmp2.i.i = icmp ult i64 %bf.load.i, 4294967296
  br i1 %cmp2.i.i, label %if.end.i.i.dccp_ndp_len.exit.i_crit_edge, label %cond.false.i.i, !prof !83

if.end.i.i.dccp_ndp_len.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_ndp_len.exit.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %bf.load.i)
  %cmp9.i.i = icmp ult i64 %bf.load.i, 281474976710656
  %phi.cast.i46.i = select i1 %cmp9.i.i, i8 4, i8 6
  br label %dccp_ndp_len.exit.i

dccp_ndp_len.exit.i:                              ; preds = %cond.false.i.i, %if.end.i.i.dccp_ndp_len.exit.i_crit_edge, %if.then10.i.dccp_ndp_len.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 1, %if.then10.i.dccp_ndp_len.exit.i_crit_edge ], [ %phi.cast.i46.i, %cond.false.i.i ], [ 2, %if.end.i.i.dccp_ndp_len.exit.i_crit_edge ]
  %narrow.i = add nuw nsw i8 %retval.0.i.i, 2
  %add.i = zext i8 %narrow.i to i32
  %8 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dccpd_opt_len, align 2
  %conv12.i = zext i16 %9 to i32
  %add13.i = add nuw nsw i32 %add.i, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %add13.i)
  %cmp14.i = icmp ugt i32 %add13.i, 992
  br i1 %cmp14.i, label %dccp_ndp_len.exit.i.cleanup_crit_edge, label %if.end17.i

dccp_ndp_len.exit.i.cleanup_crit_edge:            ; preds = %dccp_ndp_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %dccp_ndp_len.exit.i
  %conv23.i = trunc i32 %add13.i to i16
  %10 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv23.i, ptr %dccpd_opt_len, align 2
  %call24.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add.i) #7
  %incdec.ptr.i = getelementptr i8, ptr %call24.i, i32 1
  %11 = ptrtoint ptr %call24.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 37, ptr %call24.i, align 1
  %incdec.ptr26.i = getelementptr i8, ptr %call24.i, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %narrow.i, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %retval.0.i.i)
  %cmp.i47.i = icmp ugt i8 %retval.0.i.i, 5
  br i1 %cmp.i47.i, label %if.end.thread.i.i, label %if.end.i48.i

if.end.thread.i.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = lshr i64 %bf.load.i, 56
  %conv2.i.i = trunc i64 %and.i.i to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %call24.i, i32 3
  %13 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2.i.i, ptr %incdec.ptr26.i, align 1
  %and7.i.i = lshr i64 %bf.load.i, 48
  %conv9.i.i = trunc i64 %and7.i.i to i8
  %incdec.ptr10.i.i = getelementptr i8, ptr %call24.i, i32 4
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i.i, ptr %incdec.ptr.i.i, align 1
  br label %if.end20.thread.i.i

if.end.i48.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %retval.0.i.i)
  %cmp13.i.i = icmp ugt i8 %retval.0.i.i, 3
  br i1 %cmp13.i.i, label %if.end.i48.i.if.end20.thread.i.i_crit_edge, label %if.end20.i.i

if.end.i48.i.if.end20.thread.i.i_crit_edge:       ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.thread.i.i

if.end20.thread.i.i:                              ; preds = %if.end.i48.i.if.end20.thread.i.i_crit_edge, %if.end.thread.i.i
  %to.addr.167.i.i = phi ptr [ %incdec.ptr10.i.i, %if.end.thread.i.i ], [ %incdec.ptr26.i, %if.end.i48.i.if.end20.thread.i.i_crit_edge ]
  %and16.i.i = lshr i64 %bf.load.i, 40
  %conv18.i.i = trunc i64 %and16.i.i to i8
  %incdec.ptr19.i.i = getelementptr i8, ptr %to.addr.167.i.i, i32 1
  %15 = ptrtoint ptr %to.addr.167.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18.i.i, ptr %to.addr.167.i.i, align 1
  %and25.i.i = lshr i64 %bf.load.i, 32
  %conv27.i.i = trunc i64 %and25.i.i to i8
  %incdec.ptr28.i.i = getelementptr i8, ptr %to.addr.167.i.i, i32 2
  %16 = ptrtoint ptr %incdec.ptr19.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27.i.i, ptr %incdec.ptr19.i.i, align 1
  br label %if.end38.thread.i.i

if.end20.i.i:                                     ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i.i)
  %cmp31.i.i = icmp ugt i8 %retval.0.i.i, 1
  br i1 %cmp31.i.i, label %if.end20.i.i.if.end38.thread.i.i_crit_edge, label %if.end20.i.i.dccp_encode_value_var.exit.i_crit_edge

if.end20.i.i.dccp_encode_value_var.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dccp_encode_value_var.exit.i

if.end20.i.i.if.end38.thread.i.i_crit_edge:       ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.thread.i.i

if.end38.thread.i.i:                              ; preds = %if.end20.i.i.if.end38.thread.i.i_crit_edge, %if.end20.thread.i.i
  %to.addr.373.i.i = phi ptr [ %incdec.ptr28.i.i, %if.end20.thread.i.i ], [ %incdec.ptr26.i, %if.end20.i.i.if.end38.thread.i.i_crit_edge ]
  %and34.i.i = lshr i64 %bf.load.i, 24
  %conv36.i.i = trunc i64 %and34.i.i to i8
  %incdec.ptr37.i.i = getelementptr i8, ptr %to.addr.373.i.i, i32 1
  %17 = ptrtoint ptr %to.addr.373.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv36.i.i, ptr %to.addr.373.i.i, align 1
  br label %dccp_encode_value_var.exit.i

dccp_encode_value_var.exit.i:                     ; preds = %if.end38.thread.i.i, %if.end20.i.i.dccp_encode_value_var.exit.i_crit_edge
  %to.addr.476.i.i = phi ptr [ %incdec.ptr37.i.i, %if.end38.thread.i.i ], [ %incdec.ptr26.i, %if.end20.i.i.dccp_encode_value_var.exit.i_crit_edge ]
  %conv44.i.i = trunc i64 %bf.lshr.i to i8
  %18 = ptrtoint ptr %to.addr.476.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv44.i.i, ptr %to.addr.476.i.i, align 1
  br label %if.end

if.end:                                           ; preds = %dccp_encode_value_var.exit.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %19 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load5 = load i8, ptr %dccpd_type, align 8
  %bf.lshr6.mask = and i8 %bf.load5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr6.mask)
  %cmp.not = icmp eq i8 %bf.lshr6.mask, 32
  br i1 %cmp.not, label %if.end.if.end35_crit_edge, label %if.then9

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @dccp_feat_insert_opts(ptr noundef %sk, ptr noundef null, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %20 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load17 = load i8, ptr %dccpd_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load17)
  %cmp20 = icmp ult i8 %bf.load17, 16
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end13
  %call.i = tail call i32 @dccp_timestamp() #7
  %21 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dccpd_opt_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 986, i16 %22)
  %cmp.i.i75 = icmp ugt i16 %22, 986
  br i1 %cmp.i.i75, label %if.then22.cleanup_crit_edge, label %dccp_insert_option_timestamp.exit.thread

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dccp_insert_option_timestamp.exit.thread:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %conv11.i.i = add nuw nsw i16 %22, 6
  %23 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv11.i.i, ptr %dccpd_opt_len, align 2
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #7
  %incdec.ptr.i.i76 = getelementptr i8, ptr %call.i.i, i32 1
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 41, ptr %call.i.i, align 1
  %incdec.ptr17.i.i = getelementptr i8, ptr %call.i.i, i32 2
  %25 = ptrtoint ptr %incdec.ptr.i.i76 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %incdec.ptr.i.i76, align 1
  %26 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %call.i, ptr %incdec.ptr17.i.i, align 1
  br label %if.end35

if.else:                                          ; preds = %if.end13
  %dccps_hc_rx_ackvec.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %27 = ptrtoint ptr %dccps_hc_rx_ackvec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dccps_hc_rx_ackvec.i, align 4
  %cmp.not.i79 = icmp eq ptr %28, null
  br i1 %cmp.not.i79, label %if.else.if.end35_crit_edge, label %land.rhs.i

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.i:                                       ; preds = %if.else
  %av_overflow.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %av_overflow.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i80 = load i8, ptr %av_overflow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i80)
  %cmp.i.i81 = icmp sgt i8 %bf.load.i.i80, -1
  br i1 %cmp.i.i81, label %dccp_ackvec_pending.exit, label %land.rhs.i.land.lhs.true29_crit_edge

land.rhs.i.land.lhs.true29_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29

dccp_ackvec_pending.exit:                         ; preds = %land.rhs.i
  %av_buf_head.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %av_buf_head.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %av_buf_head.i.i, align 2
  %av_buf_tail.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %av_buf_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %av_buf_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp4.i.i.not = icmp eq i16 %31, %33
  br i1 %cmp4.i.i.not, label %dccp_ackvec_pending.exit.if.end35_crit_edge, label %dccp_ackvec_pending.exit.land.lhs.true29_crit_edge

dccp_ackvec_pending.exit.land.lhs.true29_crit_edge: ; preds = %dccp_ackvec_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29

dccp_ackvec_pending.exit.if.end35_crit_edge:      ; preds = %dccp_ackvec_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true29:                                  ; preds = %dccp_ackvec_pending.exit.land.lhs.true29_crit_edge, %land.rhs.i.land.lhs.true29_crit_edge
  %call1.i = tail call zeroext i16 @dccp_ackvec_buflen(ptr noundef nonnull %28) #7
  %conv.i = zext i16 %call1.i to i32
  %sub.i = add nuw nsw i32 %conv.i, 252
  %div.i = udiv i32 %sub.i, 253
  %conv4.i = and i32 %div.i, 255
  %conv4.tr.i = trunc i32 %conv4.i to i16
  %34 = shl nuw nsw i16 %conv4.tr.i, 1
  %conv6.i = add i16 %34, %call1.i
  %35 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dccpd_opt_len, align 2
  %conv7.i = zext i16 %36 to i32
  %conv8.i = zext i16 %conv6.i to i32
  %add9.i = add nuw nsw i32 %conv8.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %add9.i)
  %cmp.i = icmp ugt i32 %add9.i, 992
  br i1 %cmp.i, label %do.body.i, label %if.end20.i

do.body.i:                                        ; preds = %land.lhs.true29
  %call11.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i84 = load i8, ptr %dccpd_type, align 8
  %bf.lshr.i85 = lshr i8 %bf.load.i84, 4
  %conv15.i = zext i8 %bf.lshr.i85 to i32
  %call16.i = tail call ptr @dccp_packet_name(i32 noundef %conv15.i) #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv8.i, ptr noundef %call16.i) #10
  br label %cleanup

if.end20.i:                                       ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv6.i)
  %cmp22.i = icmp ugt i16 %conv6.i, 16
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end20.i.if.end51.i_crit_edge

if.end20.i.if.end51.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %len28.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len28.i, align 4
  %add29.i = add i32 %39, %add9.i
  %dccps_mss_cache.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %40 = ptrtoint ptr %dccps_mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dccps_mss_cache.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %41)
  %cmp30.i = icmp ugt i32 %add29.i, %41
  br i1 %cmp30.i, label %do.body33.i, label %land.lhs.true.i.if.end51.i_crit_edge

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

do.body33.i:                                      ; preds = %land.lhs.true.i
  %call34.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.do.end49.i_crit_edge, label %do.end39.i

do.body33.i.do.end49.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49.i

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %len28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len28.i, align 4
  %44 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dccpd_opt_len, align 2
  %conv44.i = zext i16 %45 to i32
  %46 = ptrtoint ptr %dccps_mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dccps_mss_cache.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv8.i, i32 noundef %43, i32 noundef %conv44.i, i32 noundef %47) #10
  br label %do.end49.i

do.end49.i:                                       ; preds = %do.end39.i, %do.body33.i.do.end49.i_crit_edge
  %dccps_sync_scheduled.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %48 = ptrtoint ptr %dccps_sync_scheduled.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load50.i = load i8, ptr %dccps_sync_scheduled.i, align 8
  %bf.set.i = or i8 %bf.load50.i, 4
  store i8 %bf.set.i, ptr %dccps_sync_scheduled.i, align 8
  br label %if.end35

if.end51.i:                                       ; preds = %land.lhs.true.i.if.end51.i_crit_edge, %if.end20.i.if.end51.i_crit_edge
  %add55.i = add i16 %conv6.i, %36
  %49 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %add55.i, ptr %dccpd_opt_len, align 2
  %call58.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv8.i) #7
  %add.ptr62.i = getelementptr i8, ptr %28, i32 506
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp65179.not.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp65179.not.i, label %if.end51.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end51.i.for.end.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end51.i
  %50 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr62.i, align 2
  %conv59.i = zext i16 %51 to i32
  %add.ptr.i = getelementptr i8, ptr %28, i32 %conv59.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr62.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end104.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end104.i.for.body.i_crit_edge ]
  %to.0184.i = phi ptr [ %call58.i, %for.body.lr.ph.i ], [ %add.ptr106.i, %if.end104.i.for.body.i_crit_edge ]
  %from.0183.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr105.i, %if.end104.i.for.body.i_crit_edge ]
  %nonce.0182.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %xor178.i, %if.end104.i.for.body.i_crit_edge ]
  %len.0180.i = phi i16 [ %call1.i, %for.body.lr.ph.i ], [ %conv109.i, %if.end104.i.for.body.i_crit_edge ]
  %52 = tail call i16 @llvm.umin.i16(i16 %len.0180.i, i16 253) #7
  %53 = zext i16 %52 to i32
  %arrayidx73.i = getelementptr %struct.dccp_ackvec, ptr %28, i32 0, i32 5, i32 %indvars.iv.i
  %54 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx73.i, align 1, !range !78
  %xor178.i = xor i8 %55, %nonce.0182.i
  %56 = or i8 %55, 38
  %incdec.ptr.i86 = getelementptr i8, ptr %to.0184.i, i32 1
  %57 = ptrtoint ptr %to.0184.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %to.0184.i, align 1
  %58 = trunc i16 %52 to i8
  %conv86.i = add nuw i8 %58, 2
  %incdec.ptr87.i = getelementptr i8, ptr %to.0184.i, i32 2
  %59 = ptrtoint ptr %incdec.ptr.i86 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv86.i, ptr %incdec.ptr.i86, align 1
  %add.ptr88.i = getelementptr i8, ptr %from.0183.i, i32 %53
  %cmp89.i = icmp ugt ptr %add.ptr88.i, %add.ptr62.i
  br i1 %cmp89.i, label %if.then91.i, label %for.body.i.if.end104.i_crit_edge

for.body.i.if.end104.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

if.then91.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.rhs.cast.i = ptrtoint ptr %from.0183.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv93.i = and i32 %sub.ptr.sub.i, 65535
  %60 = call ptr @memcpy(ptr %incdec.ptr87.i, ptr %from.0183.i, i32 %conv93.i)
  %add.ptr95.i = getelementptr i8, ptr %incdec.ptr87.i, i32 %conv93.i
  %61 = trunc i32 %sub.ptr.sub.i to i16
  %conv99.i = sub i16 %len.0180.i, %61
  %sub101.i = sub nsw i32 %53, %conv93.i
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then91.i, %for.body.i.if.end104.i_crit_edge
  %len.1.i = phi i16 [ %conv99.i, %if.then91.i ], [ %len.0180.i, %for.body.i.if.end104.i_crit_edge ]
  %from.1.i = phi ptr [ %28, %if.then91.i ], [ %from.0183.i, %for.body.i.if.end104.i_crit_edge ]
  %to.1.i = phi ptr [ %add.ptr95.i, %if.then91.i ], [ %incdec.ptr87.i, %for.body.i.if.end104.i_crit_edge ]
  %copylen.0.i = phi i32 [ %sub101.i, %if.then91.i ], [ %53, %for.body.i.if.end104.i_crit_edge ]
  %62 = call ptr @memcpy(ptr %to.1.i, ptr %from.1.i, i32 %copylen.0.i)
  %add.ptr105.i = getelementptr i8, ptr %from.1.i, i32 %copylen.0.i
  %add.ptr106.i = getelementptr i8, ptr %to.1.i, i32 %copylen.0.i
  %63 = trunc i32 %copylen.0.i to i16
  %conv109.i = sub i16 %len.1.i, %63
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv4.i
  br i1 %exitcond.not.i, label %if.end104.i.for.end.i_crit_edge, label %if.end104.i.for.body.i_crit_edge

if.end104.i.for.body.i_crit_edge:                 ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end104.i.for.end.i_crit_edge:                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end104.i.for.end.i_crit_edge, %if.end51.i.for.end.i_crit_edge
  %nonce.0.lcssa.i = phi i8 [ 0, %if.end51.i.for.end.i_crit_edge ], [ %xor178.i, %if.end104.i.for.end.i_crit_edge ]
  %dccpd_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %64 = ptrtoint ptr %dccpd_seq.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dccpd_seq.i, align 8
  %call110.i = tail call i32 @dccp_ackvec_update_records(ptr noundef nonnull %28, i64 noundef %65, i8 noundef zeroext %nonce.0.lcssa.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %for.end.i.if.end35_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.if.end35_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %for.end.i.if.end35_crit_edge, %do.end49.i, %dccp_ackvec_pending.exit.if.end35_crit_edge, %if.else.if.end35_crit_edge, %dccp_insert_option_timestamp.exit.thread, %if.end.if.end35_crit_edge
  %dccps_hc_rx_insert_options = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %66 = ptrtoint ptr %dccps_hc_rx_insert_options to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load36 = load i8, ptr %dccps_hc_rx_insert_options, align 8
  %67 = and i8 %bf.load36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool39.not = icmp eq i8 %67, 0
  br i1 %tobool39.not, label %if.end35.if.end48_crit_edge, label %if.then40

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then40:                                        ; preds = %if.end35
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %68 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dccps_hc_rx_ccid, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %ccid_hc_rx_insert_options.i = getelementptr inbounds %struct.ccid_operations, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %ccid_hc_rx_insert_options.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ccid_hc_rx_insert_options.i, align 4
  %cmp.not.i87 = icmp eq ptr %73, null
  br i1 %cmp.not.i87, label %if.then40.if.end44_crit_edge, label %ccid_hc_rx_insert_options.exit

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

ccid_hc_rx_insert_options.exit:                   ; preds = %if.then40
  %call.i88 = tail call i32 %73(ptr noundef %sk, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool42.not = icmp eq i32 %call.i88, 0
  br i1 %tobool42.not, label %ccid_hc_rx_insert_options.exit.if.end44_crit_edge, label %ccid_hc_rx_insert_options.exit.cleanup_crit_edge

ccid_hc_rx_insert_options.exit.cleanup_crit_edge: ; preds = %ccid_hc_rx_insert_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ccid_hc_rx_insert_options.exit.if.end44_crit_edge: ; preds = %ccid_hc_rx_insert_options.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %ccid_hc_rx_insert_options.exit.if.end44_crit_edge, %if.then40.if.end44_crit_edge
  %74 = ptrtoint ptr %dccps_hc_rx_insert_options to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load46 = load i8, ptr %dccps_hc_rx_insert_options, align 8
  %bf.clear47 = and i8 %bf.load46, -33
  store i8 %bf.clear47, ptr %dccps_hc_rx_insert_options, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end35.if.end48_crit_edge
  %dccps_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 14
  %75 = ptrtoint ptr %dccps_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dccps_timestamp_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp49.not = icmp eq i32 %76, 0
  br i1 %cmp49.not, label %if.end48.if.end55_crit_edge, label %land.lhs.true51

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true51:                                  ; preds = %if.end48
  %call2.i = tail call i32 @dccp_timestamp() #7
  %dccps_timestamp_time.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 15
  %77 = ptrtoint ptr %dccps_timestamp_time.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dccps_timestamp_time.i, align 8
  %79 = ptrtoint ptr %dccps_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dccps_timestamp_echo, align 4
  store i32 0, ptr %dccps_timestamp_echo, align 4
  %elapsed_time.0.i = sub i32 %call2.i, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %78)
  %cmp.i.i92 = icmp eq i32 %call2.i, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %elapsed_time.0.i)
  %cmp1.i.i = icmp ult i32 %elapsed_time.0.i, 65536
  %cond.i.i = select i1 %cmp1.i.i, i32 2, i32 4
  %cond2.i.i = select i1 %cmp.i.i92, i32 0, i32 %cond.i.i
  %add.i93 = add nuw nsw i32 %cond2.i.i, 6
  %81 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %dccpd_opt_len, align 2
  %conv.i95 = zext i16 %82 to i32
  %add6.i = add nuw nsw i32 %add.i93, %conv.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %add6.i)
  %cmp7.i = icmp ugt i32 %add6.i, 992
  br i1 %cmp7.i, label %land.lhs.true51.cleanup_crit_edge, label %if.end10.i

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %land.lhs.true51
  %conv16.i = trunc i32 %add6.i to i16
  %83 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv16.i, ptr %dccpd_opt_len, align 2
  %call17.i97 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add.i93) #7
  %incdec.ptr.i98 = getelementptr i8, ptr %call17.i97, i32 1
  %84 = ptrtoint ptr %call17.i97 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 42, ptr %call17.i97, align 1
  %conv18.i = trunc i32 %add.i93 to i8
  %incdec.ptr19.i = getelementptr i8, ptr %call17.i97, i32 2
  %85 = ptrtoint ptr %incdec.ptr.i98 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv18.i, ptr %incdec.ptr.i98, align 1
  %86 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %80, ptr %incdec.ptr19.i, align 1
  %add.ptr.i99 = getelementptr i8, ptr %call17.i97, i32 6
  %87 = zext i32 %cond2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %cond2.i.i, label %if.end10.i.if.end55_crit_edge [
    i32 2, label %if.then22.i
    i32 4, label %if.then27.i
  ]

if.end10.i.if.end55_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then22.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i100 = trunc i32 %elapsed_time.0.i to i16
  %88 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %conv23.i100, ptr %add.ptr.i99, align 1
  br label %if.end55

if.then27.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %elapsed_time.0.i, ptr %add.ptr.i99, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then27.i, %if.then22.i, %if.end10.i.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %90 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %dccpd_opt_len, align 2
  %92 = and i16 %91, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp.not.i103 = icmp eq i16 %92, 0
  br i1 %cmp.not.i103, label %if.end55.cleanup_crit_edge, label %if.then.i108

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i108:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i104 = sub nuw nsw i16 4, %92
  %sub.i105 = zext i16 %narrow.i104 to i32
  %call.i106 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.i105) #7
  %93 = call ptr @memset(ptr %call.i106, i32 0, i32 %sub.i105)
  %94 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %dccpd_opt_len, align 2
  %add.i107 = add i16 %95, %narrow.i104
  store i16 %add.i107, ptr %dccpd_opt_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then.i108, %if.end55.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %ccid_hc_rx_insert_options.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %dccp_ndp_len.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then9.cleanup_crit_edge ], [ -1, %ccid_hc_rx_insert_options.exit.cleanup_crit_edge ], [ -1, %dccp_ndp_len.exit.i.cleanup_crit_edge ], [ -1, %if.then22.cleanup_crit_edge ], [ -1, %land.lhs.true51.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %if.then.i108 ], [ -1, %do.end.i ], [ -1, %do.body.i.cleanup_crit_edge ], [ -1, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_insert_opts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_insert_options_rsk(ptr noundef %dreq, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %0 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %dccpd_opt_len, align 2
  %call = tail call i32 @dccp_feat_insert_opts(ptr noundef null, ptr noundef %dreq, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dccp_timestamp() #7
  %1 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dccpd_opt_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 986, i16 %2)
  %cmp.i.i = icmp ugt i16 %2, 986
  br i1 %cmp.i.i, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  %conv11.i.i = add nuw nsw i16 %2, 6
  %3 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv11.i.i, ptr %dccpd_opt_len, align 2
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #7
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 41, ptr %call.i.i, align 1
  %incdec.ptr17.i.i = getelementptr i8, ptr %call.i.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %incdec.ptr.i.i, align 1
  %6 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %call.i, ptr %incdec.ptr17.i.i, align 1
  %dreq_timestamp_echo = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 8
  %7 = ptrtoint ptr %dreq_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dreq_timestamp_echo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %cmp.not.i = icmp eq ptr %dreq, null
  %call2.i = tail call i32 @dccp_timestamp() #7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dreq_timestamp_time.i = getelementptr inbounds %struct.dccp_request_sock, ptr %dreq, i32 0, i32 9
  %9 = ptrtoint ptr %dreq_timestamp_time.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dreq_timestamp_time.i, align 4
  %11 = ptrtoint ptr %dreq_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dreq_timestamp_echo, align 8
  store i32 0, ptr %dreq_timestamp_echo, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 1680)
  %13 = load i32, ptr inttoptr (i32 1680 to ptr), align 16
  call void @__asan_load4_noabort(i32 1676)
  %14 = load i32, ptr inttoptr (i32 1676 to ptr), align 4
  store i32 0, ptr inttoptr (i32 1676 to ptr), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.pn.i = phi i32 [ %10, %if.then.i ], [ %13, %if.else.i ]
  %tstamp_echo.0.i = phi i32 [ %12, %if.then.i ], [ %14, %if.else.i ]
  %elapsed_time.0.i = sub i32 %call2.i, %.pn.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %.pn.i)
  %cmp.i.i15 = icmp eq i32 %call2.i, %.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %elapsed_time.0.i)
  %cmp1.i.i = icmp ult i32 %elapsed_time.0.i, 65536
  %cond.i.i = select i1 %cmp1.i.i, i32 2, i32 4
  %cond2.i.i = select i1 %cmp.i.i15, i32 0, i32 %cond.i.i
  %add.i = add nuw nsw i32 %cond2.i.i, 6
  %15 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dccpd_opt_len, align 2
  %conv.i = zext i16 %16 to i32
  %add6.i = add nuw nsw i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %add6.i)
  %cmp7.i = icmp ugt i32 %add6.i, 992
  br i1 %cmp7.i, label %if.end.i.return_crit_edge, label %if.end10.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10.i:                                       ; preds = %if.end.i
  %conv16.i = trunc i32 %add6.i to i16
  %17 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv16.i, ptr %dccpd_opt_len, align 2
  %call17.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add.i) #7
  %incdec.ptr.i = getelementptr i8, ptr %call17.i, i32 1
  %18 = ptrtoint ptr %call17.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 42, ptr %call17.i, align 1
  %conv18.i = trunc i32 %add.i to i8
  %incdec.ptr19.i = getelementptr i8, ptr %call17.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18.i, ptr %incdec.ptr.i, align 1
  %20 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %tstamp_echo.0.i, ptr %incdec.ptr19.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call17.i, i32 6
  %21 = zext i32 %cond2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cond2.i.i, label %if.end10.i.if.end8_crit_edge [
    i32 2, label %if.then22.i
    i32 4, label %if.then27.i
  ]

if.end10.i.if.end8_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then22.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i = trunc i32 %elapsed_time.0.i to i16
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %conv23.i, ptr %add.ptr.i, align 1
  br label %if.end8

if.then27.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %elapsed_time.0.i, ptr %add.ptr.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then27.i, %if.then22.i, %if.end10.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %24 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dccpd_opt_len, align 2
  %26 = and i16 %25, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i17 = icmp eq i16 %26, 0
  br i1 %cmp.not.i17, label %if.end8.return_crit_edge, label %if.then.i20

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i20:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i = sub nuw nsw i16 4, %26
  %sub.i = zext i16 %narrow.i to i32
  %call.i18 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.i) #7
  %27 = call ptr @memset(ptr %call.i18, i32 0, i32 %sub.i)
  %28 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dccpd_opt_len, align 2
  %add.i19 = add i16 %29, %narrow.i
  store i16 %add.i19, ptr %dccpd_opt_len, align 2
  br label %return

return:                                           ; preds = %if.then.i20, %if.end8.return_crit_edge, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ -1, %if.end.i.return_crit_edge ], [ 0, %if.end8.return_crit_edge ], [ 0, %if.then.i20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dccp_ackvec_buflen(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_packet_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_ackvec_update_records(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/options.c", i32 117, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dccp_parse_options._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dccp_parse_options._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dccp/options.c", i32 140, i32 5}
!8 = !{ptr @dccp_parse_options._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dccp_parse_options._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dccp/options.c", i32 152, i32 4}
!12 = !{ptr @dccp_parse_options._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dccp_parse_options._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dccp/options.c", i32 166, i32 4}
!16 = !{ptr @dccp_parse_options._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dccp_parse_options._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/dccp/options.c", i32 176, i32 5}
!20 = !{ptr @dccp_parse_options._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dccp_parse_options._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/dccp/options.c", i32 188, i32 4}
!24 = !{ptr @dccp_parse_options._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dccp_parse_options._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/dccp/options.c", i32 211, i32 4}
!28 = !{ptr @dccp_parse_options._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dccp_parse_options._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/dccp/options.c", i32 235, i32 4}
!32 = !{ptr @dccp_parse_options._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dccp_parse_options._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/dccp/options.c", i32 256, i32 2}
!36 = !{ptr @dccp_parse_options._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dccp_parse_options._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_dccp_parse_options, !39, !"__ksymtab_dccp_parse_options", i1 false, i1 false}
!39 = !{!"../net/dccp/options.c", i32 264, i32 1}
!40 = !{ptr @__ksymtab_dccp_insert_option, !41, !"__ksymtab_dccp_insert_option", i1 false, i1 false}
!41 = !{!"../net/dccp/options.c", i32 307, i32 1}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/dccp/options.c", i32 511, i32 3}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dccp_insert_fn_opt._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dccp_insert_fn_opt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/dccp/options.c", i32 520, i32 3}
!49 = !{ptr @dccp_insert_fn_opt._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dccp_insert_fn_opt._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/dccp.h", i32 316, i32 35}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/dccp.h", i32 317, i32 34}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/dccp.h", i32 318, i32 34}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/dccp.h", i32 319, i32 34}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/dccp/options.c", i32 410, i32 3}
!61 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dccp_insert_option_ackvec._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dccp_insert_option_ackvec._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/dccp/options.c", i32 421, i32 3}
!66 = !{ptr @dccp_insert_option_ackvec._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dccp_insert_option_ackvec._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 686648, i64 686709}
!81 = !{i64 689380}
!82 = !{i64 689665}
!83 = !{!"branch_weights", i32 2000, i32 1}
