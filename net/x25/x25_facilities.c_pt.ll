; ModuleID = '/llk/IR_all_yes/net/x25/x25_facilities.c_pt.bc'
source_filename = "../net/x25/x25_facilities.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.x25_dte_facilities = type { i16, i16, i16, i8, i8, i8, i8, [20 x i8], [20 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.x25_facilities = type { i32, i32, i32, i32, i32, i32 }
%struct.x25_sock = type { %struct.sock, %struct.x25_address, %struct.x25_address, ptr, i32, i32, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i16, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.x25_causediag, %struct.x25_facilities, %struct.x25_dte_facilities, %struct.x25_calluserdata, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.x25_address = type { [16 x i8] }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.x25_causediag = type { i8, i8 }
%struct.x25_calluserdata = type { i32, [128 x i8] }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }

@x25_parse_facilities.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x25\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x25_parse_facilities\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/x25/x25_facilities.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unknown facility %02X, value %02X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"X25: unknown facility %02X, value %02X\0A\00", [56 x i8] zeroinitializer }, align 32
@x25_parse_facilities.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unknown facility %02X, values %02X, %02X\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"X25: unknown facility %02X, values %02X, %02X\0A\00", [49 x i8] zeroinitializer }, align 32
@x25_parse_facilities.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unknown facility %02X, values %02X, %02X, %02X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"X25: unknown facility %02X, values %02X, %02X, %02X\0A\00", [43 x i8] zeroinitializer }, align 32
@x25_parse_facilities.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unknown facility %02X,length %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"X25: unknown facility %02X,length %d\0A\00", [58 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017X.25: rejecting reverse charging request\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"x25_negotiate_facilities\00", [39 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr = internal global ptr @x25_negotiate_facilities._entry, section ".printk_index", align 4
@x25_negotiate_facilities._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017X.25: inbound throughput negotiated\0A\00", [57 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.15 = internal global ptr @x25_negotiate_facilities._entry.13, section ".printk_index", align 4
@x25_negotiate_facilities._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017X.25: outbound throughput negotiated\0A\00", [56 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.18 = internal global ptr @x25_negotiate_facilities._entry.16, section ".printk_index", align 4
@x25_negotiate_facilities._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017X.25: packet size inwards negotiated down\0A\00", [51 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.21 = internal global ptr @x25_negotiate_facilities._entry.19, section ".printk_index", align 4
@x25_negotiate_facilities._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017X.25: packet size outwards negotiated down\0A\00", [50 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.24 = internal global ptr @x25_negotiate_facilities._entry.22, section ".printk_index", align 4
@x25_negotiate_facilities._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017X.25: window size inwards negotiated down\0A\00", [51 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.27 = internal global ptr @x25_negotiate_facilities._entry.25, section ".printk_index", align 4
@x25_negotiate_facilities._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017X.25: window size outwards negotiated down\0A\00", [50 x i8] zeroinitializer }, align 32
@x25_negotiate_facilities._entry_ptr.30 = internal global ptr @x25_negotiate_facilities._entry.28, section ".printk_index", align 4
@x25_limit_facilities.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x25_limit_facilities\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"incoming winsize limited to 7\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"X25: incoming winsize limited to 7\0A\00", [60 x i8] zeroinitializer }, align 32
@x25_limit_facilities.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"outgoing winsize limited to 7\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"X25: outgoing winsize limited to 7\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 66, i64 67]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 201, i64 203]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 109, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 132, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 143, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 172, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 285, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 297, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 301, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 309, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 313, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 320, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 324, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 342, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [28 x i8] c"../net/x25/x25_facilities.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 347, i32 4 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @x25_negotiate_facilities._entry, ptr @x25_negotiate_facilities._entry.13, ptr @x25_negotiate_facilities._entry.16, ptr @x25_negotiate_facilities._entry.19, ptr @x25_negotiate_facilities._entry.22, ptr @x25_negotiate_facilities._entry.25, ptr @x25_negotiate_facilities._entry.28, ptr @x25_negotiate_facilities._entry_ptr, ptr @x25_negotiate_facilities._entry_ptr.15, ptr @x25_negotiate_facilities._entry_ptr.18, ptr @x25_negotiate_facilities._entry_ptr.21, ptr @x25_negotiate_facilities._entry_ptr.24, ptr @x25_negotiate_facilities._entry_ptr.27, ptr @x25_negotiate_facilities._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_negotiate_facilities._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_parse_facilities(ptr noundef %skb, ptr nocapture noundef writeonly %facilities, ptr nocapture noundef writeonly %dte_facs, ptr nocapture noundef %vc_fac_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vc_fac_mask, align 4
  %calling_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 5
  %called_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 6
  %called_ae = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 8
  %calling_ae = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = call ptr @memset(ptr %calling_len, i32 0, i32 42)
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp eq i32 %5, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !66

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i = icmp eq i32 %3, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !66

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv, 1
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i336 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i336, i32 %conv)
  %cmp.not.i337.not = icmp ugt i32 %sub.i.i336, %conv
  br i1 %cmp.not.i337.not, label %if.end.if.end4_crit_edge, label %if.end.i339, !prof !67

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i339:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp3.i338.not = icmp ugt i32 %11, %conv
  br i1 %cmp3.i338.not, label %pskb_may_pull.exit345, label %if.end.i339.cleanup_crit_edge, !prof !67

if.end.i339.cleanup_crit_edge:                    ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit345:                            ; preds = %if.end.i339
  %sub.i340 = sub i32 %add, %sub.i.i336
  %call13.i341 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i340) #5
  %cmp14.i342.not = icmp eq ptr %call13.i341, null
  br i1 %cmp14.i342.not, label %pskb_may_pull.exit345.cleanup_crit_edge, label %pskb_may_pull.exit345.if.end4_crit_edge

pskb_may_pull.exit345.if.end4_crit_edge:          ; preds = %pskb_may_pull.exit345
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

pskb_may_pull.exit345.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit345
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %pskb_may_pull.exit345.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not358 = icmp eq i8 %9, 0
  br i1 %cmp.not358, label %if.end4.while.end_crit_edge, label %while.body.lr.ph

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %winsize_out = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 1
  %pacsize_in = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 2
  %pacsize_out = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 3
  %reverse33 = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 5
  %throughput = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog237.while.body_crit_edge, %while.body.lr.ph
  %p.0360 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr236, %sw.epilog237.while.body_crit_edge ]
  %len.0359 = phi i32 [ %conv, %while.body.lr.ph ], [ %len.1, %sw.epilog237.while.body_crit_edge ]
  %16 = ptrtoint ptr %p.0360 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p.0360, align 1
  %18 = lshr i8 %17, 6
  %19 = zext i8 %18 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %while.body.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb70
    i32 2, label %sw.bb114
    i32 3, label %sw.bb145
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.0359)
  %cmp8 = icmp ult i32 %len.0359, 2
  br i1 %cmp8, label %sw.bb.cleanup_crit_edge, label %if.end11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %21 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %17, label %do.body [
    i8 1, label %sw.bb13
    i8 2, label %if.end11.sw.bb56_crit_edge
    i8 0, label %if.end11.sw.epilog237_crit_edge
  ]

if.end11.sw.epilog237_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog237

if.end11.sw.bb56_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb56

sw.bb13:                                          ; preds = %if.end11
  %arrayidx14 = getelementptr i8, ptr %p.0360, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %23 to i32
  %and16 = and i32 %conv15, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 129
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %reverse33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 129, ptr %reverse33, align 4
  %25 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vc_fac_mask, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

if.end23:                                         ; preds = %sw.bb13
  %and26 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %reverse33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %reverse33, align 4
  %28 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_fac_mask, align 4
  %or34 = or i32 %29, 1
  store i32 %or34, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

if.end35:                                         ; preds = %if.end23
  %and38 = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39.not = icmp eq i32 %and38, 0
  br i1 %cmp39.not, label %if.end47, label %if.then41

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %reverse33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %reverse33, align 4
  %31 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vc_fac_mask, align 4
  %or46 = or i32 %32, 1
  store i32 %or46, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50 = icmp eq i8 %23, 0
  br i1 %cmp50, label %if.then52, label %if.end47.sw.bb56_crit_edge

if.end47.sw.bb56_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %reverse33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reverse33, align 4
  %34 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_fac_mask, align 4
  %or54 = or i32 %35, 1
  store i32 %or54, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

sw.bb56:                                          ; preds = %if.end47.sw.bb56_crit_edge, %if.end11.sw.bb56_crit_edge
  %arrayidx57 = getelementptr i8, ptr %p.0360, i32 1
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %37 to i32
  %38 = ptrtoint ptr %throughput to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv58, ptr %throughput, align 4
  %39 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vc_fac_mask, align 4
  %or59 = or i32 %40, 2
  store i32 %or59, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_parse_facilities.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_parse_facilities, %if.then63)) #5
          to label %sw.epilog237 [label %if.then63], !srcloc !68

if.then63:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %p.0360 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %p.0360, align 1
  %conv65 = zext i8 %42 to i32
  %arrayidx66 = getelementptr i8, ptr %p.0360, i32 1
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_parse_facilities.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, i32 noundef %conv65, i32 noundef %conv67) #5
  br label %sw.epilog237

sw.bb70:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.0359)
  %cmp71 = icmp ult i32 %len.0359, 3
  br i1 %cmp71, label %sw.bb70.cleanup_crit_edge, label %if.end74

sw.bb70.cleanup_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end74:                                         ; preds = %sw.bb70
  %45 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %17, label %do.body89 [
    i8 66, label %sw.bb76
    i8 67, label %sw.bb82
  ]

sw.bb76:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx77 = getelementptr i8, ptr %p.0360, i32 1
  %46 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %47 to i32
  %48 = ptrtoint ptr %pacsize_in to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv78, ptr %pacsize_in, align 4
  %arrayidx79 = getelementptr i8, ptr %p.0360, i32 2
  %49 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %50 to i32
  %51 = ptrtoint ptr %pacsize_out to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv80, ptr %pacsize_out, align 4
  %52 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vc_fac_mask, align 4
  %or81 = or i32 %53, 4
  store i32 %or81, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

sw.bb82:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx83 = getelementptr i8, ptr %p.0360, i32 1
  %54 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %55 to i32
  %56 = ptrtoint ptr %facilities to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv84, ptr %facilities, align 4
  %arrayidx85 = getelementptr i8, ptr %p.0360, i32 2
  %57 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %58 to i32
  %59 = ptrtoint ptr %winsize_out to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv86, ptr %winsize_out, align 4
  %60 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vc_fac_mask, align 4
  %or87 = or i32 %61, 8
  store i32 %or87, ptr %vc_fac_mask, align 4
  br label %sw.epilog237

do.body89:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_parse_facilities.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_parse_facilities, %if.then101)) #5
          to label %sw.epilog237 [label %if.then101], !srcloc !68

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %p.0360 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %p.0360, align 1
  %conv103 = zext i8 %63 to i32
  %arrayidx104 = getelementptr i8, ptr %p.0360, i32 1
  %64 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %65 to i32
  %arrayidx106 = getelementptr i8, ptr %p.0360, i32 2
  %66 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_parse_facilities.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.6, i32 noundef %conv103, i32 noundef %conv105, i32 noundef %conv107) #5
  br label %sw.epilog237

sw.bb114:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.0359)
  %cmp115 = icmp ult i32 %len.0359, 4
  br i1 %cmp115, label %sw.bb114.cleanup_crit_edge, label %do.body119

sw.bb114.cleanup_crit_edge:                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body119:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_parse_facilities.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_parse_facilities, %if.then131)) #5
          to label %sw.epilog237 [label %if.then131], !srcloc !68

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %p.0360 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %p.0360, align 1
  %conv133 = zext i8 %69 to i32
  %arrayidx134 = getelementptr i8, ptr %p.0360, i32 1
  %70 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %71 to i32
  %arrayidx136 = getelementptr i8, ptr %p.0360, i32 2
  %72 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %73 to i32
  %arrayidx138 = getelementptr i8, ptr %p.0360, i32 3
  %74 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_parse_facilities.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.8, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %conv137, i32 noundef %conv139) #5
  br label %sw.epilog237

sw.bb145:                                         ; preds = %while.body
  %arrayidx146 = getelementptr i8, ptr %p.0360, i32 1
  %76 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %77 to i32
  %add148 = add nuw nsw i32 %conv147, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0359, i32 %add148)
  %cmp149 = icmp ult i32 %len.0359, %add148
  br i1 %cmp149, label %sw.bb145.cleanup_crit_edge, label %if.end152

sw.bb145.cleanup_crit_edge:                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end152:                                        ; preds = %sw.bb145
  %78 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %17, label %do.body208 [
    i8 -53, label %sw.bb154
    i8 -55, label %sw.bb180
  ]

sw.bb154:                                         ; preds = %if.end152
  %79 = add i8 %77, -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %79)
  %80 = icmp ult i8 %79, -20
  br i1 %80, label %sw.bb154.cleanup_crit_edge, label %if.end164

sw.bb154.cleanup_crit_edge:                       ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end164:                                        ; preds = %sw.bb154
  %arrayidx165 = getelementptr i8, ptr %p.0360, i32 2
  %81 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx165, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %82)
  %cmp167 = icmp ugt i8 %82, 40
  br i1 %cmp167, label %if.end164.cleanup_crit_edge, label %if.end170

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %calling_len to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %calling_len, align 2
  %arrayidx175 = getelementptr i8, ptr %p.0360, i32 3
  %84 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx146, align 1
  %conv177 = zext i8 %85 to i32
  %sub178 = add nsw i32 %conv177, -1
  %86 = call ptr @memcpy(ptr %calling_ae, ptr %arrayidx175, i32 %sub178)
  %87 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vc_fac_mask, align 4
  %or179 = or i32 %88, 16
  store i32 %or179, ptr %vc_fac_mask, align 4
  br label %sw.epilog228

sw.bb180:                                         ; preds = %if.end152
  %89 = add i8 %77, -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %89)
  %90 = icmp ult i8 %89, -20
  br i1 %90, label %sw.bb180.cleanup_crit_edge, label %if.end191

sw.bb180.cleanup_crit_edge:                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end191:                                        ; preds = %sw.bb180
  %arrayidx192 = getelementptr i8, ptr %p.0360, i32 2
  %91 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %92)
  %cmp194 = icmp ugt i8 %92, 40
  br i1 %cmp194, label %if.end191.cleanup_crit_edge, label %if.end197

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end197:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %called_len to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %called_len, align 1
  %arrayidx202 = getelementptr i8, ptr %p.0360, i32 3
  %94 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx146, align 1
  %conv204 = zext i8 %95 to i32
  %sub205 = add nsw i32 %conv204, -1
  %96 = call ptr @memcpy(ptr %called_ae, ptr %arrayidx202, i32 %sub205)
  %97 = ptrtoint ptr %vc_fac_mask to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vc_fac_mask, align 4
  %or206 = or i32 %98, 32
  store i32 %or206, ptr %vc_fac_mask, align 4
  br label %sw.epilog228

do.body208:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_parse_facilities.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_parse_facilities, %if.then220)) #5
          to label %sw.epilog228 [label %if.then220], !srcloc !68

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %p.0360 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %p.0360, align 1
  %conv222 = zext i8 %100 to i32
  %101 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx146, align 1
  %conv224 = zext i8 %102 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_parse_facilities.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.10, i32 noundef %conv222, i32 noundef %conv224) #5
  br label %sw.epilog228

sw.epilog228:                                     ; preds = %if.then220, %do.body208, %if.end197, %if.end170
  %103 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx146, align 1
  %conv230 = zext i8 %104 to i32
  %add231 = add nuw nsw i32 %conv230, 2
  br label %sw.epilog237

while.body.unreachabledefault:                    ; preds = %while.body
  unreachable

sw.epilog237:                                     ; preds = %sw.epilog228, %if.then131, %do.body119, %if.then101, %do.body89, %sw.bb82, %sw.bb76, %if.then63, %do.body, %sw.bb56, %if.then52, %if.then41, %if.then29, %if.then19, %if.end11.sw.epilog237_crit_edge
  %add231.sink = phi i32 [ %add231, %sw.epilog228 ], [ 2, %do.body ], [ 2, %if.then63 ], [ 2, %if.end11.sw.epilog237_crit_edge ], [ 2, %sw.bb56 ], [ 2, %if.then52 ], [ 2, %if.then41 ], [ 2, %if.then29 ], [ 2, %if.then19 ], [ 3, %do.body89 ], [ 3, %if.then101 ], [ 3, %sw.bb82 ], [ 3, %sw.bb76 ], [ 4, %do.body119 ], [ 4, %if.then131 ]
  %add.ptr236 = getelementptr i8, ptr %p.0360, i32 %add231.sink
  %len.1 = sub i32 %len.0359, %add231.sink
  %cmp.not = icmp eq i32 %len.1, 0
  br i1 %cmp.not, label %sw.epilog237.while.end_crit_edge, label %sw.epilog237.while.body_crit_edge

sw.epilog237.while.body_crit_edge:                ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sw.epilog237.while.end_crit_edge:                 ; preds = %sw.epilog237
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sw.epilog237.while.end_crit_edge, %if.end4.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %add.ptr, %if.end4.while.end_crit_edge ], [ %add.ptr236, %sw.epilog237.while.end_crit_edge ]
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %106 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end191.cleanup_crit_edge, %sw.bb180.cleanup_crit_edge, %if.end164.cleanup_crit_edge, %sw.bb154.cleanup_crit_edge, %sw.bb145.cleanup_crit_edge, %sw.bb114.cleanup_crit_edge, %sw.bb70.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %pskb_may_pull.exit345.cleanup_crit_edge, %if.end.i339.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %while.end ], [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ -1, %pskb_may_pull.exit345.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ -1, %if.end.i339.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb70.cleanup_crit_edge ], [ -1, %sw.bb114.cleanup_crit_edge ], [ -1, %sw.bb145.cleanup_crit_edge ], [ -1, %sw.bb154.cleanup_crit_edge ], [ -1, %if.end164.cleanup_crit_edge ], [ -1, %sw.bb180.cleanup_crit_edge ], [ -1, %if.end191.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @x25_create_facilities(ptr noundef %buffer, ptr nocapture noundef readonly %facilities, ptr nocapture noundef readonly %dte_facs, i32 noundef %facil_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %facil_mask)
  %tobool.not = icmp eq i32 %facil_mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reverse = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 5
  %0 = ptrtoint ptr %reverse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reverse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %and = and i32 %facil_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %buffer, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %add.ptr, align 1
  %3 = ptrtoint ptr %reverse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reverse, align 4
  %conv = trunc i32 %4 to i8
  %incdec.ptr5 = getelementptr i8, ptr %buffer, i32 3
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %incdec.ptr, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %p.0 = phi ptr [ %incdec.ptr5, %if.then3 ], [ %add.ptr, %if.end.if.end6_crit_edge ]
  %throughput = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 4
  %6 = ptrtoint ptr %throughput to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %throughput, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %and9 = and i32 %facil_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond187 = or i1 %tobool10.not, %tobool7.not
  br i1 %or.cond187, label %if.end6.if.end16_crit_edge, label %if.then11

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr12 = getelementptr i8, ptr %p.0, i32 1
  %8 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %p.0, align 1
  %9 = ptrtoint ptr %throughput to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %throughput, align 4
  %conv14 = trunc i32 %10 to i8
  %incdec.ptr15 = getelementptr i8, ptr %p.0, i32 2
  %11 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %incdec.ptr12, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end6.if.end16_crit_edge
  %p.1 = phi ptr [ %incdec.ptr15, %if.then11 ], [ %p.0, %if.end6.if.end16_crit_edge ]
  %pacsize_in = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 2
  %12 = ptrtoint ptr %pacsize_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pacsize_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %land.lhs.true19

lor.lhs.false:                                    ; preds = %if.end16
  %pacsize_out = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 3
  %14 = ptrtoint ptr %pacsize_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pacsize_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  %and20 = and i32 %facil_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond188 = or i1 %tobool21.not, %tobool18.not
  br i1 %or.cond188, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true19:                                  ; preds = %if.end16
  %and20.old = and i32 %facil_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.old)
  %tobool21.not.old = icmp eq i32 %and20.old, 0
  br i1 %tobool21.not.old, label %land.lhs.true19.if.end38_crit_edge, label %land.lhs.true19.if.then22_crit_edge

land.lhs.true19.if.then22_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

land.lhs.true19.if.end38_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then22:                                        ; preds = %land.lhs.true19.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge
  %incdec.ptr23 = getelementptr i8, ptr %p.1, i32 1
  %16 = ptrtoint ptr %p.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 66, ptr %p.1, align 1
  %17 = ptrtoint ptr %pacsize_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pacsize_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %cond.false, label %if.then22.cond.end_crit_edge

if.then22.cond.end_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %pacsize_out26 = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 3
  %19 = ptrtoint ptr %pacsize_out26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pacsize_out26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then22.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.false ], [ %18, %if.then22.cond.end_crit_edge ]
  %conv27 = trunc i32 %cond to i8
  %incdec.ptr28 = getelementptr i8, ptr %p.1, i32 2
  %21 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27, ptr %incdec.ptr23, align 1
  %pacsize_out29 = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 3
  %22 = ptrtoint ptr %pacsize_out29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pacsize_out29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %cond.false32, label %cond.end.cond.end34_crit_edge

cond.end.cond.end34_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end34

cond.false32:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %pacsize_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pacsize_in, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.end.cond.end34_crit_edge
  %cond35 = phi i32 [ %25, %cond.false32 ], [ %23, %cond.end.cond.end34_crit_edge ]
  %conv36 = trunc i32 %cond35 to i8
  %incdec.ptr37 = getelementptr i8, ptr %p.1, i32 3
  %26 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %incdec.ptr28, align 1
  br label %if.end38

if.end38:                                         ; preds = %cond.end34, %land.lhs.true19.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge
  %p.2 = phi ptr [ %incdec.ptr37, %cond.end34 ], [ %p.1, %land.lhs.true19.if.end38_crit_edge ], [ %p.1, %lor.lhs.false.if.end38_crit_edge ]
  %27 = ptrtoint ptr %facilities to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %land.lhs.true42

lor.lhs.false40:                                  ; preds = %if.end38
  %winsize_out = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 1
  %29 = ptrtoint ptr %winsize_out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %winsize_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool41.not = icmp eq i32 %30, 0
  %and43 = and i32 %facil_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %or.cond189 = or i1 %tobool44.not, %tobool41.not
  br i1 %or.cond189, label %lor.lhs.false40.if.end65_crit_edge, label %lor.lhs.false40.if.then45_crit_edge

lor.lhs.false40.if.then45_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

lor.lhs.false40.if.end65_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

land.lhs.true42:                                  ; preds = %if.end38
  %and43.old = and i32 %facil_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.old)
  %tobool44.not.old = icmp eq i32 %and43.old, 0
  br i1 %tobool44.not.old, label %land.lhs.true42.if.end65_crit_edge, label %land.lhs.true42.if.then45_crit_edge

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

land.lhs.true42.if.end65_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %lor.lhs.false40.if.then45_crit_edge
  %incdec.ptr46 = getelementptr i8, ptr %p.2, i32 1
  %31 = ptrtoint ptr %p.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 67, ptr %p.2, align 1
  %32 = ptrtoint ptr %facilities to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool48.not = icmp eq i32 %33, 0
  br i1 %tobool48.not, label %cond.false50, label %if.then45.cond.end52_crit_edge

if.then45.cond.end52_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end52

cond.false50:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %winsize_out51 = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 1
  %34 = ptrtoint ptr %winsize_out51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %winsize_out51, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false50, %if.then45.cond.end52_crit_edge
  %cond53 = phi i32 [ %35, %cond.false50 ], [ %33, %if.then45.cond.end52_crit_edge ]
  %conv54 = trunc i32 %cond53 to i8
  %incdec.ptr55 = getelementptr i8, ptr %p.2, i32 2
  %36 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv54, ptr %incdec.ptr46, align 1
  %winsize_out56 = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 1
  %37 = ptrtoint ptr %winsize_out56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %winsize_out56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool57.not = icmp eq i32 %38, 0
  br i1 %tobool57.not, label %cond.false59, label %cond.end52.cond.end61_crit_edge

cond.end52.cond.end61_crit_edge:                  ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end61

cond.false59:                                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %facilities to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %facilities, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false59, %cond.end52.cond.end61_crit_edge
  %cond62 = phi i32 [ %40, %cond.false59 ], [ %38, %cond.end52.cond.end61_crit_edge ]
  %conv63 = trunc i32 %cond62 to i8
  %incdec.ptr64 = getelementptr i8, ptr %p.2, i32 3
  %41 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv63, ptr %incdec.ptr55, align 1
  br label %if.end65

if.end65:                                         ; preds = %cond.end61, %land.lhs.true42.if.end65_crit_edge, %lor.lhs.false40.if.end65_crit_edge
  %p.3 = phi ptr [ %incdec.ptr64, %cond.end61 ], [ %p.2, %land.lhs.true42.if.end65_crit_edge ], [ %p.2, %lor.lhs.false40.if.end65_crit_edge ]
  %and66 = and i32 %facil_mask, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end71_crit_edge, label %if.then68

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr69 = getelementptr i8, ptr %p.3, i32 1
  %42 = ptrtoint ptr %p.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %p.3, align 1
  %incdec.ptr70 = getelementptr i8, ptr %p.3, i32 2
  %43 = ptrtoint ptr %incdec.ptr69 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 15, ptr %incdec.ptr69, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65.if.end71_crit_edge
  %p.4 = phi ptr [ %incdec.ptr70, %if.then68 ], [ %p.3, %if.end65.if.end71_crit_edge ]
  %calling_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 5
  %44 = ptrtoint ptr %calling_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %calling_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool73.not = icmp eq i8 %45, 0
  %and75 = and i32 %facil_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond190 = or i1 %tobool76.not, %tobool73.not
  br i1 %or.cond190, label %if.end71.if.end87_crit_edge, label %if.then77

if.end71.if.end87_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %conv72 = zext i8 %45 to i32
  %add = add nuw nsw i32 %conv72, 1
  %46 = lshr i32 %add, 1
  %incdec.ptr80 = getelementptr i8, ptr %p.4, i32 1
  %47 = ptrtoint ptr %p.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -53, ptr %p.4, align 1
  %48 = trunc i32 %46 to i8
  %conv82 = add nuw i8 %48, 1
  %incdec.ptr83 = getelementptr i8, ptr %p.4, i32 2
  %49 = ptrtoint ptr %incdec.ptr80 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv82, ptr %incdec.ptr80, align 1
  %50 = ptrtoint ptr %calling_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %calling_len, align 2
  %incdec.ptr85 = getelementptr i8, ptr %p.4, i32 3
  %52 = ptrtoint ptr %incdec.ptr83 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %incdec.ptr83, align 1
  %calling_ae = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 7
  %53 = call ptr @memcpy(ptr %incdec.ptr85, ptr %calling_ae, i32 %46)
  %add.ptr86 = getelementptr i8, ptr %incdec.ptr85, i32 %46
  br label %if.end87

if.end87:                                         ; preds = %if.then77, %if.end71.if.end87_crit_edge
  %p.5 = phi ptr [ %add.ptr86, %if.then77 ], [ %p.4, %if.end71.if.end87_crit_edge ]
  %called_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 6
  %54 = ptrtoint ptr %called_len to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %called_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool89.not = icmp eq i8 %55, 0
  %and91 = and i32 %facil_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %or.cond191 = or i1 %tobool92.not, %tobool89.not
  br i1 %or.cond191, label %if.end87.if.end116_crit_edge, label %if.then93

if.end87.if.end116_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %conv88 = zext i8 %55 to i32
  %rem = and i32 %conv88, 1
  %div186 = lshr i32 %conv88, 1
  %cond107 = add nuw nsw i32 %div186, %rem
  %incdec.ptr108 = getelementptr i8, ptr %p.5, i32 1
  %56 = ptrtoint ptr %p.5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -55, ptr %p.5, align 1
  %57 = trunc i32 %cond107 to i8
  %conv110 = add nuw i8 %57, 1
  %incdec.ptr111 = getelementptr i8, ptr %p.5, i32 2
  %58 = ptrtoint ptr %incdec.ptr108 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv110, ptr %incdec.ptr108, align 1
  %59 = ptrtoint ptr %called_len to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %called_len, align 1
  %incdec.ptr113 = getelementptr i8, ptr %p.5, i32 3
  %61 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %incdec.ptr111, align 1
  %called_ae = getelementptr inbounds %struct.x25_dte_facilities, ptr %dte_facs, i32 0, i32 8
  %62 = call ptr @memcpy(ptr %incdec.ptr113, ptr %called_ae, i32 %cond107)
  %add.ptr115 = getelementptr i8, ptr %incdec.ptr113, i32 %cond107
  br label %if.end116

if.end116:                                        ; preds = %if.then93, %if.end87.if.end116_crit_edge
  %p.6 = phi ptr [ %add.ptr115, %if.then93 ], [ %p.5, %if.end87.if.end116_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %63 = trunc i32 %sub.ptr.sub to i8
  %conv117 = add i8 %63, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %entry.cleanup_crit_edge
  %storemerge = phi i8 [ %conv117, %if.end116 ], [ 0, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end116 ], [ 1, %entry.cleanup_crit_edge ]
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %storemerge, ptr %buffer, align 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_negotiate_facilities(ptr noundef %skb, ptr noundef %sk, ptr nocapture noundef %new, ptr nocapture noundef writeonly %dte) local_unnamed_addr #0 align 64 {
entry:
  %theirs = alloca %struct.x25_facilities, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %facilities = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %theirs) #5
  %0 = getelementptr inbounds %struct.x25_facilities, ptr %theirs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.x25_facilities, ptr %theirs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.x25_facilities, ptr %theirs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.x25_facilities, ptr %theirs, i32 0, i32 4
  %4 = call ptr @memset(ptr %theirs, i32 0, i32 24)
  %5 = call ptr @memcpy(ptr %new, ptr %facilities, i32 24)
  %6 = call ptr @memset(ptr %dte, i32 0, i32 50)
  %vc_facil_mask = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 27
  %call1 = call i32 @x25_parse_facilities(ptr noundef %skb, ptr noundef nonnull %theirs, ptr noundef %dte, ptr noundef %vc_facil_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.x25_facilities, ptr %theirs, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %reverse2 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %reverse2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reverse2, align 4
  %and3 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  %tobool6.not = icmp eq ptr %sk, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %land.lhs.true7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7:                                   ; preds = %do.body
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %land.lhs.true7.cleanup_crit_edge, label %do.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %reverse17 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 5
  %16 = ptrtoint ptr %reverse17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %reverse17, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.end15.if.end70_crit_edge, label %if.then19

if.end15.if.end70_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then19:                                        ; preds = %if.end15
  %and21 = and i32 %18, 15
  %and23 = and i32 %18, 240
  %throughput24 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 4
  %19 = ptrtoint ptr %throughput24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %throughput24, align 4
  %and25 = and i32 %20, 15
  %and27 = and i32 %20, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool28.not = icmp eq i32 %and25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %and25)
  %cmp29 = icmp ult i32 %and21, %and25
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp29
  br i1 %or.cond, label %do.body31, label %if.then19.if.end47_crit_edge

if.then19.if.end47_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.body31:                                        ; preds = %if.then19
  %tobool32.not = icmp eq ptr %sk, null
  br i1 %tobool32.not, label %do.body31.do.end43_crit_edge, label %land.lhs.true33

do.body31.do.end43_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

land.lhs.true33:                                  ; preds = %do.body31
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i205.not = icmp eq i32 %24, 0
  br i1 %tobool.i205.not, label %land.lhs.true33.do.end43_crit_edge, label %do.end38

land.lhs.true33.do.end43_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

do.end38:                                         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %land.lhs.true33.do.end43_crit_edge, %do.body31.do.end43_crit_edge
  %throughput44 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 4
  %25 = ptrtoint ptr %throughput44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %throughput44, align 4
  %and45 = and i32 %26, 240
  %or = or i32 %and45, %and21
  store i32 %or, ptr %throughput44, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.then19.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool48.not = icmp eq i32 %and27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %and27)
  %cmp50 = icmp ult i32 %and23, %and27
  %or.cond204 = select i1 %tobool48.not, i1 true, i1 %cmp50
  br i1 %or.cond204, label %do.body52, label %if.end47.if.end70_crit_edge

if.end47.if.end70_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.body52:                                        ; preds = %if.end47
  %tobool53.not = icmp eq ptr %sk, null
  br i1 %tobool53.not, label %do.body52.do.end64_crit_edge, label %land.lhs.true54

do.body52.do.end64_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end64

land.lhs.true54:                                  ; preds = %do.body52
  %27 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i206.not = icmp eq i32 %30, 0
  br i1 %tobool.i206.not, label %land.lhs.true54.do.end64_crit_edge, label %do.end59

land.lhs.true54.do.end64_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end64

do.end59:                                         ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %land.lhs.true54.do.end64_crit_edge, %do.body52.do.end64_crit_edge
  %throughput65 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 4
  %31 = ptrtoint ptr %throughput65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %throughput65, align 4
  %and66 = and i32 %32, 15
  %or67 = or i32 %and66, %and23
  store i32 %or67, ptr %throughput65, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %if.end47.if.end70_crit_edge, %if.end15.if.end70_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool71.not = icmp eq i32 %34, 0
  br i1 %tobool71.not, label %if.end70.if.end115_crit_edge, label %land.lhs.true72

if.end70.if.end115_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

land.lhs.true72:                                  ; preds = %if.end70
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool73.not = icmp eq i32 %36, 0
  br i1 %tobool73.not, label %land.lhs.true72.if.end115_crit_edge, label %if.then74

land.lhs.true72.if.end115_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then74:                                        ; preds = %land.lhs.true72
  %pacsize_in76 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 2
  %37 = ptrtoint ptr %pacsize_in76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pacsize_in76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %38)
  %cmp77 = icmp ult i32 %34, %38
  br i1 %cmp77, label %do.body79, label %if.then74.if.end94_crit_edge

if.then74.if.end94_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.body79:                                        ; preds = %if.then74
  %tobool80.not = icmp eq ptr %sk, null
  br i1 %tobool80.not, label %do.body79.do.end91_crit_edge, label %land.lhs.true81

do.body79.do.end91_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91

land.lhs.true81:                                  ; preds = %do.body79
  %39 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i207.not = icmp eq i32 %42, 0
  br i1 %tobool.i207.not, label %land.lhs.true81.do.end91_crit_edge, label %do.end86

land.lhs.true81.do.end91_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91

do.end86:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %land.lhs.true81.do.end91_crit_edge, %do.body79.do.end91_crit_edge
  %pacsize_in93 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 2
  %43 = ptrtoint ptr %pacsize_in93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %34, ptr %pacsize_in93, align 4
  br label %if.end94

if.end94:                                         ; preds = %do.end91, %if.then74.if.end94_crit_edge
  %pacsize_out96 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 3
  %44 = ptrtoint ptr %pacsize_out96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pacsize_out96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %45)
  %cmp97 = icmp ult i32 %36, %45
  br i1 %cmp97, label %do.body99, label %if.end94.if.end115_crit_edge

if.end94.if.end115_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

do.body99:                                        ; preds = %if.end94
  %tobool100.not = icmp eq ptr %sk, null
  br i1 %tobool100.not, label %do.body99.do.end111_crit_edge, label %land.lhs.true101

do.body99.do.end111_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end111

land.lhs.true101:                                 ; preds = %do.body99
  %46 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i208.not = icmp eq i32 %49, 0
  br i1 %tobool.i208.not, label %land.lhs.true101.do.end111_crit_edge, label %do.end106

land.lhs.true101.do.end111_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end111

do.end106:                                        ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %land.lhs.true101.do.end111_crit_edge, %do.body99.do.end111_crit_edge
  %pacsize_out113 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 3
  %50 = ptrtoint ptr %pacsize_out113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %36, ptr %pacsize_out113, align 4
  br label %if.end115

if.end115:                                        ; preds = %do.end111, %if.end94.if.end115_crit_edge, %land.lhs.true72.if.end115_crit_edge, %if.end70.if.end115_crit_edge
  %51 = ptrtoint ptr %theirs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %theirs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool116.not = icmp eq i32 %52, 0
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %land.lhs.true117

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true117:                                 ; preds = %if.end115
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool118.not = icmp eq i32 %54, 0
  br i1 %tobool118.not, label %land.lhs.true117.cleanup_crit_edge, label %if.then119

land.lhs.true117.cleanup_crit_edge:               ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then119:                                       ; preds = %land.lhs.true117
  %55 = ptrtoint ptr %facilities to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %56)
  %cmp122 = icmp ult i32 %52, %56
  br i1 %cmp122, label %do.body124, label %if.then119.if.end139_crit_edge

if.then119.if.end139_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

do.body124:                                       ; preds = %if.then119
  %tobool125.not = icmp eq ptr %sk, null
  br i1 %tobool125.not, label %do.body124.do.end136_crit_edge, label %land.lhs.true126

do.body124.do.end136_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end136

land.lhs.true126:                                 ; preds = %do.body124
  %57 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %60 = and i32 %59, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i209.not = icmp eq i32 %60, 0
  br i1 %tobool.i209.not, label %land.lhs.true126.do.end136_crit_edge, label %do.end131

land.lhs.true126.do.end136_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end136

do.end131:                                        ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #7
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %do.end136

do.end136:                                        ; preds = %do.end131, %land.lhs.true126.do.end136_crit_edge, %do.body124.do.end136_crit_edge
  %61 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %52, ptr %new, align 4
  br label %if.end139

if.end139:                                        ; preds = %do.end136, %if.then119.if.end139_crit_edge
  %winsize_out141 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 1
  %62 = ptrtoint ptr %winsize_out141 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %winsize_out141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %63)
  %cmp142 = icmp ult i32 %54, %63
  br i1 %cmp142, label %do.body144, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body144:                                       ; preds = %if.end139
  %tobool145.not = icmp eq ptr %sk, null
  br i1 %tobool145.not, label %do.body144.do.end156_crit_edge, label %land.lhs.true146

do.body144.do.end156_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end156

land.lhs.true146:                                 ; preds = %do.body144
  %64 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i210.not = icmp eq i32 %67, 0
  br i1 %tobool.i210.not, label %land.lhs.true146.do.end156_crit_edge, label %do.end151

land.lhs.true146.do.end156_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end156

do.end151:                                        ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #7
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %do.end156

do.end156:                                        ; preds = %do.end151, %land.lhs.true146.do.end156_crit_edge, %do.body144.do.end156_crit_edge
  %winsize_out158 = getelementptr inbounds %struct.x25_facilities, ptr %new, i32 0, i32 1
  %68 = ptrtoint ptr %winsize_out158 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %54, ptr %winsize_out158, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %if.end139.cleanup_crit_edge, %land.lhs.true117.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %do.end, %land.lhs.true7.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %land.lhs.true7.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ], [ %call1, %if.end139.cleanup_crit_edge ], [ %call1, %do.end156 ], [ %call1, %land.lhs.true117.cleanup_crit_edge ], [ %call1, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %theirs) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_limit_facilities(ptr nocapture noundef %facilities, ptr nocapture noundef readonly %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %0 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %facilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  br i1 %cmp, label %do.body, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_limit_facilities.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_limit_facilities, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !68

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_limit_facilities.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.33) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %4 = ptrtoint ptr %facilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %facilities, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge
  %winsize_out = getelementptr inbounds %struct.x25_facilities, ptr %facilities, i32 0, i32 1
  %5 = ptrtoint ptr %winsize_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %winsize_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp8 = icmp ugt i32 %6, 7
  br i1 %cmp8, label %if.then9, label %if.end7.if.end27_crit_edge

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %winsize_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %winsize_out, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_limit_facilities.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_limit_facilities, %if.then23)) #5
          to label %if.end27 [label %if.then23], !srcloc !68

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_limit_facilities.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.35) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then9, %if.end7.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/x25/x25_facilities.c", i32 109, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @x25_parse_facilities.__UNIQUE_ID_ddebug457, !1, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/x25/x25_facilities.c", i32 132, i32 5}
!9 = !{ptr @x25_parse_facilities.__UNIQUE_ID_ddebug458, !8, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/x25/x25_facilities.c", i32 143, i32 4}
!13 = !{ptr @x25_parse_facilities.__UNIQUE_ID_ddebug459, !12, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/x25/x25_facilities.c", i32 172, i32 5}
!17 = !{ptr @x25_parse_facilities.__UNIQUE_ID_ddebug460, !16, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/x25/x25_facilities.c", i32 285, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @x25_negotiate_facilities._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @x25_negotiate_facilities._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/x25/x25_facilities.c", i32 297, i32 4}
!26 = !{ptr @x25_negotiate_facilities._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @x25_negotiate_facilities._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/x25/x25_facilities.c", i32 301, i32 4}
!30 = !{ptr @x25_negotiate_facilities._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @x25_negotiate_facilities._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/x25/x25_facilities.c", i32 309, i32 4}
!34 = !{ptr @x25_negotiate_facilities._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @x25_negotiate_facilities._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/x25/x25_facilities.c", i32 313, i32 4}
!38 = !{ptr @x25_negotiate_facilities._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @x25_negotiate_facilities._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/x25/x25_facilities.c", i32 320, i32 4}
!42 = !{ptr @x25_negotiate_facilities._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @x25_negotiate_facilities._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/x25/x25_facilities.c", i32 324, i32 4}
!46 = !{ptr @x25_negotiate_facilities._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @x25_negotiate_facilities._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/x25/x25_facilities.c", i32 342, i32 4}
!50 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @x25_limit_facilities.__UNIQUE_ID_ddebug461, !49, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!52 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/x25/x25_facilities.c", i32 347, i32 4}
!55 = !{ptr @x25_limit_facilities.__UNIQUE_ID_ddebug462, !54, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!56 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148698660, i64 2148698665, i64 2148698678, i64 2148698722, i64 2148698756, i64 2148698777}
