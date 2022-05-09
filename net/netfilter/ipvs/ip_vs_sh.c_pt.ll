; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_sh.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_sh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_scheduler = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_sh_state = type { %struct.callback_head, [256 x %struct.ip_vs_sh_bucket] }
%struct.ip_vs_sh_bucket = type { ptr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
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

@ip_vs_sh_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_sh_scheduler, ptr @ip_vs_sh_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_sh_init_svc, ptr @ip_vs_sh_done_svc, ptr @ip_vs_sh_dest_changed, ptr @ip_vs_sh_dest_changed, ptr @ip_vs_sh_dest_changed, ptr @ip_vs_sh_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_sh__701_376_ip_vs_sh_init6 = internal global ptr @ip_vs_sh_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_sh_cleanup = internal global ptr @ip_vs_sh_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file702 = internal constant [42 x i8] c"ip_vs_sh.file=net/netfilter/ipvs/ip_vs_sh\00", section ".modinfo", align 1
@__UNIQUE_ID_license703 = internal constant [21 x i8] c"ip_vs_sh.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sh\00", [29 x i8] zeroinitializer }, align 32
@ip_vs_sh_init_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017IPVS: SH hash table (memory=%zdbytes) allocated for current service\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_sh_init_svc\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/ipvs/ip_vs_sh.c\00", [34 x i8] zeroinitializer }, align 32
@ip_vs_sh_init_svc._entry_ptr = internal global ptr @ip_vs_sh_init_svc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_sh_reassign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: assigned i: %d dest: %s weight: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_sh_reassign\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_sh_reassign._entry_ptr = internal global ptr @ip_vs_sh_reassign._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_sh_done_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017IPVS: SH hash table (memory=%zdbytes) released\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_sh_done_svc\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_sh_done_svc._entry_ptr = internal global ptr @ip_vs_sh_done_svc._entry, section ".printk_index", align 4
@ip_vs_sh_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: ip_vs_sh_schedule(): Scheduling...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_sh_schedule\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_sh_schedule._entry_ptr = internal global ptr @ip_vs_sh_schedule._entry, section ".printk_index", align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_sh_schedule._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017IPVS: SH: source IP address %s --> server %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_sh_schedule._entry_ptr.15 = internal global ptr @ip_vs_sh_schedule._entry.13, section ".printk_index", align 4
@ip_vs_sh_get_fallback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ip_vs_sh_get_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: SH: selected unavailable server %s:%d, reselecting\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_vs_sh_get_fallback\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_sh_get_fallback._entry_ptr = internal global ptr @ip_vs_sh_get_fallback._entry, section ".printk_index", align 4
@ip_vs_sh_get_fallback.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_sh_get_fallback._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017IPVS: SH: selected unavailable server %s:%d (offset %d), reselecting\00", [57 x i8] zeroinitializer }, align 32
@ip_vs_sh_get_fallback._entry_ptr.22 = internal global ptr @ip_vs_sh_get_fallback._entry.20, section ".printk_index", align 4
@ip_vs_sh_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 17, i64 132]
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"ip_vs_sh_scheduler\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 348, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 350, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 238, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 190, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 196, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 200, i32 46 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 258, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 319, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 332, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 336, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 130, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 136, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../net/netfilter/ipvs/ip_vs_sh.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 150, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_file702, ptr @__UNIQUE_ID_license703, ptr @__exitcall_ip_vs_sh_cleanup, ptr @__initcall__kmod_ip_vs_sh__701_376_ip_vs_sh_init6, ptr @ip_vs_sh_cleanup, ptr @ip_vs_sh_done_svc._entry, ptr @ip_vs_sh_done_svc._entry_ptr, ptr @ip_vs_sh_get_fallback._entry, ptr @ip_vs_sh_get_fallback._entry.20, ptr @ip_vs_sh_get_fallback._entry_ptr, ptr @ip_vs_sh_get_fallback._entry_ptr.22, ptr @ip_vs_sh_init_svc._entry, ptr @ip_vs_sh_init_svc._entry_ptr, ptr @ip_vs_sh_reassign._entry, ptr @ip_vs_sh_reassign._entry_ptr, ptr @ip_vs_sh_schedule._entry, ptr @ip_vs_sh_schedule._entry.13, ptr @ip_vs_sh_schedule._entry_ptr, ptr @ip_vs_sh_schedule._entry_ptr.15, ptr @ip_vs_sh_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_init_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_reassign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_done_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_schedule._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_get_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sh_get_fallback._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_sh_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_sh_scheduler) #8
  tail call void @synchronize_rcu() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sh_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_sh_scheduler) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sh_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1032) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %1 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %sched_data, align 8
  %call1 = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 5
  br i1 %cmp2, label %do.end, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 1024) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  tail call fastcc void @ip_vs_sh_reassign(ptr noundef nonnull %call7.i.i, ptr noundef %svc)
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_sh_done_svc(ptr nocapture noundef readonly %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %buckets.i = getelementptr inbounds %struct.ip_vs_sh_state, ptr %1, i32 0, i32 1
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %b.019.i = phi ptr [ %buckets.i, %entry ], [ %incdec.ptr.i, %if.end.i.do.end.i_crit_edge ]
  %2 = ptrtoint ptr %b.019.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b.019.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i.if.end.i_crit_edge, label %if.then.i

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %3, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i.ip_vs_dest_put.exit.i_crit_edge, !prof !74

if.then.i.ip_vs_dest_put.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dest_put.exit.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  br label %ip_vs_dest_put.exit.i

ip_vs_dest_put.exit.i:                            ; preds = %if.then3.i.i.i.i, %if.then.i.ip_vs_dest_put.exit.i_crit_edge
  %5 = ptrtoint ptr %b.019.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %b.019.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %ip_vs_dest_put.exit.i, %do.end.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ip_vs_sh_bucket, ptr %b.019.i, i32 1
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %ip_vs_sh_flush.exit, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

ip_vs_sh_flush.exit:                              ; preds = %if.end.i
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ip_vs_sh_flush.exit.if.end_crit_edge, label %do.end

ip_vs_sh_flush.exit.if.end_crit_edge:             ; preds = %ip_vs_sh_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %ip_vs_sh_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ip_vs_sh_flush.exit.if.end_crit_edge
  %call = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end8, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 1024) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %if.end.do.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sh_dest_changed(ptr noundef %svc, ptr nocapture noundef readnone %dest) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  tail call fastcc void @ip_vs_sh_reassign(ptr noundef %1, ptr noundef %svc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_sh_schedule(ptr noundef %svc, ptr noundef %skb, ptr noundef %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf67.i = alloca [160 x i8], align 1
  %_ports.i = alloca [2 x i16], align 2
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  %call1 = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp = icmp sgt i32 %call1, 5
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #8
  %4 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %_ports.i, align 2, !annotation !75
  %5 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !75
  %protocol.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 2
  %conv.i = sext i16 %8 to i32
  %9 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %if.then6.ip_vs_sh_get_port.exit_crit_edge [
    i32 6, label %if.then6.sw.bb.i_crit_edge
    i32 17, label %if.then6.sw.bb.i_crit_edge126
    i32 132, label %if.then6.sw.bb.i_crit_edge127
  ]

if.then6.sw.bb.i_crit_edge127:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.sw.bb.i_crit_edge126:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.sw.bb.i_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.ip_vs_sh_get_port.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_get_port.exit

sw.bb.i:                                          ; preds = %if.then6.sw.bb.i_crit_edge, %if.then6.sw.bb.i_crit_edge126, %if.then6.sw.bb.i_crit_edge127
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
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !76

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.ip_vs_sh_get_port.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.ip_vs_sh_get_port.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_get_port.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %11, ptr noundef nonnull %_ports.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.ip_vs_sh_get_port.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.i.i.ip_vs_sh_get_port.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_get_port.exit

skb_header_pointer.exit.i:                        ; preds = %sw.bb.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %11
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.ip_vs_sh_get_port.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge, !prof !74

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

skb_header_pointer.exit.i.ip_vs_sh_get_port.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_get_port.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i25.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i, !prof !76

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14.i = getelementptr i16, ptr %retval.0.i.i25.i, i32 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %arrayidx14.sink.i = phi ptr [ %arrayidx14.i, %if.else.i ], [ %retval.0.i.i25.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %arrayidx14.sink.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx14.sink.i, align 2
  br label %ip_vs_sh_get_port.exit

ip_vs_sh_get_port.exit:                           ; preds = %cleanup.sink.split.i, %skb_header_pointer.exit.i.ip_vs_sh_get_port.exit_crit_edge, %lor.lhs.false.i.i.i.ip_vs_sh_get_port.exit_crit_edge, %if.end.i.i.i.ip_vs_sh_get_port.exit_crit_edge, %if.then6.ip_vs_sh_get_port.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %skb_header_pointer.exit.i.ip_vs_sh_get_port.exit_crit_edge ], [ 0, %if.then6.ip_vs_sh_get_port.exit_crit_edge ], [ 0, %if.end.i.i.i.ip_vs_sh_get_port.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.i.ip_vs_sh_get_port.exit_crit_edge ], [ %22, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #8
  br label %if.end8

if.end8:                                          ; preds = %ip_vs_sh_get_port.exit, %do.end5.if.end8_crit_edge
  %port.0 = phi i16 [ %retval.0.i, %ip_vs_sh_get_port.exit ], [ 0, %do.end5.if.end8_crit_edge ]
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
  %af.i62 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %27 = ptrtoint ptr %af.i62 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %af.i62, align 4
  %29 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.i.i63 = icmp eq i16 %28, 10
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  br i1 %cmp.i.i63, label %if.then.i.i, label %if.then12.ip_vs_sh_hashkey.exit.i_crit_edge

if.then12.ip_vs_sh_hashkey.exit.i_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_hashkey.exit.i

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
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
  br label %ip_vs_sh_hashkey.exit.i

ip_vs_sh_hashkey.exit.i:                          ; preds = %if.then.i.i, %if.then12.ip_vs_sh_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %30, %if.then12.ip_vs_sh_hashkey.exit.i_crit_edge ]
  %conv.i.i = zext i16 %port.0 to i32
  %add.i.i = add i32 %addr_fold.0.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %add.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr %struct.ip_vs_sh_state, ptr %24, i32 0, i32 1, i32 %shr.i.i.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %arrayidx.i, align 4
  %call3.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i58 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i, label %ip_vs_sh_hashkey.exit.i.do.end9.i_crit_edge

ip_vs_sh_hashkey.exit.i.do.end9.i_crit_edge:      ; preds = %ip_vs_sh_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %ip_vs_sh_hashkey.exit.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b114.i = load i1, ptr @ip_vs_sh_get_fallback.__warned, align 1
  br i1 %.b114.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ip_vs_sh_get_fallback.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 130, ptr noundef nonnull @.str.16) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %ip_vs_sh_hashkey.exit.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %38, null
  br i1 %tobool11.not.i, label %do.end9.i.if.then17_crit_edge, label %if.end13.i

do.end9.i.if.then17_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end13.i:                                       ; preds = %do.end9.i
  %weight.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %38, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i.i, i32 noundef 4) #8
  %39 = ptrtoint ptr %weight.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %weight.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i115.i = icmp slt i32 %40, 1
  br i1 %cmp.i115.i, label %if.end13.i.do.body17.i_crit_edge, label %is_unavailable.exit.i

if.end13.i.do.body17.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i

is_unavailable.exit.i:                            ; preds = %if.end13.i
  %flags.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %38, i32 0, i32 5
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i, align 4
  %and.i.i59 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.i.not.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.i.not.i60, label %is_unavailable.exit.i.do.body19_crit_edge, label %is_unavailable.exit.i.do.body17.i_crit_edge

is_unavailable.exit.i.do.body17.i_crit_edge:      ; preds = %is_unavailable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i

is_unavailable.exit.i.do.body19_crit_edge:        ; preds = %is_unavailable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

do.body17.i:                                      ; preds = %is_unavailable.exit.i.do.body17.i_crit_edge, %if.end13.i.do.body17.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #8
  %43 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call18.i = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18.i)
  %cmp.i = icmp sgt i32 %call18.i, 5
  br i1 %cmp.i, label %do.end23.i, label %do.body17.i.if.end32.i_crit_edge

do.body17.i.if.end32.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

do.end23.i:                                       ; preds = %do.body17.i
  %af25.i = getelementptr inbounds %struct.ip_vs_dest, ptr %38, i32 0, i32 2
  %44 = ptrtoint ptr %af25.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %af25.i, align 8
  %addr27.i = getelementptr inbounds %struct.ip_vs_dest, ptr %38, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %45)
  %cmp.i116.i = icmp eq i16 %45, 10
  %.str.6..str.7.i.i = select i1 %cmp.i116.i, ptr @.str.6, ptr @.str.7
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i.i, ptr noundef %addr27.i) #8
  %46 = add i32 %call3.i.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %46)
  %cmp7.i.i = icmp ult i32 %46, -162
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !74

do.body10.i.i:                                    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %port29.i = getelementptr inbounds %struct.ip_vs_dest, ptr %38, i32 0, i32 3
  %47 = ptrtoint ptr %port29.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %port29.i, align 2
  %conv30.i = zext i16 %48 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv30.i) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %ip_vs_dbg_addr.exit.i, %do.body17.i.if.end32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #8
  %arrayidx1.i118.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %arrayidx2.i120.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %arrayidx4.i122.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end85.i.for.body.i_crit_edge, %if.end32.i
  %offset.0153.i = phi i32 [ 0, %if.end32.i ], [ %inc.i, %if.end85.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %offset.0153.i, %shr.i.i.i
  %rem.i = and i32 %add.i, 255
  %49 = ptrtoint ptr %af.i62 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %af.i62, align 4
  %51 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %50)
  %cmp.i117.i = icmp eq i16 %50, 10
  br i1 %cmp.i117.i, label %if.then.i124.i, label %for.body.i.ip_vs_sh_hashkey.exit131.i_crit_edge

for.body.i.ip_vs_sh_hashkey.exit131.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_hashkey.exit131.i

if.then.i124.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %arrayidx1.i118.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx1.i118.i, align 4
  %xor.i119.i = xor i32 %54, %52
  %55 = ptrtoint ptr %arrayidx2.i120.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.i120.i, align 4
  %xor3.i121.i = xor i32 %xor.i119.i, %56
  %57 = ptrtoint ptr %arrayidx4.i122.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx4.i122.i, align 4
  %xor5.i123.i = xor i32 %xor3.i121.i, %58
  br label %ip_vs_sh_hashkey.exit131.i

ip_vs_sh_hashkey.exit131.i:                       ; preds = %if.then.i124.i, %for.body.i.ip_vs_sh_hashkey.exit131.i_crit_edge
  %addr_fold.0.i125.i = phi i32 [ %xor5.i123.i, %if.then.i124.i ], [ %52, %for.body.i.ip_vs_sh_hashkey.exit131.i_crit_edge ]
  %add.i127.i = add i32 %addr_fold.0.i125.i, %conv.i.i
  %mul.i.i.i128.i = mul i32 %add.i127.i, 1640531527
  %shr.i.i129.i = lshr i32 %mul.i.i.i128.i, 24
  %add6.i.i = add nuw nsw i32 %shr.i.i129.i, %add.i
  %and.i130.i = and i32 %add6.i.i, 255
  %arrayidx45.i = getelementptr %struct.ip_vs_sh_state, ptr %24, i32 0, i32 1, i32 %and.i130.i
  %59 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %arrayidx45.i, align 4
  %call48.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %land.lhs.true50.i, label %ip_vs_sh_hashkey.exit131.i.do.end58.i_crit_edge

ip_vs_sh_hashkey.exit131.i.do.end58.i_crit_edge:  ; preds = %ip_vs_sh_hashkey.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

land.lhs.true50.i:                                ; preds = %ip_vs_sh_hashkey.exit131.i
  %call51.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true50.i.do.end58.i_crit_edge, label %land.lhs.true53.i

land.lhs.true50.i.do.end58.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

land.lhs.true53.i:                                ; preds = %land.lhs.true50.i
  %.b112113.i = load i1, ptr @ip_vs_sh_get_fallback.__warned.19, align 1
  br i1 %.b112113.i, label %land.lhs.true53.i.do.end58.i_crit_edge, label %if.then55.i

land.lhs.true53.i.do.end58.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

if.then55.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ip_vs_sh_get_fallback.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 145, ptr noundef nonnull @.str.16) #8
  br label %do.end58.i

do.end58.i:                                       ; preds = %if.then55.i, %land.lhs.true53.i.do.end58.i_crit_edge, %land.lhs.true50.i.do.end58.i_crit_edge, %ip_vs_sh_hashkey.exit131.i.do.end58.i_crit_edge
  %tobool60.not.i = icmp eq ptr %60, null
  br i1 %tobool60.not.i, label %do.end58.i.if.then17_crit_edge, label %if.end62.i

do.end58.i.if.then17_crit_edge:                   ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end62.i:                                       ; preds = %do.end58.i
  %weight.i132.i = getelementptr inbounds %struct.ip_vs_dest, ptr %60, i32 0, i32 7
  %call.i.i.i133.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i132.i, i32 noundef 4) #8
  %61 = ptrtoint ptr %weight.i132.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %weight.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i134.i = icmp slt i32 %62, 1
  br i1 %cmp.i134.i, label %if.end62.i.do.body66.i_crit_edge, label %is_unavailable.exit139.i

if.end62.i.do.body66.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66.i

is_unavailable.exit139.i:                         ; preds = %if.end62.i
  %flags.i135.i = getelementptr inbounds %struct.ip_vs_dest, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags.i135.i, align 4
  %and.i136.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool.i137.not.i = icmp eq i32 %and.i136.i, 0
  br i1 %tobool.i137.not.i, label %is_unavailable.exit139.i.do.body19_crit_edge, label %is_unavailable.exit139.i.do.body66.i_crit_edge

is_unavailable.exit139.i.do.body66.i_crit_edge:   ; preds = %is_unavailable.exit139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66.i

is_unavailable.exit139.i.do.body19_crit_edge:     ; preds = %is_unavailable.exit139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

do.body66.i:                                      ; preds = %is_unavailable.exit139.i.do.body66.i_crit_edge, %if.end62.i.do.body66.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf67.i) #8
  %65 = call ptr @memset(ptr %ip_vs_dbg_buf67.i, i32 255, i32 160)
  %call69.i = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call69.i)
  %cmp70.i = icmp sgt i32 %call69.i, 5
  br i1 %cmp70.i, label %do.end75.i, label %do.body66.i.if.end85.i_crit_edge

do.body66.i.if.end85.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

do.end75.i:                                       ; preds = %do.body66.i
  %af77.i = getelementptr inbounds %struct.ip_vs_dest, ptr %60, i32 0, i32 2
  %66 = ptrtoint ptr %af77.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %af77.i, align 8
  %addr80.i = getelementptr inbounds %struct.ip_vs_dest, ptr %60, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %67)
  %cmp.i140.i = icmp eq i16 %67, 10
  %.str.6..str.7.i143.i = select i1 %cmp.i140.i, ptr @.str.6, ptr @.str.7
  %call3.i144.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf67.i, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i143.i, ptr noundef %addr80.i) #8
  %68 = add i32 %call3.i144.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %68)
  %cmp7.i147.i = icmp ult i32 %68, -162
  br i1 %cmp7.i147.i, label %do.body10.i148.i, label %ip_vs_dbg_addr.exit150.i, !prof !74

do.body10.i148.i:                                 ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

ip_vs_dbg_addr.exit150.i:                         ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %port82.i = getelementptr inbounds %struct.ip_vs_dest, ptr %60, i32 0, i32 3
  %69 = ptrtoint ptr %port82.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %port82.i, align 2
  %conv83.i = zext i16 %70 to i32
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %ip_vs_dbg_buf67.i, i32 noundef %conv83.i, i32 noundef %rem.i) #12
  br label %if.end85.i

if.end85.i:                                       ; preds = %ip_vs_dbg_addr.exit150.i, %do.body66.i.if.end85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf67.i) #8
  %inc.i = add nuw nsw i32 %offset.0153.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end85.i.if.then17_crit_edge, label %if.end85.i.for.body.i_crit_edge

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end85.i.if.then17_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.else:                                          ; preds = %if.end8
  br i1 %cmp.i.i63, label %if.then.i.i70, label %if.else.ip_vs_sh_hashkey.exit.i79_crit_edge

if.else.ip_vs_sh_hashkey.exit.i79_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_sh_hashkey.exit.i79

if.then.i.i70:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1.i.i64 = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx1.i.i64, align 4
  %xor.i.i65 = xor i32 %72, %30
  %arrayidx2.i.i66 = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx2.i.i66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2.i.i66, align 4
  %xor3.i.i67 = xor i32 %xor.i.i65, %74
  %arrayidx4.i.i68 = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx4.i.i68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx4.i.i68, align 4
  %xor5.i.i69 = xor i32 %xor3.i.i67, %76
  br label %ip_vs_sh_hashkey.exit.i79

ip_vs_sh_hashkey.exit.i79:                        ; preds = %if.then.i.i70, %if.else.ip_vs_sh_hashkey.exit.i79_crit_edge
  %addr_fold.0.i.i71 = phi i32 [ %xor5.i.i69, %if.then.i.i70 ], [ %30, %if.else.ip_vs_sh_hashkey.exit.i79_crit_edge ]
  %conv.i.i72 = zext i16 %port.0 to i32
  %add.i.i73 = add i32 %addr_fold.0.i.i71, %conv.i.i72
  %mul.i.i.i.i74 = mul i32 %add.i.i73, 1640531527
  %shr.i.i.i75 = lshr i32 %mul.i.i.i.i74, 24
  %arrayidx.i76 = getelementptr %struct.ip_vs_sh_state, ptr %24, i32 0, i32 1, i32 %shr.i.i.i75
  %77 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %arrayidx.i76, align 4
  %call3.i77 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77)
  %tobool.not.i78 = icmp eq i32 %call3.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i82, label %ip_vs_sh_hashkey.exit.i79.do.end9.i86_crit_edge

ip_vs_sh_hashkey.exit.i79.do.end9.i86_crit_edge:  ; preds = %ip_vs_sh_hashkey.exit.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i86

land.lhs.true.i82:                                ; preds = %ip_vs_sh_hashkey.exit.i79
  %call4.i80 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i80)
  %tobool5.not.i81 = icmp eq i32 %call4.i80, 0
  br i1 %tobool5.not.i81, label %land.lhs.true.i82.do.end9.i86_crit_edge, label %land.lhs.true6.i83

land.lhs.true.i82.do.end9.i86_crit_edge:          ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i86

land.lhs.true6.i83:                               ; preds = %land.lhs.true.i82
  %.b16.i = load i1, ptr @ip_vs_sh_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true6.i83.do.end9.i86_crit_edge, label %if.then.i84

land.lhs.true6.i83.do.end9.i86_crit_edge:         ; preds = %land.lhs.true6.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i86

if.then.i84:                                      ; preds = %land.lhs.true6.i83
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ip_vs_sh_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 108, ptr noundef nonnull @.str.16) #8
  br label %do.end9.i86

do.end9.i86:                                      ; preds = %if.then.i84, %land.lhs.true6.i83.do.end9.i86_crit_edge, %land.lhs.true.i82.do.end9.i86_crit_edge, %ip_vs_sh_hashkey.exit.i79.do.end9.i86_crit_edge
  %tobool11.not.i85 = icmp eq ptr %78, null
  br i1 %tobool11.not.i85, label %do.end9.i86.if.then17_crit_edge, label %lor.lhs.false.i

do.end9.i86.if.then17_crit_edge:                  ; preds = %do.end9.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false.i:                                  ; preds = %do.end9.i86
  %weight.i.i87 = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 7
  %call.i.i.i.i88 = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i.i87, i32 noundef 4) #8
  %79 = ptrtoint ptr %weight.i.i87 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %weight.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i17.i = icmp slt i32 %80, 1
  br i1 %cmp.i17.i, label %lor.lhs.false.i.if.then17_crit_edge, label %is_unavailable.exit.i92

lor.lhs.false.i.if.then17_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

is_unavailable.exit.i92:                          ; preds = %lor.lhs.false.i
  %flags.i.i89 = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 5
  %81 = ptrtoint ptr %flags.i.i89 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i.i89, align 4
  %and.i.i90 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.i.not.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.i.not.i91, label %is_unavailable.exit.i92.do.body19_crit_edge, label %is_unavailable.exit.i92.if.then17_crit_edge

is_unavailable.exit.i92.if.then17_crit_edge:      ; preds = %is_unavailable.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

is_unavailable.exit.i92.do.body19_crit_edge:      ; preds = %is_unavailable.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then17:                                        ; preds = %is_unavailable.exit.i92.if.then17_crit_edge, %lor.lhs.false.i.if.then17_crit_edge, %do.end9.i86.if.then17_crit_edge, %if.end85.i.if.then17_crit_edge, %do.end58.i.if.then17_crit_edge, %do.end9.i.if.then17_crit_edge
  call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.12) #8
  br label %cleanup

do.body19:                                        ; preds = %is_unavailable.exit.i92.do.body19_crit_edge, %is_unavailable.exit139.i.do.body19_crit_edge, %is_unavailable.exit.i.do.body19_crit_edge
  %dest.0 = phi ptr [ %38, %is_unavailable.exit.i.do.body19_crit_edge ], [ %78, %is_unavailable.exit.i92.do.body19_crit_edge ], [ %60, %is_unavailable.exit139.i.do.body19_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %83 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call20 = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, 5
  br i1 %cmp21, label %do.end25, label %do.body19.if.end35_crit_edge

do.body19.if.end35_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end25:                                         ; preds = %do.body19
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %84 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %85)
  %cmp.i93 = icmp eq i16 %85, 10
  %.str.6..str.7.i = select i1 %cmp.i93, ptr @.str.6, ptr @.str.7
  %call3.i95 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i, ptr noundef %cond) #8
  %len.0.i = add i32 %call3.i95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !74

do.body10.i:                                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end25
  %af28 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 2
  %86 = ptrtoint ptr %af28 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %af28, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %87)
  %cmp.i96 = icmp eq i16 %87, 10
  %arrayidx.i97 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i98 = sub nsw i32 159, %call3.i95
  %.str.6..str.7.i99 = select i1 %cmp.i96, ptr @.str.6, ptr @.str.7
  %call3.i100 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i97, i32 noundef %sub.i98, ptr noundef nonnull %.str.6..str.7.i99, ptr noundef %addr) #8
  %len.0.i101 = add nsw i32 %call3.i95, 2
  %add5.i102 = add i32 %len.0.i101, %call3.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i102)
  %cmp7.i103 = icmp ugt i32 %add5.i102, 161
  br i1 %cmp7.i103, label %do.body10.i104, label %ip_vs_dbg_addr.exit106, !prof !74

do.body10.i104:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

ip_vs_dbg_addr.exit106:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %port32 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 3
  %88 = ptrtoint ptr %port32 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %port32, align 2
  %conv33 = zext i16 %89 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i97, i32 noundef %conv33) #12
  br label %if.end35

if.end35:                                         ; preds = %ip_vs_dbg_addr.exit106, %do.body19.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then17
  %retval.0 = phi ptr [ %dest.0, %if.end35 ], [ null, %if.then17 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_sh_reassign(ptr noundef %s, ptr noundef %svc) unnamed_addr #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buckets = getelementptr inbounds %struct.ip_vs_sh_state, ptr %s, i32 0, i32 1
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %0 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %destinations, align 4
  %cmp.i.not = icmp eq ptr %1, %destinations
  br label %do.end

do.end:                                           ; preds = %if.end57.do.end_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc58, %if.end57.do.end_crit_edge ]
  %b.08 = phi ptr [ %buckets, %entry ], [ %incdec.ptr, %if.end57.do.end_crit_edge ]
  %p.07 = phi ptr [ %destinations, %entry ], [ %p.2, %if.end57.do.end_crit_edge ]
  %d_count.06 = phi i32 [ 0, %entry ], [ %d_count.1, %if.end57.do.end_crit_edge ]
  %2 = ptrtoint ptr %b.08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b.08, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %3, i32 0, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then.if.end_crit_edge, !prof !74

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i.i, %if.then.if.end_crit_edge, %do.end.if.end_crit_edge
  br i1 %cmp.i.not, label %do.body10, label %if.else

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %b.08 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %b.08, align 4
  br label %if.end57

if.else:                                          ; preds = %if.end
  %cmp19 = icmp eq ptr %p.07, %destinations
  br i1 %cmp19, label %if.then20, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destinations, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else.if.end21_crit_edge
  %p.1 = phi ptr [ %7, %if.then20 ], [ %p.07, %if.else.if.end21_crit_edge ]
  %refcnt.i2 = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i2, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i2, i32 1, i32 3, i32 1) #8
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i2, ptr %refcnt.i2, i32 1, ptr elementtype(i32) %refcnt.i2) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i3 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i3)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i3, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end21.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

if.end21.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end21
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i3, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dest_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end21.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end21.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i2, i32 noundef %.sink.i.i.i.i) #8
  br label %ip_vs_dest_hold.exit

ip_vs_dest_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge
  %10 = ptrtoint ptr %b.08 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %p.1, ptr %b.08, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %11 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call37 = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, 5
  br i1 %cmp38, label %do.end42, label %ip_vs_dest_hold.exit.if.end47_crit_edge

ip_vs_dest_hold.exit.if.end47_crit_edge:          ; preds = %ip_vs_dest_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end42:                                         ; preds = %ip_vs_dest_hold.exit
  %af = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 2
  %12 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %af, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp.i4 = icmp eq i16 %13, 10
  %.str.6..str.7.i = select i1 %cmp.i4, ptr @.str.6, ptr @.str.7
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.6..str.7.i, ptr noundef %addr) #8
  %14 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %14)
  %cmp7.i = icmp ult i32 %14, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !74

do.body10.i:                                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #8
  %15 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %weight, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.010, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %16) #12
  br label %if.end47

if.end47:                                         ; preds = %ip_vs_dbg_addr.exit, %ip_vs_dest_hold.exit.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %inc = add i32 %d_count.06, 1
  %weight50 = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 7
  %call.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef %weight50, i32 noundef 4) #8
  %17 = ptrtoint ptr %weight50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %weight50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %18)
  %cmp52.not = icmp slt i32 %inc, %18
  br i1 %cmp52.not, label %if.end47.if.end57_crit_edge, label %if.then54

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.1, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end47.if.end57_crit_edge, %do.body10
  %d_count.1 = phi i32 [ %d_count.06, %do.body10 ], [ 0, %if.then54 ], [ %inc, %if.end47.if.end57_crit_edge ]
  %p.2 = phi ptr [ %p.07, %do.body10 ], [ %20, %if.then54 ], [ %p.1, %if.end47.if.end57_crit_edge ]
  %incdec.ptr = getelementptr %struct.ip_vs_sh_bucket, ptr %b.08, i32 1
  %inc58 = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc58, 256
  br i1 %exitcond.not, label %for.end, label %if.end57.do.end_crit_edge

if.end57.do.end_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_ip_vs_sh__701_376_ip_vs_sh_init6, !1, !"__initcall__kmod_ip_vs_sh__701_376_ip_vs_sh_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_ip_vs_sh_cleanup, !3, !"__exitcall_ip_vs_sh_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 377, i32 1}
!4 = !{ptr @__UNIQUE_ID_file702, !5, !"__UNIQUE_ID_file702", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 378, i32 1}
!6 = !{ptr @__UNIQUE_ID_license703, !5, !"__UNIQUE_ID_license703", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 350, i32 12}
!9 = !{ptr @ip_vs_sh_scheduler, !10, !"ip_vs_sh_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 348, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 238, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_sh_init_svc._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_sh_init_svc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 177, i32 10}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 190, i32 4}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ip_vs_sh_reassign._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ip_vs_sh_reassign._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 258, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ip_vs_sh_done_svc._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ip_vs_sh_done_svc._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 218, i32 10}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 319, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ip_vs_sh_schedule._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ip_vs_sh_schedule._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 332, i32 28}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 336, i32 2}
!44 = !{ptr @ip_vs_sh_schedule._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ip_vs_sh_schedule._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 130, i32 9}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 136, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ip_vs_sh_get_fallback._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ip_vs_sh_get_fallback._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 145, i32 10}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 150, i32 3}
!58 = !{ptr @ip_vs_sh_get_fallback._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ip_vs_sh_get_fallback._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/netfilter/ipvs/ip_vs_sh.c", i32 108, i32 28}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2158076074}
!72 = !{i64 2148446755}
!73 = !{i64 2148361219, i64 2148361251, i64 2148361280, i64 2148361314, i64 2148361345, i64 2148361368}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"auto-init"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2158038555, i64 2158039039, i64 2158038592, i64 2158038648, i64 2158038682, i64 2158038706, i64 2158038747, i64 2158038768, i64 2158038796, i64 2158038830}
!78 = !{i64 2148358754, i64 2148358786, i64 2148358815, i64 2148358849, i64 2148358880, i64 2148358903}
