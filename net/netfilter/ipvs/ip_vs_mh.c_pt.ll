; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_mh.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_mh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_scheduler = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_vs_mh_state = type { %struct.callback_head, ptr, ptr, %struct.hsiphash_key_t, %struct.hsiphash_key_t, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hsiphash_key_t = type { [2 x i32] }
%struct.ip_vs_service = type { %struct.hlist_node, %struct.hlist_node, %struct.atomic_t, i16, i16, %union.nf_inet_addr, i16, i32, i32, i32, i32, ptr, %struct.list_head, i32, %struct.ip_vs_stats, ptr, %struct.spinlock, ptr, ptr, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_mh_lookup = type { ptr }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ip_vs_mh_dest_setup = type { i32, i32, i32, i32 }

@ip_vs_mh_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_mh_scheduler, ptr @ip_vs_mh_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_mh_init_svc, ptr @ip_vs_mh_done_svc, ptr @ip_vs_mh_dest_changed, ptr @ip_vs_mh_dest_changed, ptr @ip_vs_mh_dest_changed, ptr @ip_vs_mh_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_mh__592_536_ip_vs_mh_init6 = internal global ptr @ip_vs_mh_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_mh_cleanup = internal global ptr @ip_vs_mh_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description593 = internal constant [51 x i8] c"ip_vs_mh.description=Maglev hashing ipvs scheduler\00", section ".modinfo", align 1
@__UNIQUE_ID_file594 = internal constant [42 x i8] c"ip_vs_mh.file=net/netfilter/ipvs/ip_vs_mh\00", section ".modinfo", align 1
@__UNIQUE_ID_license595 = internal constant [24 x i8] c"ip_vs_mh.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author596 = internal constant [52 x i8] c"ip_vs_mh.author=Inju Song <inju.song@navercorp.com>\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mh\00", [29 x i8] zeroinitializer }, align 32
@ip_vs_mh_init_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017IPVS: MH lookup table (memory=%zdbytes) allocated for current service\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_mh_init_svc\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/ipvs/ip_vs_mh.c\00", [34 x i8] zeroinitializer }, align 32
@ip_vs_mh_init_svc._entry_ptr = internal global ptr @ip_vs_mh_init_svc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_mh_reassign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: MH: reassign lookup table of %s:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_mh_reassign\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_mh_reassign._entry_ptr = internal global ptr @ip_vs_mh_reassign._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_mh_done_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017IPVS: MH lookup table (memory=%zdbytes) released\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_mh_done_svc\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_mh_done_svc._entry_ptr = internal global ptr @ip_vs_mh_done_svc._entry, section ".printk_index", align 4
@ip_vs_mh_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017IPVS: %s : Scheduling...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_mh_schedule\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_mh_schedule._entry_ptr = internal global ptr @ip_vs_mh_schedule._entry, section ".printk_index", align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_mh_schedule._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017IPVS: MH: source IP address %s:%u --> server %s:%u\0A\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_mh_schedule._entry_ptr.15 = internal global ptr @ip_vs_mh_schedule._entry.13, section ".printk_index", align 4
@ip_vs_mh_get_fallback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ip_vs_mh_get_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: MH: selected unavailable server %s:%u, reselecting\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_vs_mh_get_fallback\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_mh_get_fallback._entry_ptr = internal global ptr @ip_vs_mh_get_fallback._entry, section ".printk_index", align 4
@ip_vs_mh_get_fallback.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_mh_get_fallback._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017IPVS: MH: selected unavailable server %s:%u (offset %u), reselecting\00", [57 x i8] zeroinitializer }, align 32
@ip_vs_mh_get_fallback._entry_ptr.22 = internal global ptr @ip_vs_mh_get_fallback._entry.20, section ".printk_index", align 4
@ip_vs_mh_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 17, i64 132]
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"ip_vs_mh_scheduler\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 512, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 513, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 403, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 311, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 196, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 200, i32 46 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 428, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 485, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 498, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 502, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 258, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 264, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../net/netfilter/ipvs/ip_vs_mh.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 279, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author596, ptr @__UNIQUE_ID_description593, ptr @__UNIQUE_ID_file594, ptr @__UNIQUE_ID_license595, ptr @__exitcall_ip_vs_mh_cleanup, ptr @__initcall__kmod_ip_vs_mh__592_536_ip_vs_mh_init6, ptr @ip_vs_mh_cleanup, ptr @ip_vs_mh_done_svc._entry, ptr @ip_vs_mh_done_svc._entry_ptr, ptr @ip_vs_mh_get_fallback._entry, ptr @ip_vs_mh_get_fallback._entry.20, ptr @ip_vs_mh_get_fallback._entry_ptr, ptr @ip_vs_mh_get_fallback._entry_ptr.22, ptr @ip_vs_mh_init_svc._entry, ptr @ip_vs_mh_init_svc._entry_ptr, ptr @ip_vs_mh_reassign._entry, ptr @ip_vs_mh_reassign._entry_ptr, ptr @ip_vs_mh_schedule._entry, ptr @ip_vs_mh_schedule._entry.13, ptr @ip_vs_mh_schedule._entry_ptr, ptr @ip_vs_mh_schedule._entry_ptr.15, ptr @ip_vs_mh_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_init_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_reassign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_done_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_schedule._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_get_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_mh_get_fallback._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_mh_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_mh_scheduler) #11
  tail call void @rcu_barrier() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_mh_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_mh_scheduler) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_mh_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16372, i32 noundef 3520, i32 noundef 2) #15
  %lookup = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i.i, ptr %lookup, align 8
  %tobool3.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hash1 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 3
  %hash2 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %hash1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1640531535, ptr %hash1, align 8
  %arrayidx2.i = getelementptr %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1640531535, ptr %arrayidx2.i, align 4
  %4 = ptrtoint ptr %hash2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1640520404, ptr %hash2, align 8
  %arrayidx6.i = getelementptr %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1640520404, ptr %arrayidx6.i, align 4
  %destinations.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %6 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dest.019.i = load ptr, ptr %destinations.i, align 8
  %cmp.not20.i = icmp eq ptr %dest.019.i, %destinations.i
  br i1 %cmp.not20.i, label %ip_vs_mh_gcd_weight.exit.thread, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

ip_vs_mh_gcd_weight.exit.thread:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %gcd47 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %gcd47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %gcd47, align 8
  br label %ip_vs_mh_shift_weight.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %dest.022.i = phi ptr [ %dest.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dest.019.i, %if.end5.for.body.i_crit_edge ]
  %g.021.i = phi i32 [ %g.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %last_weight.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.022.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_weight.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %last_weight.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %last_weight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.i = icmp sgt i32 %9, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.021.i)
  %cmp3.i = icmp sgt i32 %g.021.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call i32 @gcd(i32 noundef %9, i32 noundef %g.021.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %g.1.i = phi i32 [ %call5.i, %if.then4.i ], [ %g.021.i, %for.body.i.for.inc.i_crit_edge ], [ %9, %if.then.i.for.inc.i_crit_edge ]
  %10 = ptrtoint ptr %dest.022.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %dest.0.i = load ptr, ptr %dest.022.i, align 8
  %cmp.not.i = icmp eq ptr %dest.0.i, %destinations.i
  br i1 %cmp.not.i, label %ip_vs_mh_gcd_weight.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ip_vs_mh_gcd_weight.exit:                         ; preds = %for.inc.i
  %gcd = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %gcd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %g.1.i, ptr %gcd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %g.1.i)
  %cmp.i = icmp slt i32 %g.1.i, 1
  br i1 %cmp.i, label %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge, label %if.end.i

ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge: ; preds = %ip_vs_mh_gcd_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_shift_weight.exit

if.end.i:                                         ; preds = %ip_vs_mh_gcd_weight.exit
  %12 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %dest.025.i = load ptr, ptr %destinations.i, align 8
  %cmp2.not26.i = icmp eq ptr %dest.025.i, %destinations.i
  br i1 %cmp2.not26.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i41_crit_edge

if.end.i.for.body.i41_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i41

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %if.end.i.for.body.i41_crit_edge
  %dest.028.i = phi ptr [ %dest.0.i40, %for.body.i41.for.body.i41_crit_edge ], [ %dest.025.i, %if.end.i.for.body.i41_crit_edge ]
  %weight.027.i = phi i32 [ %15, %for.body.i41.for.body.i41_crit_edge ], [ 0, %if.end.i.for.body.i41_crit_edge ]
  %last_weight.i38 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.028.i, i32 0, i32 8
  %call.i.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_weight.i38, i32 noundef 4) #11
  %13 = ptrtoint ptr %last_weight.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %last_weight.i38, align 4
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 %weight.027.i) #11
  %16 = ptrtoint ptr %dest.028.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %dest.0.i40 = load ptr, ptr %dest.028.i, align 8
  %cmp2.not.i = icmp eq ptr %dest.0.i40, %destinations.i
  br i1 %cmp2.not.i, label %for.body.i41.for.end.i_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i41

for.body.i41.for.end.i_crit_edge:                 ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i41.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %weight.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %15, %for.body.i41.for.end.i_crit_edge ]
  %div.i = sdiv i32 %weight.0.lcssa.i, %g.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %tobool.not.i.i = icmp eq i32 %div.i, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #11, !range !77
  %sub.i.op.i = sub nsw i32 26, %17
  %18 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i, i32 0) #11
  %19 = select i1 %tobool.not.i.i, i32 0, i32 %18
  br label %ip_vs_mh_shift_weight.exit

ip_vs_mh_shift_weight.exit:                       ; preds = %for.end.i, %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge, %ip_vs_mh_gcd_weight.exit.thread
  %retval.0.i = phi i32 [ %19, %for.end.i ], [ 0, %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge ], [ 0, %ip_vs_mh_gcd_weight.exit.thread ]
  %rshift = getelementptr inbounds %struct.ip_vs_mh_state, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %rshift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %rshift, align 4
  %call9 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call9)
  %cmp = icmp sgt i32 %call9, 5
  br i1 %cmp, label %do.end, label %ip_vs_mh_shift_weight.exit.do.end15_crit_edge

ip_vs_mh_shift_weight.exit.do.end15_crit_edge:    ; preds = %ip_vs_mh_shift_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end:                                           ; preds = %ip_vs_mh_shift_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 16372) #17
  br label %do.end15

do.end15:                                         ; preds = %do.end, %ip_vs_mh_shift_weight.exit.do.end15_crit_edge
  %call16 = tail call fastcc i32 @ip_vs_mh_reassign(ptr noundef nonnull %call7.i.i, ptr noundef %svc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end15
  %21 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lookup, align 8
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i43.do.end.i_crit_edge, %if.then18
  %i.021.i = phi i32 [ 0, %if.then18 ], [ %inc.i, %if.end.i43.do.end.i_crit_edge ]
  %l.019.i = phi ptr [ %22, %if.then18 ], [ %incdec.ptr.i, %if.end.i43.do.end.i_crit_edge ]
  %23 = ptrtoint ptr %l.019.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l.019.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end.i.if.end.i43_crit_edge, label %if.then.i42

do.end.i.if.end.i43_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

if.then.i42:                                      ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %24, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i42.ip_vs_dest_put.exit.i_crit_edge, !prof !81

if.then.i42.ip_vs_dest_put.exit.i_crit_edge:      ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_dest_put.exit.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  br label %ip_vs_dest_put.exit.i

ip_vs_dest_put.exit.i:                            ; preds = %if.then3.i.i.i.i, %if.then.i42.ip_vs_dest_put.exit.i_crit_edge
  %26 = ptrtoint ptr %l.019.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr null, ptr %l.019.i, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %ip_vs_dest_put.exit.i, %do.end.i.if.end.i43_crit_edge
  %incdec.ptr.i = getelementptr %struct.ip_vs_mh_lookup, ptr %l.019.i, i32 1
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4093
  br i1 %exitcond.not.i, label %ip_vs_mh_reset.exit, label %if.end.i43.do.end.i_crit_edge

if.end.i43.do.end.i_crit_edge:                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

ip_vs_mh_reset.exit:                              ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lookup, align 8
  tail call void @kfree(ptr noundef %28) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %29 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %sched_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %ip_vs_mh_reset.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %ip_vs_mh_reset.exit ], [ 0, %if.end19 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_mh_done_svc(ptr nocapture noundef readonly %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %lookup.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lookup.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %l.019.i = phi ptr [ %3, %entry ], [ %incdec.ptr.i, %if.end.i.do.end.i_crit_edge ]
  %4 = ptrtoint ptr %l.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l.019.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i.if.end.i_crit_edge, label %if.then.i

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %5, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i.ip_vs_dest_put.exit.i_crit_edge, !prof !81

if.then.i.ip_vs_dest_put.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_dest_put.exit.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  br label %ip_vs_dest_put.exit.i

ip_vs_dest_put.exit.i:                            ; preds = %if.then3.i.i.i.i, %if.then.i.ip_vs_dest_put.exit.i_crit_edge
  %7 = ptrtoint ptr %l.019.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %l.019.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %ip_vs_dest_put.exit.i, %do.end.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ip_vs_mh_lookup, ptr %l.019.i, i32 1
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4093
  br i1 %exitcond.not.i, label %ip_vs_mh_reset.exit, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

ip_vs_mh_reset.exit:                              ; preds = %if.end.i
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @ip_vs_mh_state_free) #11
  %call = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %ip_vs_mh_reset.exit.do.end4_crit_edge

ip_vs_mh_reset.exit.do.end4_crit_edge:            ; preds = %ip_vs_mh_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %ip_vs_mh_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 16372) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %ip_vs_mh_reset.exit.do.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_mh_dest_changed(ptr noundef %svc, ptr nocapture noundef readnone %dest) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %destinations.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %2 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %dest.019.i = load ptr, ptr %destinations.i, align 8
  %cmp.not20.i = icmp eq ptr %dest.019.i, %destinations.i
  br i1 %cmp.not20.i, label %ip_vs_mh_gcd_weight.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

ip_vs_mh_gcd_weight.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gcd16 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %gcd16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gcd16, align 4
  br label %ip_vs_mh_shift_weight.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dest.022.i = phi ptr [ %dest.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dest.019.i, %entry.for.body.i_crit_edge ]
  %g.021.i = phi i32 [ %g.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %last_weight.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.022.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_weight.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %last_weight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %last_weight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp sgt i32 %5, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.021.i)
  %cmp3.i = icmp sgt i32 %g.021.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call i32 @gcd(i32 noundef %5, i32 noundef %g.021.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %g.1.i = phi i32 [ %call5.i, %if.then4.i ], [ %g.021.i, %for.body.i.for.inc.i_crit_edge ], [ %5, %if.then.i.for.inc.i_crit_edge ]
  %6 = ptrtoint ptr %dest.022.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dest.0.i = load ptr, ptr %dest.022.i, align 8
  %cmp.not.i = icmp eq ptr %dest.0.i, %destinations.i
  br i1 %cmp.not.i, label %ip_vs_mh_gcd_weight.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ip_vs_mh_gcd_weight.exit:                         ; preds = %for.inc.i
  %gcd = getelementptr inbounds %struct.ip_vs_mh_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %gcd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %g.1.i, ptr %gcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %g.1.i)
  %cmp.i = icmp slt i32 %g.1.i, 1
  br i1 %cmp.i, label %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge, label %if.end.i

ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge: ; preds = %ip_vs_mh_gcd_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_shift_weight.exit

if.end.i:                                         ; preds = %ip_vs_mh_gcd_weight.exit
  %8 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %dest.025.i = load ptr, ptr %destinations.i, align 8
  %cmp2.not26.i = icmp eq ptr %dest.025.i, %destinations.i
  br i1 %cmp2.not26.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i14_crit_edge

if.end.i.for.body.i14_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i14

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %if.end.i.for.body.i14_crit_edge
  %dest.028.i = phi ptr [ %dest.0.i13, %for.body.i14.for.body.i14_crit_edge ], [ %dest.025.i, %if.end.i.for.body.i14_crit_edge ]
  %weight.027.i = phi i32 [ %11, %for.body.i14.for.body.i14_crit_edge ], [ 0, %if.end.i.for.body.i14_crit_edge ]
  %last_weight.i11 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.028.i, i32 0, i32 8
  %call.i.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_weight.i11, i32 noundef 4) #11
  %9 = ptrtoint ptr %last_weight.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %last_weight.i11, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 %weight.027.i) #11
  %12 = ptrtoint ptr %dest.028.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %dest.0.i13 = load ptr, ptr %dest.028.i, align 8
  %cmp2.not.i = icmp eq ptr %dest.0.i13, %destinations.i
  br i1 %cmp2.not.i, label %for.body.i14.for.end.i_crit_edge, label %for.body.i14.for.body.i14_crit_edge

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i14

for.body.i14.for.end.i_crit_edge:                 ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i14.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %weight.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %11, %for.body.i14.for.end.i_crit_edge ]
  %div.i = sdiv i32 %weight.0.lcssa.i, %g.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %tobool.not.i.i = icmp eq i32 %div.i, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #11, !range !77
  %sub.i.op.i = sub nsw i32 26, %13
  %14 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i, i32 0) #11
  %15 = select i1 %tobool.not.i.i, i32 0, i32 %14
  br label %ip_vs_mh_shift_weight.exit

ip_vs_mh_shift_weight.exit:                       ; preds = %for.end.i, %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge, %ip_vs_mh_gcd_weight.exit.thread
  %retval.0.i = phi i32 [ %15, %for.end.i ], [ 0, %ip_vs_mh_gcd_weight.exit.ip_vs_mh_shift_weight.exit_crit_edge ], [ 0, %ip_vs_mh_gcd_weight.exit.thread ]
  %rshift = getelementptr inbounds %struct.ip_vs_mh_state, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %rshift to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %rshift, align 4
  %call3 = tail call fastcc i32 @ip_vs_mh_reassign(ptr noundef %1, ptr noundef %svc)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_mh_schedule(ptr noundef %svc, ptr noundef %skb, ptr noundef %iph) #2 align 64 {
entry:
  %v.i.i65 = alloca i32, align 4
  %v.i123.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf70.i = alloca [160 x i8], align 1
  %_ports.i = alloca [2 x i16], align 2
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iph, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %cond = select i1 %tobool.i.not, ptr %saddr, ptr %daddr
  %call1 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp = icmp sgt i32 %call1, 5
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end5.if.end8_crit_edge, label %if.then6

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #11
  %4 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %_ports.i, align 2, !annotation !82
  %5 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !82
  %protocol.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 2
  %conv.i = sext i16 %8 to i32
  %9 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %if.then6.ip_vs_mh_get_port.exit_crit_edge [
    i32 6, label %if.then6.sw.bb.i_crit_edge
    i32 17, label %if.then6.sw.bb.i_crit_edge132
    i32 132, label %if.then6.sw.bb.i_crit_edge133
  ]

if.then6.sw.bb.i_crit_edge133:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then6.sw.bb.i_crit_edge132:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then6.sw.bb.i_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then6.ip_vs_mh_get_port.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_get_port.exit

sw.bb.i:                                          ; preds = %if.then6.sw.bb.i_crit_edge, %if.then6.sw.bb.i_crit_edge132, %if.then6.sw.bb.i_crit_edge133
  %len.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  %16 = add i32 %11, %15
  %sub.i1.i.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !83

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.ip_vs_mh_get_port.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.ip_vs_mh_get_port.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_get_port.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %11, ptr noundef nonnull %_ports.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.ip_vs_mh_get_port.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.i.i.ip_vs_mh_get_port.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_get_port.exit

skb_header_pointer.exit.i:                        ; preds = %sw.bb.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %11
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.ip_vs_mh_get_port.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge, !prof !81

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

skb_header_pointer.exit.i.ip_vs_mh_get_port.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_get_port.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i25.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i, !prof !83

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14.i = getelementptr i16, ptr %retval.0.i.i25.i, i32 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %arrayidx14.sink.i = phi ptr [ %arrayidx14.i, %if.else.i ], [ %retval.0.i.i25.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %arrayidx14.sink.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx14.sink.i, align 2
  br label %ip_vs_mh_get_port.exit

ip_vs_mh_get_port.exit:                           ; preds = %cleanup.sink.split.i, %skb_header_pointer.exit.i.ip_vs_mh_get_port.exit_crit_edge, %lor.lhs.false.i.i.i.ip_vs_mh_get_port.exit_crit_edge, %if.end.i.i.i.ip_vs_mh_get_port.exit_crit_edge, %if.then6.ip_vs_mh_get_port.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %skb_header_pointer.exit.i.ip_vs_mh_get_port.exit_crit_edge ], [ 0, %if.then6.ip_vs_mh_get_port.exit_crit_edge ], [ 0, %if.end.i.i.i.ip_vs_mh_get_port.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.i.ip_vs_mh_get_port.exit_crit_edge ], [ %22, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #11
  br label %if.end8

if.end8:                                          ; preds = %ip_vs_mh_get_port.exit, %do.end5.if.end8_crit_edge
  %port.0 = phi i16 [ %retval.0.i, %ip_vs_mh_get_port.exit ], [ 0, %do.end5.if.end8_crit_edge ]
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %23 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sched_data, align 8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %and10 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %af.i66 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %27 = ptrtoint ptr %af.i66 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %af.i66, align 4
  %hash1.i67 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %24, i32 0, i32 3
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #11
  %29 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.i.i = icmp eq i16 %28, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then12.ip_vs_mh_hashkey.exit.i_crit_edge

if.then12.ip_vs_mh_hashkey.exit.i_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_hashkey.exit.i

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %32, %30
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i.i, align 4
  %xor3.i.i = xor i32 %xor.i.i, %34
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor3.i.i, %36
  br label %ip_vs_mh_hashkey.exit.i

ip_vs_mh_hashkey.exit.i:                          ; preds = %if.then.i.i, %if.then12.ip_vs_mh_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %30, %if.then12.ip_vs_mh_hashkey.exit.i_crit_edge ]
  %conv.i.i = zext i16 %port.0 to i32
  %add6.i.i = add i32 %addr_fold.0.i.i, %conv.i.i
  %37 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add6.i.i, ptr %v.i.i, align 4
  %call.i.i.i60 = call i32 @__hsiphash_unaligned(ptr noundef nonnull %v.i.i, i32 noundef 4, ptr noundef %hash1.i67) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #11
  %rem.i = urem i32 %call.i.i.i60, 4093
  %lookup.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %24, i32 0, i32 1
  %38 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lookup.i, align 4
  %arrayidx.i = getelementptr %struct.ip_vs_mh_lookup, ptr %39, i32 %rem.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx.i, align 4
  %call3.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i61 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i, label %ip_vs_mh_hashkey.exit.i.do.end9.i_crit_edge

ip_vs_mh_hashkey.exit.i.do.end9.i_crit_edge:      ; preds = %ip_vs_mh_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %ip_vs_mh_hashkey.exit.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b120.i = load i1, ptr @ip_vs_mh_get_fallback.__warned, align 1
  br i1 %.b120.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ip_vs_mh_get_fallback.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 258, ptr noundef nonnull @.str.16) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %ip_vs_mh_hashkey.exit.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %41, null
  br i1 %tobool11.not.i, label %do.end9.i.if.then17_crit_edge, label %if.end13.i

do.end9.i.if.then17_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end13.i:                                       ; preds = %do.end9.i
  %weight.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %41, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %weight.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %weight.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i121.i = icmp slt i32 %43, 1
  br i1 %cmp.i121.i, label %if.end13.i.do.body17.i_crit_edge, label %is_unavailable.exit.i

if.end13.i.do.body17.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17.i

is_unavailable.exit.i:                            ; preds = %if.end13.i
  %flags.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i.i, align 4
  %and.i.i62 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.i.not.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.i.not.i63, label %is_unavailable.exit.i.do.body19_crit_edge, label %is_unavailable.exit.i.do.body17.i_crit_edge

is_unavailable.exit.i.do.body17.i_crit_edge:      ; preds = %is_unavailable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17.i

is_unavailable.exit.i.do.body19_crit_edge:        ; preds = %is_unavailable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body17.i:                                      ; preds = %is_unavailable.exit.i.do.body17.i_crit_edge, %if.end13.i.do.body17.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #11
  %46 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call18.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18.i)
  %cmp.i = icmp sgt i32 %call18.i, 5
  br i1 %cmp.i, label %do.end23.i, label %do.body17.i.if.end32.i_crit_edge

do.body17.i.if.end32.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

do.end23.i:                                       ; preds = %do.body17.i
  %af25.i = getelementptr inbounds %struct.ip_vs_dest, ptr %41, i32 0, i32 2
  %47 = ptrtoint ptr %af25.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %af25.i, align 8
  %addr27.i = getelementptr inbounds %struct.ip_vs_dest, ptr %41, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %48)
  %cmp.i122.i = icmp eq i16 %48, 10
  %.str.6..str.7.i.i = select i1 %cmp.i122.i, ptr @.str.6, ptr @.str.7
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i.i, ptr noundef %addr27.i) #11
  %49 = add i32 %call3.i.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %49)
  %cmp7.i.i = icmp ult i32 %49, -162
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !81

do.body10.i.i:                                    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %port29.i = getelementptr inbounds %struct.ip_vs_dest, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %port29.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port29.i, align 2
  %conv30.i = zext i16 %51 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv30.i) #17
  br label %if.end32.i

if.end32.i:                                       ; preds = %ip_vs_dbg_addr.exit.i, %do.body17.i.if.end32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #11
  %arrayidx1.i125.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %arrayidx2.i127.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %arrayidx4.i129.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end88.i.for.body.i_crit_edge, %if.end32.i
  %offset.0158.i = phi i32 [ 0, %if.end32.i ], [ %inc.i, %if.end88.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %offset.0158.i, %rem.i
  %rem37.i = urem i32 %add.i, 4093
  %52 = ptrtoint ptr %af.i66 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %af.i66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i123.i) #11
  %54 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %53)
  %cmp.i124.i = icmp eq i16 %53, 10
  br i1 %cmp.i124.i, label %if.then.i131.i, label %for.body.i.ip_vs_mh_hashkey.exit136.i_crit_edge

for.body.i.ip_vs_mh_hashkey.exit136.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_hashkey.exit136.i

if.then.i131.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %arrayidx1.i125.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i125.i, align 4
  %xor.i126.i = xor i32 %57, %55
  %58 = ptrtoint ptr %arrayidx2.i127.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i127.i, align 4
  %xor3.i128.i = xor i32 %xor.i126.i, %59
  %60 = ptrtoint ptr %arrayidx4.i129.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx4.i129.i, align 4
  %xor5.i130.i = xor i32 %xor3.i128.i, %61
  br label %ip_vs_mh_hashkey.exit136.i

ip_vs_mh_hashkey.exit136.i:                       ; preds = %if.then.i131.i, %for.body.i.ip_vs_mh_hashkey.exit136.i_crit_edge
  %addr_fold.0.i132.i = phi i32 [ %xor5.i130.i, %if.then.i131.i ], [ %55, %for.body.i.ip_vs_mh_hashkey.exit136.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %rem37.i, %conv.i.i
  %add6.i134.i = add i32 %add.i.i, %addr_fold.0.i132.i
  %62 = ptrtoint ptr %v.i123.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add6.i134.i, ptr %v.i123.i, align 4
  %call.i.i135.i = call i32 @__hsiphash_unaligned(ptr noundef nonnull %v.i123.i, i32 noundef 4, ptr noundef %hash1.i67) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i123.i) #11
  %rem42.i = urem i32 %call.i.i135.i, 4093
  %63 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lookup.i, align 4
  %arrayidx48.i = getelementptr %struct.ip_vs_mh_lookup, ptr %64, i32 %rem42.i
  %65 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %arrayidx48.i, align 4
  %call51.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true53.i, label %ip_vs_mh_hashkey.exit136.i.do.end61.i_crit_edge

ip_vs_mh_hashkey.exit136.i.do.end61.i_crit_edge:  ; preds = %ip_vs_mh_hashkey.exit136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

land.lhs.true53.i:                                ; preds = %ip_vs_mh_hashkey.exit136.i
  %call54.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true53.i.do.end61.i_crit_edge, label %land.lhs.true56.i

land.lhs.true53.i.do.end61.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

land.lhs.true56.i:                                ; preds = %land.lhs.true53.i
  %.b118119.i = load i1, ptr @ip_vs_mh_get_fallback.__warned.19, align 1
  br i1 %.b118119.i, label %land.lhs.true56.i.do.end61.i_crit_edge, label %if.then58.i

land.lhs.true56.i.do.end61.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

if.then58.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ip_vs_mh_get_fallback.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 274, ptr noundef nonnull @.str.16) #11
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.then58.i, %land.lhs.true56.i.do.end61.i_crit_edge, %land.lhs.true53.i.do.end61.i_crit_edge, %ip_vs_mh_hashkey.exit136.i.do.end61.i_crit_edge
  %tobool63.not.i = icmp eq ptr %66, null
  br i1 %tobool63.not.i, label %do.end61.i.if.then17_crit_edge, label %if.end65.i

do.end61.i.if.then17_crit_edge:                   ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end65.i:                                       ; preds = %do.end61.i
  %weight.i137.i = getelementptr inbounds %struct.ip_vs_dest, ptr %66, i32 0, i32 7
  %call.i.i.i138.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i137.i, i32 noundef 4) #11
  %67 = ptrtoint ptr %weight.i137.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %weight.i137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i139.i = icmp slt i32 %68, 1
  br i1 %cmp.i139.i, label %if.end65.i.do.body69.i_crit_edge, label %is_unavailable.exit144.i

if.end65.i.do.body69.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body69.i

is_unavailable.exit144.i:                         ; preds = %if.end65.i
  %flags.i140.i = getelementptr inbounds %struct.ip_vs_dest, ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %flags.i140.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i140.i, align 4
  %and.i141.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool.i142.not.i = icmp eq i32 %and.i141.i, 0
  br i1 %tobool.i142.not.i, label %is_unavailable.exit144.i.do.body19_crit_edge, label %is_unavailable.exit144.i.do.body69.i_crit_edge

is_unavailable.exit144.i.do.body69.i_crit_edge:   ; preds = %is_unavailable.exit144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body69.i

is_unavailable.exit144.i.do.body19_crit_edge:     ; preds = %is_unavailable.exit144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body69.i:                                      ; preds = %is_unavailable.exit144.i.do.body69.i_crit_edge, %if.end65.i.do.body69.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf70.i) #11
  %71 = call ptr @memset(ptr %ip_vs_dbg_buf70.i, i32 255, i32 160)
  %call72.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call72.i)
  %cmp73.i = icmp sgt i32 %call72.i, 5
  br i1 %cmp73.i, label %do.end78.i, label %do.body69.i.if.end88.i_crit_edge

do.body69.i.if.end88.i_crit_edge:                 ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

do.end78.i:                                       ; preds = %do.body69.i
  %af80.i = getelementptr inbounds %struct.ip_vs_dest, ptr %66, i32 0, i32 2
  %72 = ptrtoint ptr %af80.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %af80.i, align 8
  %addr83.i = getelementptr inbounds %struct.ip_vs_dest, ptr %66, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %73)
  %cmp.i145.i = icmp eq i16 %73, 10
  %.str.6..str.7.i148.i = select i1 %cmp.i145.i, ptr @.str.6, ptr @.str.7
  %call3.i149.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf70.i, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i148.i, ptr noundef %addr83.i) #11
  %74 = add i32 %call3.i149.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %74)
  %cmp7.i152.i = icmp ult i32 %74, -162
  br i1 %cmp7.i152.i, label %do.body10.i153.i, label %ip_vs_dbg_addr.exit155.i, !prof !81

do.body10.i153.i:                                 ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit155.i:                         ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  %port85.i = getelementptr inbounds %struct.ip_vs_dest, ptr %66, i32 0, i32 3
  %75 = ptrtoint ptr %port85.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %port85.i, align 2
  %conv86.i = zext i16 %76 to i32
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %ip_vs_dbg_buf70.i, i32 noundef %conv86.i, i32 noundef %rem37.i) #17
  br label %if.end88.i

if.end88.i:                                       ; preds = %ip_vs_dbg_addr.exit155.i, %do.body69.i.if.end88.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf70.i) #11
  %inc.i = add nuw nsw i32 %offset.0158.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4093
  br i1 %exitcond.not.i, label %if.end88.i.if.then17_crit_edge, label %if.end88.i.for.body.i_crit_edge

if.end88.i.for.body.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end88.i.if.then17_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i65) #11
  %77 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.i.i68 = icmp eq i16 %28, 10
  br i1 %cmp.i.i68, label %if.then.i.i75, label %if.else.ip_vs_mh_hashkey.exit.i85_crit_edge

if.else.ip_vs_mh_hashkey.exit.i85_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_hashkey.exit.i85

if.then.i.i75:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i69 = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx1.i.i69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx1.i.i69, align 4
  %xor.i.i70 = xor i32 %80, %78
  %arrayidx2.i.i71 = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx2.i.i71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i.i71, align 4
  %xor3.i.i72 = xor i32 %xor.i.i70, %82
  %arrayidx4.i.i73 = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  %83 = ptrtoint ptr %arrayidx4.i.i73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx4.i.i73, align 4
  %xor5.i.i74 = xor i32 %xor3.i.i72, %84
  br label %ip_vs_mh_hashkey.exit.i85

ip_vs_mh_hashkey.exit.i85:                        ; preds = %if.then.i.i75, %if.else.ip_vs_mh_hashkey.exit.i85_crit_edge
  %addr_fold.0.i.i76 = phi i32 [ %xor5.i.i74, %if.then.i.i75 ], [ %78, %if.else.ip_vs_mh_hashkey.exit.i85_crit_edge ]
  %conv.i.i77 = zext i16 %port.0 to i32
  %add6.i.i78 = add i32 %addr_fold.0.i.i76, %conv.i.i77
  %85 = ptrtoint ptr %v.i.i65 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add6.i.i78, ptr %v.i.i65, align 4
  %call.i.i.i79 = call i32 @__hsiphash_unaligned(ptr noundef nonnull %v.i.i65, i32 noundef 4, ptr noundef %hash1.i67) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i65) #11
  %rem.i80 = urem i32 %call.i.i.i79, 4093
  %lookup.i81 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %24, i32 0, i32 1
  %86 = ptrtoint ptr %lookup.i81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lookup.i81, align 4
  %arrayidx.i82 = getelementptr %struct.ip_vs_mh_lookup, ptr %87, i32 %rem.i80
  %88 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %arrayidx.i82, align 4
  %call3.i83 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83)
  %tobool.not.i84 = icmp eq i32 %call3.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i88, label %ip_vs_mh_hashkey.exit.i85.do.end9.i92_crit_edge

ip_vs_mh_hashkey.exit.i85.do.end9.i92_crit_edge:  ; preds = %ip_vs_mh_hashkey.exit.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i92

land.lhs.true.i88:                                ; preds = %ip_vs_mh_hashkey.exit.i85
  %call4.i86 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i86)
  %tobool5.not.i87 = icmp eq i32 %call4.i86, 0
  br i1 %tobool5.not.i87, label %land.lhs.true.i88.do.end9.i92_crit_edge, label %land.lhs.true6.i89

land.lhs.true.i88.do.end9.i92_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i92

land.lhs.true6.i89:                               ; preds = %land.lhs.true.i88
  %.b17.i = load i1, ptr @ip_vs_mh_get.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true6.i89.do.end9.i92_crit_edge, label %if.then.i90

land.lhs.true6.i89.do.end9.i92_crit_edge:         ; preds = %land.lhs.true6.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i92

if.then.i90:                                      ; preds = %land.lhs.true6.i89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ip_vs_mh_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 241, ptr noundef nonnull @.str.16) #11
  br label %do.end9.i92

do.end9.i92:                                      ; preds = %if.then.i90, %land.lhs.true6.i89.do.end9.i92_crit_edge, %land.lhs.true.i88.do.end9.i92_crit_edge, %ip_vs_mh_hashkey.exit.i85.do.end9.i92_crit_edge
  %tobool11.not.i91 = icmp eq ptr %89, null
  br i1 %tobool11.not.i91, label %do.end9.i92.if.then17_crit_edge, label %lor.lhs.false.i

do.end9.i92.if.then17_crit_edge:                  ; preds = %do.end9.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false.i:                                  ; preds = %do.end9.i92
  %weight.i.i93 = getelementptr inbounds %struct.ip_vs_dest, ptr %89, i32 0, i32 7
  %call.i.i.i.i94 = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i.i93, i32 noundef 4) #11
  %90 = ptrtoint ptr %weight.i.i93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %weight.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i18.i = icmp slt i32 %91, 1
  br i1 %cmp.i18.i, label %lor.lhs.false.i.if.then17_crit_edge, label %is_unavailable.exit.i98

lor.lhs.false.i.if.then17_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

is_unavailable.exit.i98:                          ; preds = %lor.lhs.false.i
  %flags.i.i95 = getelementptr inbounds %struct.ip_vs_dest, ptr %89, i32 0, i32 5
  %92 = ptrtoint ptr %flags.i.i95 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flags.i.i95, align 4
  %and.i.i96 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.i.not.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.i.not.i97, label %is_unavailable.exit.i98.do.body19_crit_edge, label %is_unavailable.exit.i98.if.then17_crit_edge

is_unavailable.exit.i98.if.then17_crit_edge:      ; preds = %is_unavailable.exit.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

is_unavailable.exit.i98.do.body19_crit_edge:      ; preds = %is_unavailable.exit.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

if.then17:                                        ; preds = %is_unavailable.exit.i98.if.then17_crit_edge, %lor.lhs.false.i.if.then17_crit_edge, %do.end9.i92.if.then17_crit_edge, %if.end88.i.if.then17_crit_edge, %do.end61.i.if.then17_crit_edge, %do.end9.i.if.then17_crit_edge
  call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.12) #11
  br label %cleanup

do.body19:                                        ; preds = %is_unavailable.exit.i98.do.body19_crit_edge, %is_unavailable.exit144.i.do.body19_crit_edge, %is_unavailable.exit.i.do.body19_crit_edge
  %dest.0 = phi ptr [ %41, %is_unavailable.exit.i.do.body19_crit_edge ], [ %89, %is_unavailable.exit.i98.do.body19_crit_edge ], [ %66, %is_unavailable.exit144.i.do.body19_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
  %94 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call20 = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, 5
  br i1 %cmp21, label %do.end25, label %do.body19.if.end36_crit_edge

do.body19.if.end36_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end25:                                         ; preds = %do.body19
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %95 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %96)
  %cmp.i99 = icmp eq i16 %96, 10
  %.str.6..str.7.i = select i1 %cmp.i99, ptr @.str.6, ptr @.str.7
  %call3.i101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i, ptr noundef %cond) #11
  %len.0.i = add i32 %call3.i101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !81

do.body10.i:                                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end25
  %af29 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 2
  %97 = ptrtoint ptr %af29 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %af29, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %98)
  %cmp.i102 = icmp eq i16 %98, 10
  %arrayidx.i103 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i104 = sub nsw i32 159, %call3.i101
  %.str.6..str.7.i105 = select i1 %cmp.i102, ptr @.str.6, ptr @.str.7
  %call3.i106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i103, i32 noundef %sub.i104, ptr noundef nonnull %.str.6..str.7.i105, ptr noundef %addr) #11
  %len.0.i107 = add nsw i32 %call3.i101, 2
  %add5.i108 = add i32 %len.0.i107, %call3.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i108)
  %cmp7.i109 = icmp ugt i32 %add5.i108, 161
  br i1 %cmp7.i109, label %do.body10.i110, label %ip_vs_dbg_addr.exit112, !prof !81

do.body10.i110:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit112:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv28 = zext i16 %port.0 to i32
  %port33 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 3
  %99 = ptrtoint ptr %port33 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %port33, align 2
  %conv34 = zext i16 %100 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv28, ptr noundef %arrayidx.i103, i32 noundef %conv34) #17
  br label %if.end36

if.end36:                                         ; preds = %ip_vs_dbg_addr.exit112, %do.body19.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then17
  %retval.0 = phi ptr [ %dest.0, %if.end36 ], [ null, %if.then17 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_mh_reassign(ptr noundef %s, ptr noundef %svc) unnamed_addr #2 align 64 {
entry:
  %v.i2.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dests = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 13
  %0 = ptrtoint ptr %num_dests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_dests, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %1)
  %cmp = icmp ugt i32 %1, 4093
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.end.if.end8_crit_edge, label %if.end7.i.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end7.i.i:                                      ; preds = %if.end
  %2 = shl nuw nsw i32 %1, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #15
  %dest_setup = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %dest_setup to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %dest_setup, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.if.end8_crit_edge

if.end7.i.i.if.end8_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end7.i.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %gcd.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %gcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.end8.if.then.i_crit_edge, label %if.end.i

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i:                                         ; preds = %if.end8
  %destinations.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %6 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destinations.i, align 4
  %cmp2.not16.i = icmp eq ptr %7, %destinations.i
  br i1 %cmp2.not16.i, label %if.end.i.ip_vs_mh_permutate.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.ip_vs_mh_permutate.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_permutate.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %dest_setup.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 2
  %8 = ptrtoint ptr %dest_setup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_setup.i, align 4
  %af.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %hash1.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 3
  %hash2.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 4
  %rshift.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %ip_vs_mh_hashkey.exit15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi ptr [ %7, %while.body.lr.ph.i ], [ %50, %ip_vs_mh_hashkey.exit15.i.while.body.i_crit_edge ]
  %ds.017.i = phi ptr [ %9, %while.body.lr.ph.i ], [ %incdec.ptr.i, %ip_vs_mh_hashkey.exit15.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %af.i, align 4
  %addr.i = getelementptr inbounds %struct.ip_vs_dest, ptr %10, i32 0, i32 4
  %port.i = getelementptr inbounds %struct.ip_vs_dest, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #11
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %12)
  %cmp.i.i = icmp eq i16 %12, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.ip_vs_mh_hashkey.exit.i_crit_edge

while.body.i.ip_vs_mh_hashkey.exit.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_hashkey.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %18, %16
  %arrayidx2.i.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i.i, align 4
  %xor3.i.i = xor i32 %xor.i.i, %20
  %arrayidx4.i.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor3.i.i, %22
  br label %ip_vs_mh_hashkey.exit.i

ip_vs_mh_hashkey.exit.i:                          ; preds = %if.then.i.i, %while.body.i.ip_vs_mh_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %16, %while.body.i.ip_vs_mh_hashkey.exit.i_crit_edge ]
  %conv.i.i = zext i16 %14 to i32
  %add6.i.i = add i32 %addr_fold.0.i.i, %conv.i.i
  %23 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add6.i.i, ptr %v.i.i, align 4
  %call.i.i1.i = call i32 @__hsiphash_unaligned(ptr noundef nonnull %v.i.i, i32 noundef 4, ptr noundef %hash1.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #11
  %rem.i = urem i32 %call.i.i1.i, 4093
  %24 = ptrtoint ptr %ds.017.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.i, ptr %ds.017.i, align 4
  %25 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %af.i, align 4
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i2.i) #11
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %26)
  %cmp.i3.i = icmp eq i16 %26, 10
  br i1 %cmp.i3.i, label %if.then.i10.i, label %ip_vs_mh_hashkey.exit.i.ip_vs_mh_hashkey.exit15.i_crit_edge

ip_vs_mh_hashkey.exit.i.ip_vs_mh_hashkey.exit15.i_crit_edge: ; preds = %ip_vs_mh_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_hashkey.exit15.i

if.then.i10.i:                                    ; preds = %ip_vs_mh_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i4.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx1.i4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i4.i, align 4
  %xor.i5.i = xor i32 %32, %30
  %arrayidx2.i6.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx2.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i6.i, align 4
  %xor3.i7.i = xor i32 %xor.i5.i, %34
  %arrayidx4.i8.i = getelementptr %struct.ip_vs_dest, ptr %10, i32 0, i32 4, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx4.i8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i8.i, align 4
  %xor5.i9.i = xor i32 %xor3.i7.i, %36
  br label %ip_vs_mh_hashkey.exit15.i

ip_vs_mh_hashkey.exit15.i:                        ; preds = %if.then.i10.i, %ip_vs_mh_hashkey.exit.i.ip_vs_mh_hashkey.exit15.i_crit_edge
  %addr_fold.0.i11.i = phi i32 [ %xor5.i9.i, %if.then.i10.i ], [ %30, %ip_vs_mh_hashkey.exit.i.ip_vs_mh_hashkey.exit15.i_crit_edge ]
  %conv.i12.i = zext i16 %28 to i32
  %add6.i13.i = add i32 %addr_fold.0.i11.i, %conv.i12.i
  %37 = ptrtoint ptr %v.i2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add6.i13.i, ptr %v.i2.i, align 4
  %call.i.i14.i = call i32 @__hsiphash_unaligned(ptr noundef nonnull %v.i2.i, i32 noundef 4, ptr noundef %hash2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i2.i) #11
  %rem8.i = urem i32 %call.i.i14.i, 4092
  %add.i = add nuw nsw i32 %rem8.i, 1
  %skip.i = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.017.i, i32 0, i32 1
  %38 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %skip.i, align 4
  %39 = ptrtoint ptr %ds.017.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ds.017.i, align 4
  %perm.i = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.017.i, i32 0, i32 2
  %41 = ptrtoint ptr %perm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %perm.i, align 4
  %last_weight.i = getelementptr inbounds %struct.ip_vs_dest, ptr %10, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %last_weight.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %last_weight.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %last_weight.i, align 4
  %44 = ptrtoint ptr %gcd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gcd.i, align 4
  %div.i = sdiv i32 %43, %45
  %46 = ptrtoint ptr %rshift.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rshift.i, align 4
  %shr.i = ashr i32 %div.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp12.i = icmp ne i32 %43, 0
  %conv13.i = zext i1 %cmp12.i to i32
  %cond.i = select i1 %tobool.not.i, i32 %conv13.i, i32 %shr.i
  %turns.i = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.017.i, i32 0, i32 3
  %48 = ptrtoint ptr %turns.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond.i, ptr %turns.i, align 4
  %incdec.ptr.i = getelementptr %struct.ip_vs_mh_dest_setup, ptr %ds.017.i, i32 1
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %10, align 4
  %cmp2.not.i = icmp eq ptr %50, %destinations.i
  br i1 %cmp2.not.i, label %ip_vs_mh_hashkey.exit15.i.ip_vs_mh_permutate.exit_crit_edge, label %ip_vs_mh_hashkey.exit15.i.while.body.i_crit_edge

ip_vs_mh_hashkey.exit15.i.while.body.i_crit_edge: ; preds = %ip_vs_mh_hashkey.exit15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

ip_vs_mh_hashkey.exit15.i.ip_vs_mh_permutate.exit_crit_edge: ; preds = %ip_vs_mh_hashkey.exit15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_mh_permutate.exit

ip_vs_mh_permutate.exit:                          ; preds = %ip_vs_mh_hashkey.exit15.i.ip_vs_mh_permutate.exit_crit_edge, %if.end.i.ip_vs_mh_permutate.exit_crit_edge
  %51 = ptrtoint ptr %gcd.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %gcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i46 = icmp slt i32 %.pr, 1
  br i1 %cmp.i46, label %ip_vs_mh_permutate.exit.if.then.i_crit_edge, label %if.end.i50

ip_vs_mh_permutate.exit.if.then.i_crit_edge:      ; preds = %ip_vs_mh_permutate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %ip_vs_mh_permutate.exit.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  %lookup.i.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 1
  %52 = ptrtoint ptr %lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lookup.i.i, align 4
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i48.do.end.i.i_crit_edge, %if.then.i
  %i.021.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i48.do.end.i.i_crit_edge ]
  %l.019.i.i = phi ptr [ %53, %if.then.i ], [ %incdec.ptr.i.i, %if.end.i.i48.do.end.i.i_crit_edge ]
  %54 = ptrtoint ptr %l.019.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %l.019.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %do.end.i.i.if.end.i.i48_crit_edge, label %if.then.i.i47

do.end.i.i.if.end.i.i48_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i48

if.then.i.i47:                                    ; preds = %do.end.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %refcnt.i.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %55, i32 0, i32 12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.then.i.i47.ip_vs_dest_put.exit.i.i_crit_edge, !prof !81

if.then.i.i47.ip_vs_dest_put.exit.i.i_crit_edge:  ; preds = %if.then.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_dest_put.exit.i.i

if.then3.i.i.i.i.i:                               ; preds = %if.then.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 4) #11
  br label %ip_vs_dest_put.exit.i.i

ip_vs_dest_put.exit.i.i:                          ; preds = %if.then3.i.i.i.i.i, %if.then.i.i47.ip_vs_dest_put.exit.i.i_crit_edge
  %57 = ptrtoint ptr %l.019.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr null, ptr %l.019.i.i, align 4
  br label %if.end.i.i48

if.end.i.i48:                                     ; preds = %ip_vs_dest_put.exit.i.i, %do.end.i.i.if.end.i.i48_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.ip_vs_mh_lookup, ptr %l.019.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4093
  br i1 %exitcond.not.i.i, label %if.end.i.i48.do.body_crit_edge, label %if.end.i.i48.do.end.i.i_crit_edge

if.end.i.i48.do.end.i.i_crit_edge:                ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end.i.i48.do.body_crit_edge:                   ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i50:                                       ; preds = %ip_vs_mh_permutate.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 512) #14
  %tobool.not.i49 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i49, label %if.end.i50.out_crit_edge, label %if.end2.i

if.end.i50.out_crit_edge:                         ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2.i:                                        ; preds = %if.end.i50
  %dest_setup.i52 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 2
  %lookup.i = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 1
  br label %if.end7.i

while.cond.loopexit.i:                            ; preds = %if.end62.i.while.cond.loopexit.i_crit_edge, %if.then13.i.while.cond.loopexit.i_crit_edge, %if.end7.i.while.cond.loopexit.i_crit_edge
  %dt_count.1.ph.lcssa112.i = phi i32 [ %dt_count.0139.i, %if.end7.i.while.cond.loopexit.i_crit_edge ], [ %dt_count.1.ph132.i, %if.then13.i.while.cond.loopexit.i_crit_edge ], [ %dt_count.2.i, %if.end62.i.while.cond.loopexit.i_crit_edge ]
  %n.1.ph.lcssa111.i = phi i32 [ %n.0141.i, %if.end7.i.while.cond.loopexit.i_crit_edge ], [ %n.1.ph135.i, %if.then13.i.while.cond.loopexit.i_crit_edge ], [ %inc.i, %if.end62.i.while.cond.loopexit.i_crit_edge ]
  %cmp3.i = icmp slt i32 %n.1.ph.lcssa111.i, 4093
  br i1 %cmp3.i, label %while.cond.loopexit.i.if.end7.i_crit_edge, label %while.cond.loopexit.i.out.i_crit_edge

while.cond.loopexit.i.out.i_crit_edge:            ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.cond.loopexit.i.if.end7.i_crit_edge:        ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %while.cond.loopexit.i.if.end7.i_crit_edge, %if.end2.i
  %n.0141.i = phi i32 [ 0, %if.end2.i ], [ %n.1.ph.lcssa111.i, %while.cond.loopexit.i.if.end7.i_crit_edge ]
  %dt_count.0139.i = phi i32 [ 0, %if.end2.i ], [ %dt_count.1.ph.lcssa112.i, %while.cond.loopexit.i.if.end7.i_crit_edge ]
  %59 = ptrtoint ptr %destinations.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %destinations.i, align 4
  %cmp10.not113131.i = icmp eq ptr %60, %destinations.i
  br i1 %cmp10.not113131.i, label %if.end7.i.while.cond.loopexit.i_crit_edge, label %while.body11.lr.ph.preheader.i

if.end7.i.while.cond.loopexit.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

while.body11.lr.ph.preheader.i:                   ; preds = %if.end7.i
  %61 = ptrtoint ptr %dest_setup.i52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dest_setup.i52, align 4
  br label %while.body11.lr.ph.i

while.body11.lr.ph.i:                             ; preds = %if.end62.i.while.body11.lr.ph.i_crit_edge, %while.body11.lr.ph.preheader.i
  %n.1.ph135.i = phi i32 [ %inc.i, %if.end62.i.while.body11.lr.ph.i_crit_edge ], [ %n.0141.i, %while.body11.lr.ph.preheader.i ]
  %ds.0.ph134.i = phi ptr [ %ds.1.i, %if.end62.i.while.body11.lr.ph.i_crit_edge ], [ %62, %while.body11.lr.ph.preheader.i ]
  %p.2.ph133.i = phi ptr [ %p.3.i, %if.end62.i.while.body11.lr.ph.i_crit_edge ], [ %60, %while.body11.lr.ph.preheader.i ]
  %dt_count.1.ph132.i = phi i32 [ %dt_count.2.i, %if.end62.i.while.body11.lr.ph.i_crit_edge ], [ %dt_count.0139.i, %while.body11.lr.ph.preheader.i ]
  br label %while.body11.i

while.body11.i:                                   ; preds = %if.then13.i.while.body11.i_crit_edge, %while.body11.lr.ph.i
  %ds.0115.i = phi ptr [ %ds.0.ph134.i, %while.body11.lr.ph.i ], [ %incdec.ptr.i55, %if.then13.i.while.body11.i_crit_edge ]
  %p.2114.i = phi ptr [ %p.2.ph133.i, %while.body11.lr.ph.i ], [ %66, %if.then13.i.while.body11.i_crit_edge ]
  %turns.i53 = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 0, i32 3
  %63 = ptrtoint ptr %turns.i53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %turns.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp12.i54 = icmp slt i32 %64, 1
  br i1 %cmp12.i54, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %while.body11.i
  %65 = ptrtoint ptr %p.2114.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p.2114.i, align 4
  %incdec.ptr.i55 = getelementptr %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 1
  %cmp10.not.i = icmp eq ptr %66, %destinations.i
  br i1 %cmp10.not.i, label %if.then13.i.while.cond.loopexit.i_crit_edge, label %if.then13.i.while.body11.i_crit_edge

if.then13.i.while.body11.i_crit_edge:             ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11.i

if.then13.i.while.cond.loopexit.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

if.end15.i:                                       ; preds = %while.body11.i
  %turns.i53.le = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 0, i32 3
  %perm.i56 = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 0, i32 2
  %67 = ptrtoint ptr %perm.i56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %c.0121.i = load i32, ptr %perm.i56, align 4
  %div3.i122.i = lshr i32 %c.0121.i, 5
  %arrayidx.i123.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %div3.i122.i
  %68 = ptrtoint ptr %arrayidx.i123.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.i123.i, align 4
  %and.i124.i = and i32 %c.0121.i, 31
  %70 = shl nuw i32 1, %and.i124.i
  %71 = and i32 %70, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool18.not125.i = icmp eq i32 %71, 0
  br i1 %tobool18.not125.i, label %if.end15.i.while.end.i_crit_edge, label %while.body19.lr.ph.i

if.end15.i.while.end.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body19.lr.ph.i:                             ; preds = %if.end15.i
  %skip.i57 = getelementptr inbounds %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 0, i32 1
  br label %while.body19.i

while.body19.i:                                   ; preds = %while.body19.i.while.body19.i_crit_edge, %while.body19.lr.ph.i
  %c.0126.i = phi i32 [ %c.0121.i, %while.body19.lr.ph.i ], [ %spec.select.i, %while.body19.i.while.body19.i_crit_edge ]
  %72 = ptrtoint ptr %skip.i57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %skip.i57, align 4
  %add21.i = add i32 %73, %c.0126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %add21.i)
  %cmp23.i = icmp ugt i32 %add21.i, 4092
  %sub26.i = add i32 %add21.i, -4093
  %spec.select.i = select i1 %cmp23.i, i32 %sub26.i, i32 %add21.i
  %74 = ptrtoint ptr %perm.i56 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select.i, ptr %perm.i56, align 4
  %div3.i.i = lshr i32 %spec.select.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %div3.i.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %spec.select.i, 31
  %77 = shl nuw i32 1, %and.i.i
  %78 = and i32 %77, %76
  %tobool18.not.i = icmp eq i32 %78, 0
  br i1 %tobool18.not.i, label %while.body19.i.while.end.i_crit_edge, label %while.body19.i.while.body19.i_crit_edge

while.body19.i.while.body19.i_crit_edge:          ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body19.i

while.body19.i.while.end.i_crit_edge:             ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body19.i.while.end.i_crit_edge, %if.end15.i.while.end.i_crit_edge
  %shl.i.pre-phi.i = phi i32 [ %70, %if.end15.i.while.end.i_crit_edge ], [ %77, %while.body19.i.while.end.i_crit_edge ]
  %div3.i.lcssa.i = phi i32 [ %div3.i122.i, %if.end15.i.while.end.i_crit_edge ], [ %div3.i.i, %while.body19.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %c.0121.i, %if.end15.i.while.end.i_crit_edge ], [ %spec.select.i, %while.body19.i.while.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %69, %if.end15.i.while.end.i_crit_edge ], [ %76, %while.body19.i.while.end.i_crit_edge ]
  %arrayidx.i.le.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %div3.i.lcssa.i
  %or.i.i = or i32 %.lcssa.i, %shl.i.pre-phi.i
  %79 = ptrtoint ptr %arrayidx.i.le.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i, ptr %arrayidx.i.le.i, align 4
  %80 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lookup.i, align 4
  %arrayidx29.i = getelementptr %struct.ip_vs_mh_lookup, ptr %81, i32 %c.0.lcssa.i
  %82 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx29.i, align 4
  %cmp32.not.i = icmp eq ptr %83, %p.2114.i
  br i1 %cmp32.not.i, label %while.end.i.if.end52.i_crit_edge, label %if.then33.i

while.end.i.if.end52.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then33.i:                                      ; preds = %while.end.i
  %tobool34.not.i = icmp eq ptr %83, null
  br i1 %tobool34.not.i, label %if.then33.i.if.end36.i_crit_edge, label %if.then35.i

if.then33.i.if.end36.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.then33.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %83, i32 0, i32 12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i58 = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i58, label %if.then3.i.i.i.i, label %if.then35.i.if.end36.i_crit_edge, !prof !81

if.then35.i.if.end36.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then3.i.i.i.i:                                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then3.i.i.i.i, %if.then35.i.if.end36.i_crit_edge, %if.then33.i.if.end36.i_crit_edge
  %refcnt.i104.i = getelementptr inbounds %struct.ip_vs_dest, ptr %p.2114.i, i32 0, i32 12
  %call.i.i.i.i.i.i105.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i104.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcnt.i104.i, i32 1, i32 3, i32 1) #11
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i104.i, ptr %refcnt.i104.i, i32 1, ptr elementtype(i32) %refcnt.i104.i) #11, !srcloc !85
  %asmresult.i.i.i.i.i.i106.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i106.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i106.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end36.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !81

if.end36.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end36.i
  %add.i.i.i.i.i59 = add i32 %asmresult.i.i.i.i.i.i106.i, 1
  %86 = or i32 %add.i.i.i.i.i59, %asmresult.i.i.i.i.i.i106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %.not.i.i.i.i.i = icmp sgt i32 %86, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !83

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_dest_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end36.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end36.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i104.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %ip_vs_dest_hold.exit.i

ip_vs_dest_hold.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge
  %87 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lookup.i, align 4
  %arrayidx44.i = getelementptr %struct.ip_vs_mh_lookup, ptr %88, i32 %c.0.lcssa.i
  %89 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %p.2114.i, ptr %arrayidx44.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %ip_vs_dest_hold.exit.i, %while.end.i.if.end52.i_crit_edge
  %inc.i = add i32 %n.1.ph135.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %inc.i)
  %cmp53.i = icmp eq i32 %inc.i, 4093
  br i1 %cmp53.i, label %if.end52.i.out.i_crit_edge, label %if.end55.i

if.end52.i.out.i_crit_edge:                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end55.i:                                       ; preds = %if.end52.i
  %inc56.i = add i32 %dt_count.1.ph132.i, 1
  %90 = ptrtoint ptr %turns.i53.le to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %turns.i53.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56.i, i32 %91)
  %cmp58.not.i = icmp slt i32 %inc56.i, %91
  br i1 %cmp58.not.i, label %if.end55.i.if.end62.i_crit_edge, label %if.then59.i

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then59.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %p.2114.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p.2114.i, align 4
  %incdec.ptr61.i = getelementptr %struct.ip_vs_mh_dest_setup, ptr %ds.0115.i, i32 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %if.end55.i.if.end62.i_crit_edge
  %dt_count.2.i = phi i32 [ 0, %if.then59.i ], [ %inc56.i, %if.end55.i.if.end62.i_crit_edge ]
  %p.3.i = phi ptr [ %93, %if.then59.i ], [ %p.2114.i, %if.end55.i.if.end62.i_crit_edge ]
  %ds.1.i = phi ptr [ %incdec.ptr61.i, %if.then59.i ], [ %ds.0115.i, %if.end55.i.if.end62.i_crit_edge ]
  %cmp10.not113.i = icmp eq ptr %p.3.i, %destinations.i
  br i1 %cmp10.not113.i, label %if.end62.i.while.cond.loopexit.i_crit_edge, label %if.end62.i.while.body11.lr.ph.i_crit_edge

if.end62.i.while.body11.lr.ph.i_crit_edge:        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11.lr.ph.i

if.end62.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

out.i:                                            ; preds = %if.end52.i.out.i_crit_edge, %while.cond.loopexit.i.out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %do.body

do.body:                                          ; preds = %out.i, %if.end.i.i48.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
  %94 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call14 = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, 5
  br i1 %cmp15, label %do.end, label %do.body.if.end21_crit_edge

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end:                                           ; preds = %do.body
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %95 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %af, align 4
  %addr = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %96)
  %cmp.i60 = icmp eq i16 %96, 10
  %.str.6..str.7.i = select i1 %cmp.i60, ptr @.str.6, ptr @.str.7
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i, ptr noundef %addr) #11
  %97 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %97)
  %cmp7.i = icmp ult i32 %97, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !81

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 6
  %98 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %port, align 8
  %conv19 = zext i16 %99 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv19) #17
  br label %if.end21

if.end21:                                         ; preds = %ip_vs_dbg_addr.exit, %do.body.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
  br label %out

out:                                              ; preds = %if.end21, %if.end.i50.out_crit_edge
  %retval.0.i69 = phi i32 [ 0, %if.end21 ], [ -12, %if.end.i50.out_crit_edge ]
  %100 = ptrtoint ptr %num_dests to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_dests, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp25.not = icmp eq i32 %101, 0
  br i1 %cmp25.not, label %out.cleanup_crit_edge, label %if.then27

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %dest_setup28 = getelementptr inbounds %struct.ip_vs_mh_state, ptr %s, i32 0, i32 2
  %102 = ptrtoint ptr %dest_setup28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dest_setup28, align 4
  call void @kfree(ptr noundef %103) #11
  %104 = ptrtoint ptr %dest_setup28 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %dest_setup28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %out.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %retval.0.i69, %if.then27 ], [ %retval.0.i69, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_mh_state_free(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lookup = getelementptr inbounds %struct.ip_vs_mh_state, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lookup, align 4
  tail call void @kfree(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %head) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hsiphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_ip_vs_mh__592_536_ip_vs_mh_init6, !1, !"__initcall__kmod_ip_vs_mh__592_536_ip_vs_mh_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 536, i32 1}
!2 = !{ptr @__exitcall_ip_vs_mh_cleanup, !3, !"__exitcall_ip_vs_mh_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 537, i32 1}
!4 = !{ptr @__UNIQUE_ID_description593, !5, !"__UNIQUE_ID_description593", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 538, i32 1}
!6 = !{ptr @__UNIQUE_ID_file594, !7, !"__UNIQUE_ID_file594", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 539, i32 1}
!8 = !{ptr @__UNIQUE_ID_license595, !7, !"__UNIQUE_ID_license595", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author596, !10, !"__UNIQUE_ID_author596", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 540, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 513, i32 12}
!13 = !{ptr @ip_vs_mh_scheduler, !14, !"ip_vs_mh_scheduler", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 512, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 403, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ip_vs_mh_init_svc._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ip_vs_mh_init_svc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"primes", i1 false, i1 false}
!22 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 50, i32 12}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 311, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ip_vs_mh_reassign._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ip_vs_mh_reassign._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 209, i32 11}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 113, i32 10}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 428, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ip_vs_mh_done_svc._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ip_vs_mh_done_svc._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 485, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ip_vs_mh_schedule._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ip_vs_mh_schedule._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 498, i32 28}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 502, i32 2}
!50 = !{ptr @ip_vs_mh_schedule._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ip_vs_mh_schedule._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 258, i32 9}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 264, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ip_vs_mh_get_fallback._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ip_vs_mh_get_fallback._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 274, i32 10}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 279, i32 3}
!64 = !{ptr @ip_vs_mh_get_fallback._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ip_vs_mh_get_fallback._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/netfilter/ipvs/ip_vs_mh.c", i32 241, i32 28}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i32 0, i32 33}
!78 = !{i64 2158080286}
!79 = !{i64 2148450967}
!80 = !{i64 2148365431, i64 2148365463, i64 2148365492, i64 2148365526, i64 2148365557, i64 2148365580}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{!"auto-init"}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2158042767, i64 2158043251, i64 2158042804, i64 2158042860, i64 2158042894, i64 2158042918, i64 2158042959, i64 2158042980, i64 2158043008, i64 2158043042}
!85 = !{i64 2148362966, i64 2148362998, i64 2148363027, i64 2148363061, i64 2148363092, i64 2148363115}
