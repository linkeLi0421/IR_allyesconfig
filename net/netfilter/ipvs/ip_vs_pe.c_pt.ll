; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_pe.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_pe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_ip_vs_pe\22, \22a\22\09"
module asm "\09.weak\09__crc_register_ip_vs_pe\09\09\09\09"
module asm "\09.long\09__crc_register_ip_vs_pe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_ip_vs_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22register_ip_vs_pe\22\09\09\09\09\09"
module asm "__kstrtabns_register_ip_vs_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_ip_vs_pe\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_ip_vs_pe\09\09\09\09"
module asm "\09.long\09__crc_unregister_ip_vs_pe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_ip_vs_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_ip_vs_pe\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_ip_vs_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ip_vs_pe = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr }

@__ip_vs_pe_getbyname._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr null, ptr null }, align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017IPVS: %s(): pe_name \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ip_vs_pe_getbyname\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/ipvs/ip_vs_pe.c\00", [34 x i8] zeroinitializer }, align 32
@__ip_vs_pe_getbyname._entry_ptr = internal global ptr @__ip_vs_pe_getbyname._entry, section ".printk_index", align 4
@__ip_vs_pe_getbyname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ip_vs_pe = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ip_vs_pe, ptr @ip_vs_pe }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip_vs_pe_%s\00", [20 x i8] zeroinitializer }, align 32
@ip_vs_pe_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ip_vs_pe_mutex, i64 52), ptr getelementptr (i8, ptr @ip_vs_pe_mutex, i64 52) }, ptr @ip_vs_pe_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@register_ip_vs_pe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013IPVS: %s(): [%s] pe already existed in the system\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_ip_vs_pe\00", [46 x i8] zeroinitializer }, align 32
@register_ip_vs_pe._entry_ptr = internal global ptr @register_ip_vs_pe._entry, section ".printk_index", align 4
@register_ip_vs_pe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016IPVS: [%s] pe registered.\0A\00", [35 x i8] zeroinitializer }, align 32
@register_ip_vs_pe._entry_ptr.9 = internal global ptr @register_ip_vs_pe._entry.7, section ".printk_index", align 4
@__kstrtab_register_ip_vs_pe = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_ip_vs_pe = external dso_local constant [0 x i8], align 1
@__ksymtab_register_ip_vs_pe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_ip_vs_pe to i32), ptr @__kstrtab_register_ip_vs_pe, ptr @__kstrtabns_register_ip_vs_pe }, section "___ksymtab_gpl+register_ip_vs_pe", align 4
@unregister_ip_vs_pe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016IPVS: [%s] pe unregistered.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unregister_ip_vs_pe\00", [44 x i8] zeroinitializer }, align 32
@unregister_ip_vs_pe._entry_ptr = internal global ptr @unregister_ip_vs_pe._entry, section ".printk_index", align 4
@__kstrtab_unregister_ip_vs_pe = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_ip_vs_pe = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_ip_vs_pe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_ip_vs_pe to i32), ptr @__kstrtab_unregister_ip_vs_pe, ptr @__kstrtabns_unregister_ip_vs_pe }, section "___ksymtab_gpl+unregister_ip_vs_pe", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ip_vs_pe_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_vs_pe_mutex\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 25, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 29, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"ip_vs_pe\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 15, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 58, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"ip_vs_pe_mutex\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 82, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 91, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [33 x i8] c"../net/netfilter/ipvs/ip_vs_pe.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 18, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ip_vs_pe_getbyname._entry, ptr @__ip_vs_pe_getbyname._entry_ptr, ptr @__ksymtab_register_ip_vs_pe, ptr @__ksymtab_unregister_ip_vs_pe, ptr @register_ip_vs_pe._entry, ptr @register_ip_vs_pe._entry.7, ptr @register_ip_vs_pe._entry_ptr, ptr @register_ip_vs_pe._entry_ptr.9, ptr @unregister_ip_vs_pe._entry, ptr @unregister_ip_vs_pe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ip_vs_pe, ptr @.str.4, ptr @ip_vs_pe_mutex, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_pe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_pe_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_pe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_ip_vs_pe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_ip_vs_pe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ip_vs_pe_getbyname(ptr noundef %pe_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %pe_name) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %do.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end4.rcu_read_lock.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end4.rcu_read_lock.exit_crit_edge
  %call6 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @__ip_vs_pe_getbyname.__warned, align 1
  br i1 %.b47, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__ip_vs_pe_getbyname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 29, ptr noundef nonnull @.str.3) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %pe.069 = load volatile ptr, ptr @ip_vs_pe, align 4
  %cmp20.not70 = icmp eq ptr %pe.069, @ip_vs_pe
  br i1 %cmp20.not70, label %do.end14.for.end_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  br label %for.body

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end14.for.body_crit_edge
  %pe.071 = phi ptr [ %pe.0, %for.inc.for.body_crit_edge ], [ %pe.069, %do.end14.for.body_crit_edge ]
  %module = getelementptr inbounds %struct.ip_vs_pe, ptr %pe.071, i32 0, i32 3
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %for.body.if.end26_crit_edge, label %land.lhs.true22

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true22:                                  ; preds = %for.body
  %call24 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %5) #6
  br i1 %call24, label %land.lhs.true22.if.end26_crit_edge, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true22.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %name = getelementptr inbounds %struct.ip_vs_pe, ptr %pe.071, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call27 = tail call i32 @strcmp(ptr noundef %pe_name, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i48, label %if.then29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

if.then29.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %if.then29
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %if.then29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %9) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %land.lhs.true22.for.inc_crit_edge
  %10 = ptrtoint ptr %pe.071 to i32
  call void @__asan_load4_noabort(i32 %10)
  %pe.0 = load volatile ptr, ptr %pe.071, align 4
  %cmp20.not = icmp eq ptr %pe.0, @ip_vs_pe
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end14.for.end_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit67_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit67

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit67

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit67

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #6
  br label %rcu_read_unlock.exit67

rcu_read_unlock.exit67:                           ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, %for.end.rcu_read_unlock.exit67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit67, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %pe.071, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit67 ]
  %11 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i64 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i66 = add i32 %14, -1
  store volatile i32 %sub.i.i.i66, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_pe_getbyname(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__ip_vs_pe_getbyname(ptr noundef %name)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name) #6
  %call2 = tail call ptr @__ip_vs_pe_getbyname(ptr noundef %name)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pe.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret ptr %pe.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_ip_vs_pe(ptr noundef %pe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_use_count_inc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ip_vs_pe_mutex, i32 noundef 0) #6
  %name2 = getelementptr inbounds %struct.ip_vs_pe, ptr %pe, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tmp.0.in = phi ptr [ @ip_vs_pe, %if.end ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @ip_vs_pe
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds %struct.ip_vs_pe, ptr %tmp.0, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #10
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_pe_mutex) #6
  tail call void @ip_vs_use_count_dec() #6
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %6) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr @ip_vs_pe, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pe, ptr noundef nonnull @ip_vs_pe, ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pe, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %pe, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ip_vs_pe, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !54
  store volatile ptr %pe, ptr @ip_vs_pe, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pe, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %for.end.list_add_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_pe_mutex) #6
  %11 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name2, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %list_add_rcu.exit ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_use_count_inc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_use_count_dec() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_ip_vs_pe(ptr noundef %pe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ip_vs_pe_mutex, i32 noundef 0) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pe) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pe, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pe, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ip_vs_pe_mutex) #6
  tail call void @ip_vs_use_count_dec() #6
  %name = getelementptr inbounds %struct.ip_vs_pe, ptr %pe, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !40, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ip_vs_pe_getbyname._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__ip_vs_pe_getbyname._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 29, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 58, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 82, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @register_ip_vs_pe._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @register_ip_vs_pe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 91, i32 2}
!18 = !{ptr @register_ip_vs_pe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @register_ip_vs_pe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_register_ip_vs_pe, !21, !"__ksymtab_register_ip_vs_pe", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 95, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 108, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @unregister_ip_vs_pe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @unregister_ip_vs_pe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_unregister_ip_vs_pe, !28, !"__ksymtab_unregister_ip_vs_pe", i1 false, i1 false}
!28 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 112, i32 1}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ip_vs_pe, !34, !"ip_vs_pe", i1 false, i1 false}
!34 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 15, i32 8}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/ipvs/ip_vs_pe.c", i32 18, i32 8}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ip_vs_pe_mutex, !39, !"ip_vs_pe_mutex", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2149356741}
!53 = !{i64 2149357007}
!54 = !{i64 2151666552}
