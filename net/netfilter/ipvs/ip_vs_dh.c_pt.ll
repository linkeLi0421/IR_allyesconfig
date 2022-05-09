; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_dh.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_dh.c"
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
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_dh_bucket = type { ptr }
%struct.ip_vs_dh_state = type { [256 x %struct.ip_vs_dh_bucket], %struct.callback_head }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }

@ip_vs_dh_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_dh_scheduler, ptr @ip_vs_dh_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_dh_init_svc, ptr @ip_vs_dh_done_svc, ptr @ip_vs_dh_dest_changed, ptr @ip_vs_dh_dest_changed, ptr null, ptr @ip_vs_dh_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_dh__590_270_ip_vs_dh_init6 = internal global ptr @ip_vs_dh_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_dh_cleanup = internal global ptr @ip_vs_dh_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file591 = internal constant [42 x i8] c"ip_vs_dh.file=net/netfilter/ipvs/ip_vs_dh\00", section ".modinfo", align 1
@__UNIQUE_ID_license592 = internal constant [21 x i8] c"ip_vs_dh.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dh\00", [29 x i8] zeroinitializer }, align 32
@ip_vs_dh_init_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017IPVS: DH hash table (memory=%zdbytes) allocated for current service\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_dh_init_svc\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/ipvs/ip_vs_dh.c\00", [34 x i8] zeroinitializer }, align 32
@ip_vs_dh_init_svc._entry_ptr = internal global ptr @ip_vs_dh_init_svc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_dh_done_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017IPVS: DH hash table (memory=%zdbytes) released\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_dh_done_svc\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_dh_done_svc._entry_ptr = internal global ptr @ip_vs_dh_done_svc._entry, section ".printk_index", align 4
@ip_vs_dh_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_dh_schedule\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_dh_schedule._entry_ptr = internal global ptr @ip_vs_dh_schedule._entry, section ".printk_index", align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_dh_schedule._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017IPVS: DH: destination IP address %s --> server %s:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ip_vs_dh_schedule._entry_ptr.11 = internal global ptr @ip_vs_dh_schedule._entry.9, section ".printk_index", align 4
@ip_vs_dh_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"ip_vs_dh_scheduler\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 243, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 245, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 162, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 182, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 219, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 227, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 231, i32 2 }
@___asan_gen_.61 = private constant [33 x i8] c"../net/netfilter/ipvs/ip_vs_dh.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 90, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 196, i32 46 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 200, i32 46 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file591, ptr @__UNIQUE_ID_license592, ptr @__exitcall_ip_vs_dh_cleanup, ptr @__initcall__kmod_ip_vs_dh__590_270_ip_vs_dh_init6, ptr @ip_vs_dh_cleanup, ptr @ip_vs_dh_done_svc._entry, ptr @ip_vs_dh_done_svc._entry_ptr, ptr @ip_vs_dh_init_svc._entry, ptr @ip_vs_dh_init_svc._entry_ptr, ptr @ip_vs_dh_schedule._entry, ptr @ip_vs_dh_schedule._entry.9, ptr @ip_vs_dh_schedule._entry_ptr, ptr @ip_vs_dh_schedule._entry_ptr.11, ptr @ip_vs_dh_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dh_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dh_init_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dh_done_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dh_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dh_schedule._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_dh_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_dh_scheduler) #8
  tail call void @synchronize_rcu() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_dh_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_dh_scheduler) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_dh_init_svc(ptr noundef %svc) #2 align 64 {
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
  tail call fastcc void @ip_vs_dh_reassign(ptr noundef nonnull %call7.i.i, ptr noundef %svc)
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_dh_done_svc(ptr nocapture noundef readonly %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %b.019.i = phi ptr [ %1, %entry ], [ %incdec.ptr.i, %if.end.i.do.end.i_crit_edge ]
  %2 = ptrtoint ptr %b.019.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b.019.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i.if.end.i_crit_edge, label %if.then.i

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %3, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i.ip_vs_dest_put.exit.i_crit_edge, !prof !56

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
  %incdec.ptr.i = getelementptr %struct.ip_vs_dh_bucket, ptr %b.019.i, i32 1
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %ip_vs_dh_flush.exit, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

ip_vs_dh_flush.exit:                              ; preds = %if.end.i
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ip_vs_dh_flush.exit.if.end_crit_edge, label %do.end

ip_vs_dh_flush.exit.if.end_crit_edge:             ; preds = %ip_vs_dh_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %ip_vs_dh_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_head = getelementptr inbounds %struct.ip_vs_dh_state, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 1024 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ip_vs_dh_flush.exit.if.end_crit_edge
  %call = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end8, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 1024) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %if.end.do.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_dh_dest_changed(ptr noundef %svc, ptr nocapture noundef readnone %dest) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  tail call fastcc void @ip_vs_dh_reassign(ptr noundef %1, ptr noundef %svc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_dh_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr noundef %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end4.ip_vs_dh_hashkey.exit.i_crit_edge

do.end4.ip_vs_dh_hashkey.exit.i_crit_edge:        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dh_hashkey.exit.i

if.then.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %7, %5
  %arrayidx2.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i.i, align 4
  %xor3.i.i = xor i32 %xor.i.i, %9
  %arrayidx4.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor3.i.i, %11
  br label %ip_vs_dh_hashkey.exit.i

ip_vs_dh_hashkey.exit.i:                          ; preds = %if.then.i.i, %do.end4.ip_vs_dh_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %5, %do.end4.ip_vs_dh_hashkey.exit.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %addr_fold.0.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.ip_vs_dh_bucket], ptr %1, i32 0, i32 %shr.i.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %ip_vs_dh_hashkey.exit.i.ip_vs_dh_get.exit_crit_edge

ip_vs_dh_hashkey.exit.i.ip_vs_dh_get.exit_crit_edge: ; preds = %ip_vs_dh_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dh_get.exit

land.lhs.true.i:                                  ; preds = %ip_vs_dh_hashkey.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.ip_vs_dh_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.ip_vs_dh_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dh_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @ip_vs_dh_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.ip_vs_dh_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.ip_vs_dh_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dh_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ip_vs_dh_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 90, ptr noundef nonnull @.str.12) #8
  br label %ip_vs_dh_get.exit

ip_vs_dh_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.ip_vs_dh_get.exit_crit_edge, %land.lhs.true.i.ip_vs_dh_get.exit_crit_edge, %ip_vs_dh_hashkey.exit.i.ip_vs_dh_get.exit_crit_edge
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %ip_vs_dh_get.exit.if.then14_crit_edge, label %lor.lhs.false

ip_vs_dh_get.exit.if.then14_crit_edge:            ; preds = %ip_vs_dh_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false:                                    ; preds = %ip_vs_dh_get.exit
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %13, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #8
  %16 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp9 = icmp slt i32 %17, 1
  br i1 %cmp9, label %lor.lhs.false7.if.then14_crit_edge, label %lor.lhs.false11

lor.lhs.false7.if.then14_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %do.body16, label %lor.lhs.false11.if.then14_crit_edge

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %lor.lhs.false7.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %ip_vs_dh_get.exit.if.then14_crit_edge
  tail call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.body16:                                        ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %20 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call17 = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, 5
  br i1 %cmp18, label %do.end23, label %do.body16.if.end35_crit_edge

do.body16.if.end35_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end23:                                         ; preds = %do.body16
  %21 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %22)
  %cmp.i = icmp eq i16 %22, 10
  %.str.13..str.14.i = select i1 %cmp.i, ptr @.str.13, ptr @.str.14
  %call3.i51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.13..str.14.i, ptr noundef %daddr) #8
  %len.0.i = add i32 %call3.i51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !56

do.body10.i:                                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !57
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end23
  %af29 = getelementptr inbounds %struct.ip_vs_dest, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %af29 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %af29, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %13, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp.i52 = icmp eq i16 %24, 10
  %arrayidx.i53 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i54 = sub nsw i32 159, %call3.i51
  %.str.13..str.14.i55 = select i1 %cmp.i52, ptr @.str.13, ptr @.str.14
  %call3.i56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i53, i32 noundef %sub.i54, ptr noundef nonnull %.str.13..str.14.i55, ptr noundef %addr) #8
  %len.0.i57 = add nsw i32 %call3.i51, 2
  %add5.i58 = add i32 %len.0.i57, %call3.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i58)
  %cmp7.i59 = icmp ugt i32 %add5.i58, 161
  br i1 %cmp7.i59, label %do.body10.i60, label %ip_vs_dbg_addr.exit62, !prof !56

do.body10.i60:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !57
  unreachable

ip_vs_dbg_addr.exit62:                            ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %port, align 2
  %conv33 = zext i16 %26 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i53, i32 noundef %conv33) #12
  br label %if.end35

if.end35:                                         ; preds = %ip_vs_dbg_addr.exit62, %do.body16.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ %13, %if.end35 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_dh_reassign(ptr noundef %s, ptr noundef %svc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %0 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %destinations, align 4
  %cmp.i.not = icmp eq ptr %1, %destinations
  br label %do.end

do.end:                                           ; preds = %if.end37.do.end_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end37.do.end_crit_edge ]
  %b.04 = phi ptr [ %s, %entry ], [ %incdec.ptr, %if.end37.do.end_crit_edge ]
  %p.03 = phi ptr [ %destinations, %entry ], [ %p.2, %if.end37.do.end_crit_edge ]
  %2 = ptrtoint ptr %b.04 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b.04, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %3, i32 0, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !55
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then.if.end_crit_edge, !prof !56

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i.i, %if.then.if.end_crit_edge, %do.end.if.end_crit_edge
  br i1 %cmp.i.not, label %do.body10, label %if.else

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %b.04 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %b.04, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end
  %cmp19 = icmp eq ptr %p.03, %destinations
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
  %p.1 = phi ptr [ %7, %if.then20 ], [ %p.03, %if.else.if.end21_crit_edge ]
  %refcnt.i1 = getelementptr inbounds %struct.ip_vs_dest, ptr %p.1, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i1, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i1, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i1, ptr %refcnt.i1, i32 1, ptr elementtype(i32) %refcnt.i1) #8, !srcloc !58
  %asmresult.i.i.i.i.i.i2 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i2)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i2, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end21.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !56

if.end21.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end21
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i2, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_vs_dest_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end21.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end21.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i1, i32 noundef %.sink.i.i.i.i) #8
  br label %ip_vs_dest_hold.exit

ip_vs_dest_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge
  %10 = ptrtoint ptr %b.04 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %p.1, ptr %b.04, align 4
  %11 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.1, align 4
  br label %if.end37

if.end37:                                         ; preds = %ip_vs_dest_hold.exit, %do.body10
  %p.2 = phi ptr [ %p.03, %do.body10 ], [ %12, %ip_vs_dest_hold.exit ]
  %incdec.ptr = getelementptr %struct.ip_vs_dh_bucket, ptr %b.04, i32 1
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.end37.do.end_crit_edge

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %if.end37
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_ip_vs_dh__590_270_ip_vs_dh_init6, !1, !"__initcall__kmod_ip_vs_dh__590_270_ip_vs_dh_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_ip_vs_dh_cleanup, !3, !"__exitcall_ip_vs_dh_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 271, i32 1}
!4 = !{ptr @__UNIQUE_ID_file591, !5, !"__UNIQUE_ID_file591", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 272, i32 1}
!6 = !{ptr @__UNIQUE_ID_license592, !5, !"__UNIQUE_ID_license592", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 245, i32 12}
!9 = !{ptr @ip_vs_dh_scheduler, !10, !"ip_vs_dh_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 243, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 162, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_dh_init_svc._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_dh_init_svc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 110, i32 10}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 182, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ip_vs_dh_done_svc._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ip_vs_dh_done_svc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 142, i32 10}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 219, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ip_vs_dh_schedule._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ip_vs_dh_schedule._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 227, i32 28}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 231, i32 2}
!35 = !{ptr @ip_vs_dh_schedule._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ip_vs_dh_schedule._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/netfilter/ipvs/ip_vs_dh.c", i32 90, i32 9}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2158072957}
!54 = !{i64 2148443638}
!55 = !{i64 2148358102, i64 2148358134, i64 2148358163, i64 2148358197, i64 2148358228, i64 2148358251}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2158035438, i64 2158035922, i64 2158035475, i64 2158035531, i64 2158035565, i64 2158035589, i64 2158035630, i64 2158035651, i64 2158035679, i64 2158035713}
!58 = !{i64 2148355637, i64 2148355669, i64 2148355698, i64 2148355732, i64 2148355763, i64 2148355786}
!59 = !{!"branch_weights", i32 2000, i32 1}
