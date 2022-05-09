; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_sched.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_vs_scheduler_err\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_scheduler_err\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_scheduler_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_scheduler_err:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_scheduler_err\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_scheduler_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_vs_service = type { %struct.hlist_node, %struct.hlist_node, %struct.atomic_t, i16, i16, %union.nf_inet_addr, i16, i32, i32, i32, i32, ptr, %struct.list_head, i32, %struct.ip_vs_stats, ptr, %struct.spinlock, ptr, ptr, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_scheduler = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ip_vs_scheduler_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_scheduler_err = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_scheduler_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_scheduler_err to i32), ptr @__kstrtab_ip_vs_scheduler_err, ptr @__kstrtabns_ip_vs_scheduler_err }, section "___ksymtab+ip_vs_scheduler_err", align 4
@ip_vs_bind_scheduler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013IPVS: %s(): init error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_bind_scheduler\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/ipvs/ip_vs_sched.c\00", [63 x i8] zeroinitializer }, align 32
@ip_vs_bind_scheduler._entry_ptr = internal global ptr @ip_vs_bind_scheduler._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip_vs_%s\00", [23 x i8] zeroinitializer }, align 32
@ip_vs_scheduler_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_scheduler_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013IPVS: %s: FWM %u 0x%08X - %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_scheduler_err\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_scheduler_err._entry_ptr = internal global ptr @ip_vs_scheduler_err._entry, section ".printk_index", align 4
@ip_vs_scheduler_err._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013IPVS: %s: %s [%pI6c]:%d - %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_scheduler_err._entry_ptr.10 = internal global ptr @ip_vs_scheduler_err._entry.8, section ".printk_index", align 4
@ip_vs_scheduler_err._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013IPVS: %s: %s %pI4:%d - %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_scheduler_err._entry_ptr.13 = internal global ptr @ip_vs_scheduler_err._entry.11, section ".printk_index", align 4
@register_ip_vs_scheduler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013IPVS: %s(): NULL arg\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_ip_vs_scheduler\00", [39 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry_ptr = internal global ptr @register_ip_vs_scheduler._entry, section ".printk_index", align 4
@register_ip_vs_scheduler._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013IPVS: %s(): NULL scheduler_name\0A\00", [61 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry_ptr.18 = internal global ptr @register_ip_vs_scheduler._entry.16, section ".printk_index", align 4
@ip_vs_sched_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ip_vs_sched_mutex, i64 52), ptr getelementptr (i8, ptr @ip_vs_sched_mutex, i64 52) }, ptr @ip_vs_sched_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013IPVS: %s(): [%s] scheduler already linked\0A\00", [51 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry_ptr.21 = internal global ptr @register_ip_vs_scheduler._entry.19, section ".printk_index", align 4
@ip_vs_schedulers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ip_vs_schedulers, ptr @ip_vs_schedulers }, [24 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013IPVS: %s(): [%s] scheduler already existed in the system\0A\00", [36 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry_ptr.24 = internal global ptr @register_ip_vs_scheduler._entry.22, section ".printk_index", align 4
@register_ip_vs_scheduler._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016IPVS: [%s] scheduler registered.\0A\00", [60 x i8] zeroinitializer }, align 32
@register_ip_vs_scheduler._entry_ptr.27 = internal global ptr @register_ip_vs_scheduler._entry.25, section ".printk_index", align 4
@unregister_ip_vs_scheduler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.28, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unregister_ip_vs_scheduler\00", [37 x i8] zeroinitializer }, align 32
@unregister_ip_vs_scheduler._entry_ptr = internal global ptr @unregister_ip_vs_scheduler._entry, section ".printk_index", align 4
@unregister_ip_vs_scheduler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013IPVS: %s(): [%s] scheduler is not in the list. failed\0A\00", [39 x i8] zeroinitializer }, align 32
@unregister_ip_vs_scheduler._entry_ptr.31 = internal global ptr @unregister_ip_vs_scheduler._entry.29, section ".printk_index", align 4
@unregister_ip_vs_scheduler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016IPVS: [%s] scheduler unregistered.\0A\00", [58 x i8] zeroinitializer }, align 32
@unregister_ip_vs_scheduler._entry_ptr.34 = internal global ptr @unregister_ip_vs_scheduler._entry.32, section ".printk_index", align 4
@ip_vs_sched_getbyname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: %s(): sched_name \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_vs_sched_getbyname\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_sched_getbyname._entry_ptr = internal global ptr @ip_vs_sched_getbyname._entry, section ".printk_index", align 4
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip_vs_sched_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_sched_mutex\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 48, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 126, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 145, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 146, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 149, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 153, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 158, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 172, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 177, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"ip_vs_sched_mutex\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 190, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"ip_vs_schedulers\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 31, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 203, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 214, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 226, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 233, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 247, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 83, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [36 x i8] c"../net/netfilter/ipvs/ip_vs_sched.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 34, i32 8 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_ip_vs_scheduler_err, ptr @ip_vs_bind_scheduler._entry, ptr @ip_vs_bind_scheduler._entry_ptr, ptr @ip_vs_sched_getbyname._entry, ptr @ip_vs_sched_getbyname._entry_ptr, ptr @ip_vs_scheduler_err._entry, ptr @ip_vs_scheduler_err._entry.11, ptr @ip_vs_scheduler_err._entry.8, ptr @ip_vs_scheduler_err._entry_ptr, ptr @ip_vs_scheduler_err._entry_ptr.10, ptr @ip_vs_scheduler_err._entry_ptr.13, ptr @register_ip_vs_scheduler._entry, ptr @register_ip_vs_scheduler._entry.16, ptr @register_ip_vs_scheduler._entry.19, ptr @register_ip_vs_scheduler._entry.22, ptr @register_ip_vs_scheduler._entry.25, ptr @register_ip_vs_scheduler._entry_ptr, ptr @register_ip_vs_scheduler._entry_ptr.18, ptr @register_ip_vs_scheduler._entry_ptr.21, ptr @register_ip_vs_scheduler._entry_ptr.24, ptr @register_ip_vs_scheduler._entry_ptr.27, ptr @unregister_ip_vs_scheduler._entry, ptr @unregister_ip_vs_scheduler._entry.29, ptr @unregister_ip_vs_scheduler._entry.32, ptr @unregister_ip_vs_scheduler._entry_ptr, ptr @unregister_ip_vs_scheduler._entry_ptr.31, ptr @unregister_ip_vs_scheduler._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @ip_vs_sched_mutex, ptr @.str.20, ptr @ip_vs_schedulers, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bind_scheduler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_scheduler_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_scheduler_err._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_scheduler_err._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_scheduler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_scheduler._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sched_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_scheduler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_schedulers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_scheduler._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_scheduler._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_ip_vs_scheduler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_ip_vs_scheduler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_ip_vs_scheduler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sched_getbyname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %scheduler = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 15
  %0 = ptrtoint ptr %scheduler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %scheduler, align 8
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @ip_vs_scheduler_err.__warned, align 1
  br i1 %.b79, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ip_vs_scheduler_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 145, ptr noundef nonnull @.str.4) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.cond.end_crit_edge, label %cond.true

do.end7.cond.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ip_vs_scheduler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end7.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ @.str.5, %do.end7.cond.end_crit_edge ]
  %fwmark = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 7
  %4 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwmark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.else, label %do.body12

do.body12:                                        ; preds = %cond.end
  %call13 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.if.end63_crit_edge, label %do.end18

do.body12.if.end63_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fwmark, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %cond, i32 noundef %7, i32 noundef %7, ptr noundef %msg) #7
  br label %if.end63

if.else:                                          ; preds = %cond.end
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %8 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp = icmp eq i16 %9, 10
  %call29 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %cmp, label %do.body28, label %do.body44

do.body28:                                        ; preds = %if.else
  br i1 %tobool30.not, label %do.body28.if.end63_crit_edge, label %do.end34

do.body28.if.end63_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %protocol = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 4
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 2
  %conv36 = zext i16 %11 to i32
  %call37 = tail call ptr @ip_vs_proto_name(i32 noundef %conv36) #4
  %addr = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 5
  %port = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 6
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port, align 8
  %conv38 = zext i16 %13 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %cond, ptr noundef %call37, ptr noundef %addr, i32 noundef %conv38, ptr noundef %msg) #7
  br label %if.end63

do.body44:                                        ; preds = %if.else
  br i1 %tobool30.not, label %do.body44.if.end63_crit_edge, label %do.end50

do.body44.if.end63_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  %protocol52 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 4
  %14 = ptrtoint ptr %protocol52 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol52, align 2
  %conv53 = zext i16 %15 to i32
  %call54 = tail call ptr @ip_vs_proto_name(i32 noundef %conv53) #4
  %addr55 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 5
  %port56 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 6
  %16 = ptrtoint ptr %port56 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %port56, align 8
  %conv57 = zext i16 %17 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %cond, ptr noundef %call54, ptr noundef %addr55, i32 noundef %conv57, ptr noundef %msg) #7
  br label %if.end63

if.end63:                                         ; preds = %do.end50, %do.body44.if.end63_crit_edge, %do.end34, %do.body28.if.end63_crit_edge, %do.end18, %do.body12.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_bind_scheduler(ptr noundef %svc, ptr noundef %scheduler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %init_service = getelementptr inbounds %struct.ip_vs_scheduler, ptr %scheduler, i32 0, i32 4
  %0 = ptrtoint ptr %init_service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_service, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %svc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.do.body6_crit_edge, label %do.end

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.body6:                                         ; preds = %if.then.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !83
  %scheduler31 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 15
  %2 = ptrtoint ptr %scheduler31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %scheduler, ptr %scheduler31, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_unbind_scheduler(ptr noundef %svc, ptr nocapture noundef readonly %sched) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %scheduler = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 15
  %0 = ptrtoint ptr %scheduler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scheduler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %done_service = getelementptr inbounds %struct.ip_vs_scheduler, ptr %sched, i32 0, i32 5
  %2 = ptrtoint ptr %done_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done_service, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %svc) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_scheduler_get(ptr noundef %sched_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ip_vs_sched_getbyname(ptr noundef %sched_name)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %sched_name) #4
  %call2 = tail call fastcc ptr @ip_vs_sched_getbyname(ptr noundef %sched_name)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sched.0 = phi ptr [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret ptr %sched.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_vs_sched_getbyname(ptr noundef %sched_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %sched_name) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ip_vs_sched_mutex, i32 noundef 0) #4
  %sched.028 = load ptr, ptr @ip_vs_schedulers, align 4
  %cmp6.not29 = icmp eq ptr %sched.028, @ip_vs_schedulers
  br i1 %cmp6.not29, label %do.end4.cleanup_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end4.for.body_crit_edge
  %sched.030 = phi ptr [ %sched.0, %for.inc.for.body_crit_edge ], [ %sched.028, %do.end4.for.body_crit_edge ]
  %module = getelementptr inbounds %struct.ip_vs_scheduler, ptr %sched.030, i32 0, i32 3
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %1) #4
  br i1 %call8, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %name = getelementptr inbounds %struct.ip_vs_scheduler, ptr %sched.030, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call11 = tail call i32 @strcmp(ptr noundef %sched_name, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %land.lhs.true.for.inc_crit_edge
  %6 = ptrtoint ptr %sched.030 to i32
  call void @__asan_load4_noabort(i32 %6)
  %sched.0 = load ptr, ptr %sched.030, align 4
  %cmp6.not = icmp eq ptr %sched.0, @ip_vs_schedulers
  br i1 %cmp6.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end4.cleanup_crit_edge ], [ %sched.030, %if.end10.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_scheduler_put(ptr noundef readonly %scheduler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scheduler, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %module = getelementptr inbounds %struct.ip_vs_scheduler, ptr %scheduler, i32 0, i32 3
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_ip_vs_scheduler(ptr noundef %scheduler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scheduler, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.ip_vs_scheduler, ptr %scheduler, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @ip_vs_use_count_inc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ip_vs_sched_mutex, i32 noundef 0) #4
  %2 = ptrtoint ptr %scheduler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %scheduler, align 4
  %cmp.i.not = icmp eq ptr %3, %scheduler
  br i1 %cmp.i.not, label %if.end12.for.cond_crit_edge, label %if.then15

if.end12.for.cond_crit_edge:                      ; preds = %if.end12
  br label %for.cond

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  tail call void @ip_vs_use_count_dec() #4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, ptr noundef %5) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12.for.cond_crit_edge
  %sched.0.in = phi ptr [ %sched.0, %for.body.for.cond_crit_edge ], [ @ip_vs_schedulers, %if.end12.for.cond_crit_edge ]
  %6 = ptrtoint ptr %sched.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %sched.0 = load ptr, ptr %sched.0.in, align 4
  %cmp.not = icmp eq ptr %sched.0, @ip_vs_schedulers
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %name26 = getelementptr inbounds %struct.ip_vs_scheduler, ptr %sched.0, i32 0, i32 1
  %9 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name26, align 4
  %call27 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %10) #8
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  tail call void @ip_vs_use_count_dec() #4
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.15, ptr noundef %12) #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr @ip_vs_schedulers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %scheduler, ptr noundef nonnull @ip_vs_schedulers, ptr noundef %13) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %scheduler, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %scheduler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %scheduler, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %scheduler, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ip_vs_schedulers, ptr %prev3.i.i, align 4
  store volatile ptr %scheduler, ptr @ip_vs_schedulers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then29, %if.then15, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %if.then29 ], [ 0, %list_add.exit ], [ -22, %if.then15 ], [ -22, %do.end5 ], [ -22, %do.end ], [ -2, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_use_count_inc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_use_count_dec() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_ip_vs_scheduler(ptr noundef %scheduler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scheduler, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28) #7
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ip_vs_sched_mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %scheduler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %scheduler, align 4
  %cmp.i.not = icmp eq ptr %1, %scheduler
  br i1 %cmp.i.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  %name = getelementptr inbounds %struct.ip_vs_scheduler, ptr %scheduler, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, ptr noundef %3) #7
  br label %return

if.end8:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %scheduler) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %scheduler, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %scheduler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scheduler, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %10 = ptrtoint ptr %scheduler to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %scheduler, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %scheduler, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_sched_mutex) #4
  tail call void @ip_vs_use_count_dec() #4
  %name13 = getelementptr inbounds %struct.ip_vs_scheduler, ptr %scheduler, i32 0, i32 1
  %12 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %13) #7
  br label %return

return:                                           ; preds = %list_del.exit, %if.then3, %do.end
  %retval.0 = phi i32 [ -22, %if.then3 ], [ 0, %list_del.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__ksymtab_ip_vs_scheduler_err, !1, !"__ksymtab_ip_vs_scheduler_err", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 27, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 48, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ip_vs_bind_scheduler._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ip_vs_bind_scheduler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 65, i32 14}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 126, i32 3}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 145, i32 34}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 146, i32 43}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 149, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ip_vs_scheduler_err._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ip_vs_scheduler_err._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 153, i32 3}
!24 = !{ptr @ip_vs_scheduler_err._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ip_vs_scheduler_err._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 158, i32 3}
!28 = !{ptr @ip_vs_scheduler_err._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ip_vs_scheduler_err._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 172, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @register_ip_vs_scheduler._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @register_ip_vs_scheduler._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 177, i32 3}
!37 = !{ptr @register_ip_vs_scheduler._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @register_ip_vs_scheduler._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 190, i32 3}
!41 = !{ptr @register_ip_vs_scheduler._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @register_ip_vs_scheduler._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 203, i32 4}
!45 = !{ptr @register_ip_vs_scheduler._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @register_ip_vs_scheduler._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 214, i32 2}
!49 = !{ptr @register_ip_vs_scheduler._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @register_ip_vs_scheduler._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 226, i32 3}
!53 = !{ptr @unregister_ip_vs_scheduler._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @unregister_ip_vs_scheduler._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 233, i32 3}
!57 = !{ptr @unregister_ip_vs_scheduler._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @unregister_ip_vs_scheduler._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 247, i32 2}
!61 = !{ptr @unregister_ip_vs_scheduler._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @unregister_ip_vs_scheduler._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 83, i32 2}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ip_vs_sched_getbyname._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ip_vs_sched_getbyname._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 34, i32 8}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ip_vs_sched_mutex, !69, !"ip_vs_sched_mutex", i1 false, i1 false}
!72 = !{ptr @ip_vs_schedulers, !73, !"ip_vs_schedulers", i1 false, i1 false}
!73 = !{!"../net/netfilter/ipvs/ip_vs_sched.c", i32 31, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2158085280}
