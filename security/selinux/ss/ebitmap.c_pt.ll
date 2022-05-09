; ModuleID = '/llk/IR_all_yes/security/selinux/ss/ebitmap.c_pt.bc'
source_filename = "../security/selinux/ss/ebitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ebitmap = type { ptr, i32 }
%struct.ebitmap_node = type { ptr, [6 x i32], i32 }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.policy_file = type { ptr, i32 }

@ebitmap_node_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@ebitmap_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013SELinux: ebitmap: map size %u does not match my size %zd (high bit was %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ebitmap_read\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"security/selinux/ss/ebitmap.c\00", [34 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr = internal global ptr @ebitmap_read._entry, section ".printk_index", align 4
@ebitmap_read._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: ebitmap: truncated map\0A\00", [61 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.5 = internal global ptr @ebitmap_read._entry.3, section ".printk_index", align 4
@ebitmap_read._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013SELinux: ebitmap start bit (%d) is not a multiple of the map unit size (%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.8 = internal global ptr @ebitmap_read._entry.6, section ".printk_index", align 4
@ebitmap_read._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013SELinux: ebitmap start bit (%d) is beyond the end of the bitmap (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.11 = internal global ptr @ebitmap_read._entry.9, section ".printk_index", align 4
@ebitmap_read._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: ebitmap: out of memory\0A\00", [61 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.14 = internal global ptr @ebitmap_read._entry.12, section ".printk_index", align 4
@ebitmap_read._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013SELinux: ebitmap: start bit %d comes after start bit %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.17 = internal global ptr @ebitmap_read._entry.15, section ".printk_index", align 4
@ebitmap_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ebitmap_read._entry_ptr.19 = internal global ptr @ebitmap_read._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ebitmap_node\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 386, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 407, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 413, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 419, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 429, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 441, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 449, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [33 x i8] c"../security/selinux/ss/ebitmap.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 561, i32 42 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @ebitmap_read._entry, ptr @ebitmap_read._entry.12, ptr @ebitmap_read._entry.15, ptr @ebitmap_read._entry.18, ptr @ebitmap_read._entry.3, ptr @ebitmap_read._entry.6, ptr @ebitmap_read._entry.9, ptr @ebitmap_read._entry_ptr, ptr @ebitmap_read._entry_ptr.11, ptr @ebitmap_read._entry_ptr.14, ptr @ebitmap_read._entry_ptr.17, ptr @ebitmap_read._entry_ptr.19, ptr @ebitmap_read._entry_ptr.5, ptr @ebitmap_read._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.20], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebitmap_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_cmp(ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e1, i32 0, i32 1
  %0 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %highbit, align 4
  %highbit1 = getelementptr inbounds %struct.ebitmap, ptr %e2, i32 0, i32 1
  %2 = ptrtoint ptr %highbit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %highbit1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.while.cond_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %entry.while.cond_crit_edge
  %n1.0.in = phi ptr [ %n1.0, %land.rhs.while.cond_crit_edge ], [ %e1, %entry.while.cond_crit_edge ]
  %n2.0.in = phi ptr [ %n2.0, %land.rhs.while.cond_crit_edge ], [ %e2, %entry.while.cond_crit_edge ]
  %4 = ptrtoint ptr %n2.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %n2.0 = load ptr, ptr %n2.0.in, align 4
  %5 = ptrtoint ptr %n1.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %n1.0 = load ptr, ptr %n1.0.in, align 4
  %tobool.not = icmp eq ptr %n1.0, null
  %tobool3.not = icmp eq ptr %n2.0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %while.cond.while.end_crit_edge, label %land.lhs.true4

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true4:                                   ; preds = %while.cond
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %n1.0, i32 0, i32 2
  %6 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %startbit, align 4
  %startbit5 = getelementptr inbounds %struct.ebitmap_node, ptr %n2.0, i32 0, i32 2
  %8 = ptrtoint ptr %startbit5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startbit5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp eq i32 %7, %9
  br i1 %cmp6, label %land.rhs, label %land.lhs.true4.while.end_crit_edge

land.lhs.true4.while.end_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true4
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1
  %maps7 = getelementptr inbounds %struct.ebitmap_node, ptr %n2.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(24) %maps, ptr noundef dereferenceable(24) %maps7, i32 24) #12
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %land.lhs.true4.while.end_crit_edge, %while.cond.while.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not, %while.cond.while.end_crit_edge ], [ false, %land.lhs.true4.while.end_crit_edge ], [ false, %land.rhs.while.end_crit_edge ]
  %tobool3.not.lcssa = phi i1 [ %tobool3.not, %while.cond.while.end_crit_edge ], [ false, %land.lhs.true4.while.end_crit_edge ], [ false, %land.rhs.while.end_crit_edge ]
  %or.cond28 = select i1 %tobool.not.lcssa, i1 %tobool3.not.lcssa, i1 false
  %spec.select = zext i1 %or.cond28 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_cpy(ptr noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %dst, align 4
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.028 = load ptr, ptr %src, align 4
  %tobool.not29 = icmp eq ptr %n.028, null
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry.while.body_crit_edge
  %n.031 = phi ptr [ %n.0, %if.end9.while.body_crit_edge ], [ %n.028, %entry.while.body_crit_edge ]
  %prev.030 = phi ptr [ %call.i, %if.end9.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %2 = load ptr, ptr @ebitmap_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 2848) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %tobool.not.i = icmp eq ptr %dst, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %tobool1.not9.i = icmp eq ptr %4, null
  br i1 %tobool1.not9.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %n.010.i = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %4, %if.end.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %n.010.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n.010.i, align 4
  %7 = load ptr, ptr @ebitmap_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %n.010.i) #9
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %highbit.i = getelementptr inbounds %struct.ebitmap, ptr %dst, i32 0, i32 1
  %8 = ptrtoint ptr %highbit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %highbit.i, align 4
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dst, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %n.031, i32 0, i32 2
  %10 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %startbit, align 4
  %startbit2 = getelementptr inbounds %struct.ebitmap_node, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %startbit2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %startbit2, align 4
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %call.i, i32 0, i32 1
  %maps3 = getelementptr inbounds %struct.ebitmap_node, ptr %n.031, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %maps, ptr %maps3, i32 24)
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call.i, align 8
  %tobool5.not = icmp eq ptr %prev.030, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.030 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %prev.030, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %dst, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %17 = ptrtoint ptr %n.031 to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0 = load ptr, ptr %n.031, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %entry.while.end_crit_edge
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %src, i32 0, i32 1
  %18 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %highbit, align 4
  %highbit11 = getelementptr inbounds %struct.ebitmap, ptr %dst, i32 0, i32 1
  %20 = ptrtoint ptr %highbit11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %highbit11, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ebitmap_destroy(ptr noundef %e) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %tobool1.not9 = icmp eq ptr %1, null
  br i1 %tobool1.not9, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %n.010 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %n.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n.010, align 4
  %4 = load ptr, ptr @ebitmap_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef nonnull %n.010) #9
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %5 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %highbit, align 4
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_and(ptr nocapture noundef %dst, ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %dst, align 4
  %1 = ptrtoint ptr %e1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %storemerge8.i = load ptr, ptr %e1, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %entry.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 2
  %2 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %3, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %4 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge.i = load ptr, ptr %n.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %highbit.i = getelementptr inbounds %struct.ebitmap, ptr %e1, i32 0, i32 1
  %5 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %n.2 = phi ptr [ null, %for.end.i ], [ %n.0, %if.then.i ]
  %retval.0.i = phi i32 [ %6, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e1, i32 0, i32 1
  %7 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %8)
  %cmp73 = icmp ult i32 %retval.0.i, %8
  br i1 %cmp73, label %for.body.lr.ph, label %ebitmap_start_positive.exit.cleanup_crit_edge

ebitmap_start_positive.exit.cleanup_crit_edge:    ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %ebitmap_start_positive.exit
  %highbit.i16 = getelementptr inbounds %struct.ebitmap, ptr %e2, i32 0, i32 1
  %highbit40.i = getelementptr inbounds %struct.ebitmap, ptr %dst, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ebitmap_next_positive.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.075 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %retval.0.i48, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %n.374 = phi ptr [ %n.2, %for.body.lr.ph ], [ %n.5, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %highbit.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %highbit.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %bit.075)
  %cmp.i17 = icmp ult i32 %10, %bit.075
  br i1 %cmp.i17, label %for.body.for.inc_crit_edge, label %for.body.while.cond.i_crit_edge

for.body.while.cond.i_crit_edge:                  ; preds = %for.body
  br label %while.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body.while.cond.i_crit_edge
  %n.0.in.i = phi ptr [ %n.0.i, %while.body.i.while.cond.i_crit_edge ], [ %e2, %for.body.while.cond.i_crit_edge ]
  %11 = ptrtoint ptr %n.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0.i = load ptr, ptr %n.0.in.i, align 4
  %tobool.not.i18 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i18, label %while.cond.i.for.inc_crit_edge, label %land.rhs.i

while.cond.i.for.inc_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.rhs.i:                                       ; preds = %while.cond.i
  %startbit.i19 = getelementptr inbounds %struct.ebitmap_node, ptr %n.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %startbit.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %startbit.i19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.075, i32 %13)
  %cmp1.not.i = icmp ult i32 %bit.075, %13
  br i1 %cmp1.not.i, label %land.rhs.i.for.inc_crit_edge, label %while.body.i

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body.i:                                     ; preds = %land.rhs.i
  %add.i20 = add i32 %13, 192
  %cmp3.i = icmp ugt i32 %add.i20, %bit.075
  br i1 %cmp3.i, label %if.then4.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.then4.i:                                       ; preds = %while.body.i
  %sub.i.i = sub i32 %bit.075, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 191
  br i1 %cmp.i.i, label %do.body4.i.i, label %ebitmap_get_bit.exit, !prof !42

do.body4.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/ebitmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #9, !srcloc !43
  unreachable

ebitmap_get_bit.exit:                             ; preds = %if.then4.i
  %div18.i.i = lshr i32 %sub.i.i, 5
  %rem.i.i = and i32 %sub.i.i, 31
  %arrayidx.i.i = getelementptr %struct.ebitmap_node, ptr %n.0.i, i32 0, i32 1, i32 %div18.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i32 %15 to i64
  %sh_prom.i.i = zext i32 %rem.i.i to i64
  %shl.i.i = shl nuw nsw i64 1, %sh_prom.i.i
  %and.i.i = and i64 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool10.not.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool10.not.i.i.not, label %ebitmap_get_bit.exit.for.inc_crit_edge, label %while.cond.i25.preheader

ebitmap_get_bit.exit.for.inc_crit_edge:           ; preds = %ebitmap_get_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.cond.i25.preheader:                         ; preds = %ebitmap_get_bit.exit
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0.i2365 = load ptr, ptr %dst, align 4
  %tobool.not.i2466 = icmp eq ptr %n.0.i2365, null
  br i1 %tobool.not.i2466, label %while.cond.i25.preheader.while.end.i_crit_edge, label %land.rhs.i27.preheader

while.cond.i25.preheader.while.end.i_crit_edge:   ; preds = %while.cond.i25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs.i27.preheader:                           ; preds = %while.cond.i25.preheader
  %startbit.i26101 = getelementptr inbounds %struct.ebitmap_node, ptr %n.0.i2365, i32 0, i32 2
  %17 = ptrtoint ptr %startbit.i26101 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %startbit.i26101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.075, i32 %18)
  %cmp.not.i102 = icmp ult i32 %bit.075, %18
  br i1 %cmp.not.i102, label %land.rhs.i27.preheader.while.end.i.loopexit_crit_edge, label %land.rhs.i27.preheader.while.body.i29_crit_edge

land.rhs.i27.preheader.while.body.i29_crit_edge:  ; preds = %land.rhs.i27.preheader
  br label %while.body.i29

land.rhs.i27.preheader.while.end.i.loopexit_crit_edge: ; preds = %land.rhs.i27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.loopexit

while.cond.i25:                                   ; preds = %while.body.i29
  %19 = ptrtoint ptr %n.0.i2368103 to i32
  call void @__asan_load4_noabort(i32 %19)
  %n.0.i23 = load ptr, ptr %n.0.i2368103, align 4
  %tobool.not.i24 = icmp eq ptr %n.0.i23, null
  br i1 %tobool.not.i24, label %while.cond.i25.while.end.i.loopexit_crit_edge, label %land.rhs.i27

while.cond.i25.while.end.i.loopexit_crit_edge:    ; preds = %while.cond.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.loopexit

land.rhs.i27:                                     ; preds = %while.cond.i25
  %startbit.i26 = getelementptr inbounds %struct.ebitmap_node, ptr %n.0.i23, i32 0, i32 2
  %20 = ptrtoint ptr %startbit.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %startbit.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.075, i32 %21)
  %cmp.not.i = icmp ult i32 %bit.075, %21
  br i1 %cmp.not.i, label %land.rhs.i27.while.end.i.loopexit_crit_edge, label %land.rhs.i27.while.body.i29_crit_edge

land.rhs.i27.while.body.i29_crit_edge:            ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i29

land.rhs.i27.while.end.i.loopexit_crit_edge:      ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.loopexit

while.body.i29:                                   ; preds = %land.rhs.i27.while.body.i29_crit_edge, %land.rhs.i27.preheader.while.body.i29_crit_edge
  %cmp.not.i104 = phi i1 [ %cmp.not.i, %land.rhs.i27.while.body.i29_crit_edge ], [ %cmp.not.i102, %land.rhs.i27.preheader.while.body.i29_crit_edge ]
  %22 = phi i32 [ %21, %land.rhs.i27.while.body.i29_crit_edge ], [ %18, %land.rhs.i27.preheader.while.body.i29_crit_edge ]
  %n.0.i2368103 = phi ptr [ %n.0.i23, %land.rhs.i27.while.body.i29_crit_edge ], [ %n.0.i2365, %land.rhs.i27.preheader.while.body.i29_crit_edge ]
  %add.i28 = add i32 %22, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i28, i32 %bit.075)
  %cmp2.i = icmp ugt i32 %add.i28, %bit.075
  br i1 %cmp2.i, label %if.then.i30, label %while.cond.i25

if.then.i30:                                      ; preds = %while.body.i29
  %sub.i94.i = sub i32 %bit.075, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %sub.i94.i)
  %cmp.i95.i = icmp ugt i32 %sub.i94.i, 191
  br i1 %cmp.i95.i, label %do.body4.i.i32, label %ebitmap_node_set_bit.exit.i, !prof !42

do.body4.i.i32:                                   ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/ebitmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

ebitmap_node_set_bit.exit.i:                      ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #11
  %div15.i.i = lshr i32 %sub.i94.i, 5
  %rem.i.i33 = and i32 %sub.i94.i, 31
  %shl.i.i34 = shl nuw i32 1, %rem.i.i33
  %arrayidx.i.i35 = getelementptr %struct.ebitmap_node, ptr %n.0.i2368103, i32 0, i32 1, i32 %div15.i.i
  %23 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i35, align 4
  %or.i.i = or i32 %24, %shl.i.i34
  store i32 %or.i.i, ptr %arrayidx.i.i35, align 4
  br label %for.inc

while.end.i.loopexit:                             ; preds = %land.rhs.i27.while.end.i.loopexit_crit_edge, %while.cond.i25.while.end.i.loopexit_crit_edge, %land.rhs.i27.preheader.while.end.i.loopexit_crit_edge
  %cmp.not.i.lcssa = phi i1 [ %cmp.not.i102, %land.rhs.i27.preheader.while.end.i.loopexit_crit_edge ], [ %cmp.not.i104, %while.cond.i25.while.end.i.loopexit_crit_edge ], [ %cmp.not.i, %land.rhs.i27.while.end.i.loopexit_crit_edge ]
  %prev.0.i.lcssa.ph = phi ptr [ null, %land.rhs.i27.preheader.while.end.i.loopexit_crit_edge ], [ %n.0.i2368103, %land.rhs.i27.while.end.i.loopexit_crit_edge ], [ %n.0.i2368103, %while.cond.i25.while.end.i.loopexit_crit_edge ]
  %25 = xor i1 %cmp.not.i.lcssa, true
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.cond.i25.preheader.while.end.i_crit_edge
  %prev.0.i.lcssa = phi ptr [ null, %while.cond.i25.preheader.while.end.i_crit_edge ], [ %prev.0.i.lcssa.ph, %while.end.i.loopexit ]
  %tobool.not.i24.lcssa = phi i1 [ true, %while.cond.i25.preheader.while.end.i_crit_edge ], [ %25, %while.end.i.loopexit ]
  %26 = load ptr, ptr @ebitmap_node_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %26, i32 noundef 2848) #9
  %tobool32.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool32.not.i, label %while.end.i.cleanup_crit_edge, label %ebitmap_node_set_bit.exit110.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ebitmap_node_set_bit.exit110.i:                   ; preds = %while.end.i
  %rem.i = urem i32 %bit.075, 192
  %sub.i = sub nuw i32 %bit.075, %rem.i
  %startbit35.i = getelementptr inbounds %struct.ebitmap_node, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %startbit35.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %startbit35.i, align 4
  %div15.i105.i = lshr i32 %rem.i, 5
  %rem.i106.i = and i32 %rem.i, 31
  %shl.i107.i = shl nuw i32 1, %rem.i106.i
  %arrayidx.i108.i = getelementptr %struct.ebitmap_node, ptr %call.i.i, i32 0, i32 1, i32 %div15.i105.i
  %28 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i108.i, align 4
  %or.i109.i = or i32 %29, %shl.i107.i
  store i32 %or.i109.i, ptr %arrayidx.i108.i, align 4
  br i1 %tobool.not.i24.lcssa, label %if.then37.i, label %ebitmap_node_set_bit.exit110.i.if.end41.i_crit_edge

ebitmap_node_set_bit.exit110.i.if.end41.i_crit_edge: ; preds = %ebitmap_node_set_bit.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then37.i:                                      ; preds = %ebitmap_node_set_bit.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %startbit35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %startbit35.i, align 4
  %add39.i = add i32 %31, 192
  %32 = ptrtoint ptr %highbit40.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add39.i, ptr %highbit40.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %ebitmap_node_set_bit.exit110.i.if.end41.i_crit_edge
  %tobool42.not.i = icmp eq ptr %prev.0.i.lcssa, null
  br i1 %tobool42.not.i, label %if.else47.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %prev.0.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.0.i.lcssa, align 4
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call.i.i, align 8
  store ptr %call.i.i, ptr %prev.0.i.lcssa, align 4
  br label %for.inc

if.else47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst, align 4
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %call.i.i, align 8
  store ptr %call.i.i, ptr %dst, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else47.i, %if.then43.i, %ebitmap_node_set_bit.exit.i, %ebitmap_get_bit.exit.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %while.cond.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %maps.i36 = getelementptr inbounds %struct.ebitmap_node, ptr %n.374, i32 0, i32 1
  %startbit.i37 = getelementptr inbounds %struct.ebitmap_node, ptr %n.374, i32 0, i32 2
  %39 = ptrtoint ptr %startbit.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %startbit.i37, align 4
  %sub.i38 = add i32 %bit.075, 1
  %add.i39 = sub i32 %sub.i38, %40
  %call.i40 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i36, i32 noundef 192, i32 noundef %add.i39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i40)
  %cmp.i41 = icmp ult i32 %call.i40, 192
  br i1 %cmp.i41, label %if.then.i42, label %for.inc.for.cond.i_crit_edge

for.inc.for.cond.i_crit_edge:                     ; preds = %for.inc
  br label %for.cond.i

if.then.i42:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %startbit.i37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %startbit.i37, align 4
  %add2.i = add i32 %42, %call.i40
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i45.for.cond.i_crit_edge, %for.inc.for.cond.i_crit_edge
  %n.4 = phi ptr [ %storemerge.i43, %for.body.i45.for.cond.i_crit_edge ], [ %n.374, %for.inc.for.cond.i_crit_edge ]
  %43 = ptrtoint ptr %n.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %storemerge.i43 = load ptr, ptr %n.4, align 4
  %tobool.not.i44 = icmp eq ptr %storemerge.i43, null
  br i1 %tobool.not.i44, label %for.end.i47, label %for.body.i45

for.body.i45:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i43, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #9
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i45.for.cond.i_crit_edge

for.body.i45.for.cond.i_crit_edge:                ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i43, i32 0, i32 2
  %44 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %45, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i47:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i47, %if.then7.i, %if.then.i42
  %n.5 = phi ptr [ %n.374, %if.then.i42 ], [ null, %for.end.i47 ], [ %storemerge.i43, %if.then7.i ]
  %retval.0.i48 = phi i32 [ %add2.i, %if.then.i42 ], [ %47, %for.end.i47 ], [ %add9.i, %if.then7.i ]
  %48 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %highbit, align 4
  %cmp = icmp ult i32 %retval.0.i48, %49
  br i1 %cmp, label %ebitmap_next_positive.exit.for.body_crit_edge, label %ebitmap_next_positive.exit.cleanup_crit_edge

ebitmap_next_positive.exit.cleanup_crit_edge:     ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ebitmap_next_positive.exit.for.body_crit_edge:    ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %ebitmap_next_positive.exit.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %ebitmap_start_positive.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ebitmap_start_positive.exit.cleanup_crit_edge ], [ -12, %while.end.i.cleanup_crit_edge ], [ 0, %ebitmap_next_positive.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_get_bit(ptr nocapture noundef readonly %e, i32 noundef %bit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bit)
  %cmp = icmp ult i32 %1, %bit
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %n.0.in = phi ptr [ %n.0, %while.body.while.cond_crit_edge ], [ %e, %entry.while.cond_crit_edge ]
  %2 = ptrtoint ptr %n.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %n.0.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 2
  %3 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %startbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bit)
  %cmp1.not = icmp ugt i32 %4, %bit
  br i1 %cmp1.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %add = add i32 %4, 192
  %cmp3 = icmp ugt i32 %add, %bit
  br i1 %cmp3, label %if.then4, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then4:                                         ; preds = %while.body
  %sub.i = sub i32 %bit, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 191
  br i1 %cmp.i, label %do.body4.i, label %ebitmap_node_get_bit.exit, !prof !42

do.body4.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/ebitmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #9, !srcloc !43
  unreachable

ebitmap_node_get_bit.exit:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %div18.i = lshr i32 %sub.i, 5
  %rem.i = and i32 %sub.i, 31
  %arrayidx.i = getelementptr %struct.ebitmap_node, ptr %n.0, i32 0, i32 1, i32 %div18.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %6 to i64
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool10.not.i = icmp ne i64 %and.i, 0
  %..i = zext i1 %tobool10.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %ebitmap_node_get_bit.exit, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %ebitmap_node_get_bit.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_set_bit(ptr nocapture noundef %e, i32 noundef %bit, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %n.0.in = phi ptr [ %e, %entry ], [ %n.0, %while.body.while.cond_crit_edge ]
  %prev.0 = phi ptr [ null, %entry ], [ %n.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %n.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.0 = load ptr, ptr %n.0.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 2
  %1 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %startbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %bit)
  %cmp.not = icmp ugt i32 %2, %bit
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add = add i32 %2, 192
  %cmp2 = icmp ugt i32 %add, %bit
  br i1 %cmp2, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool3.not = icmp eq i32 %value, 0
  %sub.i94 = sub i32 %bit, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %sub.i94)
  %cmp.i95 = icmp ugt i32 %sub.i94, 191
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  br i1 %cmp.i95, label %do.body4.i, label %ebitmap_node_set_bit.exit, !prof !42

do.body4.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/ebitmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

ebitmap_node_set_bit.exit:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %div15.i = lshr i32 %sub.i94, 5
  %rem.i = and i32 %sub.i94, 31
  %shl.i = shl nuw i32 1, %rem.i
  %arrayidx.i = getelementptr %struct.ebitmap_node, ptr %n.0, i32 0, i32 1, i32 %div15.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %4, %shl.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %cleanup52

if.else:                                          ; preds = %if.then
  br i1 %cmp.i95, label %do.body4.i96, label %ebitmap_node_clr_bit.exit, !prof !42

do.body4.i96:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/ebitmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

ebitmap_node_clr_bit.exit:                        ; preds = %if.else
  %div15.i97 = lshr i32 %sub.i94, 5
  %rem.i98 = and i32 %sub.i94, 31
  %shl.i99 = shl nuw i32 1, %rem.i98
  %neg.i = xor i32 %shl.i99, -1
  %arrayidx.i100 = getelementptr %struct.ebitmap_node, ptr %n.0, i32 0, i32 1, i32 %div15.i97
  %5 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i100, align 4
  %and.i = and i32 %6, %neg.i
  store i32 %and.i, ptr %arrayidx.i100, align 4
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 1
  %call = tail call i32 @_find_first_bit_be(ptr noundef %maps, i32 noundef 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call)
  %cmp5 = icmp ult i32 %call, 192
  br i1 %cmp5, label %ebitmap_node_clr_bit.exit.cleanup52_crit_edge, label %if.end

ebitmap_node_clr_bit.exit.cleanup52_crit_edge:    ; preds = %ebitmap_node_clr_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end:                                           ; preds = %ebitmap_node_clr_bit.exit
  %7 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %n.0, align 4
  %tobool7.not = icmp eq ptr %8, null
  %tobool9.not = icmp eq ptr %prev.0, null
  br i1 %tobool7.not, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  br i1 %tobool9.not, label %if.end16.thread, label %if.end16.thread112

if.end16.thread112:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %startbit11 = getelementptr inbounds %struct.ebitmap_node, ptr %prev.0, i32 0, i32 2
  %9 = ptrtoint ptr %startbit11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %startbit11, align 4
  %add12 = add i32 %10, 192
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %11 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add12, ptr %highbit, align 4
  br label %if.end24

if.end16.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %highbit14 = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %12 = ptrtoint ptr %highbit14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %highbit14, align 4
  br label %if.else21

if.end16:                                         ; preds = %if.end
  br i1 %tobool9.not, label %if.end16.if.else21_crit_edge, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end16.if.else21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else21

if.else21:                                        ; preds = %if.end16.if.else21_crit_edge, %if.end16.thread
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end16.if.end24_crit_edge, %if.end16.thread112
  %e.sink = phi ptr [ %e, %if.else21 ], [ %prev.0, %if.end16.thread112 ], [ %prev.0, %if.end16.if.end24_crit_edge ]
  %13 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n.0, align 4
  %15 = ptrtoint ptr %e.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %e.sink, align 4
  %16 = load ptr, ptr @ebitmap_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %n.0) #9
  br label %cleanup52

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool28.not = icmp eq i32 %value, 0
  br i1 %tobool28.not, label %while.end.cleanup52_crit_edge, label %if.end30

while.end.cleanup52_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end30:                                         ; preds = %while.end
  %17 = load ptr, ptr @ebitmap_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 2848) #9
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.end30.cleanup52_crit_edge, label %ebitmap_node_set_bit.exit110

if.end30.cleanup52_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

ebitmap_node_set_bit.exit110:                     ; preds = %if.end30
  %rem = urem i32 %bit, 192
  %sub = sub i32 %bit, %rem
  %startbit35 = getelementptr inbounds %struct.ebitmap_node, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %startbit35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %startbit35, align 4
  %div15.i105 = lshr i32 %rem, 5
  %rem.i106 = and i32 %rem, 31
  %shl.i107 = shl nuw i32 1, %rem.i106
  %arrayidx.i108 = getelementptr %struct.ebitmap_node, ptr %call.i, i32 0, i32 1, i32 %div15.i105
  %19 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i108, align 4
  %or.i109 = or i32 %20, %shl.i107
  store i32 %or.i109, ptr %arrayidx.i108, align 4
  br i1 %tobool.not, label %if.then37, label %ebitmap_node_set_bit.exit110.if.end41_crit_edge

ebitmap_node_set_bit.exit110.if.end41_crit_edge:  ; preds = %ebitmap_node_set_bit.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then37:                                        ; preds = %ebitmap_node_set_bit.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %startbit35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %startbit35, align 4
  %add39 = add i32 %22, 192
  %highbit40 = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %23 = ptrtoint ptr %highbit40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add39, ptr %highbit40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %ebitmap_node_set_bit.exit110.if.end41_crit_edge
  %tobool42.not = icmp eq ptr %prev.0, null
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.0, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call.i, align 8
  store ptr %call.i, ptr %prev.0, align 4
  br label %cleanup52

if.else47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %e, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call.i, align 8
  store ptr %call.i, ptr %e, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.else47, %if.then43, %if.end30.cleanup52_crit_edge, %while.end.cleanup52_crit_edge, %if.end24, %ebitmap_node_clr_bit.exit.cleanup52_crit_edge, %ebitmap_node_set_bit.exit
  %retval.1 = phi i32 [ 0, %if.end24 ], [ 0, %ebitmap_node_set_bit.exit ], [ 0, %while.end.cleanup52_crit_edge ], [ -12, %if.end30.cleanup52_crit_edge ], [ 0, %if.else47 ], [ 0, %if.then43 ], [ 0, %ebitmap_node_clr_bit.exit.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_netlbl_export(ptr nocapture noundef readonly %ebmap, ptr noundef %catmap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ebmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebmap, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %catmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %catmap, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %catmap, align 4
  %cmp1.not = icmp eq ptr %4, null
  br i1 %cmp1.not, label %if.end.while.body.preheader_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %catmap.addr.04.i = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %4, %if.end.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i, i32 0, i32 2
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i) #9
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %while.body.i.while.body.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.body.preheader_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.i.while.body.preheader_crit_edge, %if.end.while.body.preheader_crit_edge
  %7 = ptrtoint ptr %catmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %catmap, align 4
  br label %while.body

while.body:                                       ; preds = %if.end10.5.while.body_crit_edge, %while.body.preheader
  %e_iter.040 = phi ptr [ %23, %if.end10.5.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 2
  %8 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startbit, align 4
  %arrayidx = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.not = icmp eq i32 %11, 0
  br i1 %cmp5.not, label %while.body.if.end10_crit_edge, label %if.then6

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %while.body
  %call = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %9, i32 noundef %11, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %if.then6.if.end10_crit_edge, label %if.then6.netlbl_export_failure_crit_edge

if.then6.netlbl_export_failure_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %arrayidx.1 = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not.1 = icmp eq i32 %13, 0
  br i1 %cmp5.not.1, label %if.end10.if.end10.1_crit_edge, label %if.then6.1

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.1

if.then6.1:                                       ; preds = %if.end10
  %add = add i32 %9, 32
  %call.1 = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %add, i32 noundef %13, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp7.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp7.not.1, label %if.then6.1.if.end10.1_crit_edge, label %if.then6.1.netlbl_export_failure_crit_edge

if.then6.1.netlbl_export_failure_crit_edge:       ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.1.if.end10.1_crit_edge:                  ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then6.1.if.end10.1_crit_edge, %if.end10.if.end10.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not.2 = icmp eq i32 %15, 0
  br i1 %cmp5.not.2, label %if.end10.1.if.end10.2_crit_edge, label %if.then6.2

if.end10.1.if.end10.2_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.2

if.then6.2:                                       ; preds = %if.end10.1
  %add.1 = add i32 %9, 64
  %call.2 = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %add.1, i32 noundef %15, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp7.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp7.not.2, label %if.then6.2.if.end10.2_crit_edge, label %if.then6.2.netlbl_export_failure_crit_edge

if.then6.2.netlbl_export_failure_crit_edge:       ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.2.if.end10.2_crit_edge:                  ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.then6.2.if.end10.2_crit_edge, %if.end10.1.if.end10.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.3 = icmp eq i32 %17, 0
  br i1 %cmp5.not.3, label %if.end10.2.if.end10.3_crit_edge, label %if.then6.3

if.end10.2.if.end10.3_crit_edge:                  ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.3

if.then6.3:                                       ; preds = %if.end10.2
  %add.2 = add i32 %9, 96
  %call.3 = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %add.2, i32 noundef %17, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp7.not.3 = icmp eq i32 %call.3, 0
  br i1 %cmp7.not.3, label %if.then6.3.if.end10.3_crit_edge, label %if.then6.3.netlbl_export_failure_crit_edge

if.then6.3.netlbl_export_failure_crit_edge:       ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.3.if.end10.3_crit_edge:                  ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.3

if.end10.3:                                       ; preds = %if.then6.3.if.end10.3_crit_edge, %if.end10.2.if.end10.3_crit_edge
  %arrayidx.4 = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.not.4 = icmp eq i32 %19, 0
  br i1 %cmp5.not.4, label %if.end10.3.if.end10.4_crit_edge, label %if.then6.4

if.end10.3.if.end10.4_crit_edge:                  ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.4

if.then6.4:                                       ; preds = %if.end10.3
  %add.3 = add i32 %9, 128
  %call.4 = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %add.3, i32 noundef %19, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp7.not.4 = icmp eq i32 %call.4, 0
  br i1 %cmp7.not.4, label %if.then6.4.if.end10.4_crit_edge, label %if.then6.4.netlbl_export_failure_crit_edge

if.then6.4.netlbl_export_failure_crit_edge:       ; preds = %if.then6.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.4.if.end10.4_crit_edge:                  ; preds = %if.then6.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.4

if.end10.4:                                       ; preds = %if.then6.4.if.end10.4_crit_edge, %if.end10.3.if.end10.4_crit_edge
  %arrayidx.5 = getelementptr %struct.ebitmap_node, ptr %e_iter.040, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5.not.5 = icmp eq i32 %21, 0
  br i1 %cmp5.not.5, label %if.end10.4.if.end10.5_crit_edge, label %if.then6.5

if.end10.4.if.end10.5_crit_edge:                  ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.5

if.then6.5:                                       ; preds = %if.end10.4
  %add.4 = add i32 %9, 160
  %call.5 = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %add.4, i32 noundef %21, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp7.not.5 = icmp eq i32 %call.5, 0
  br i1 %cmp7.not.5, label %if.then6.5.if.end10.5_crit_edge, label %if.then6.5.netlbl_export_failure_crit_edge

if.then6.5.netlbl_export_failure_crit_edge:       ; preds = %if.then6.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_export_failure

if.then6.5.if.end10.5_crit_edge:                  ; preds = %if.then6.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.5

if.end10.5:                                       ; preds = %if.then6.5.if.end10.5_crit_edge, %if.end10.4.if.end10.5_crit_edge
  %22 = ptrtoint ptr %e_iter.040 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %e_iter.040, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end10.5.cleanup_crit_edge, label %if.end10.5.while.body_crit_edge

if.end10.5.while.body_crit_edge:                  ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end10.5.cleanup_crit_edge:                     ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

netlbl_export_failure:                            ; preds = %if.then6.5.netlbl_export_failure_crit_edge, %if.then6.4.netlbl_export_failure_crit_edge, %if.then6.3.netlbl_export_failure_crit_edge, %if.then6.2.netlbl_export_failure_crit_edge, %if.then6.1.netlbl_export_failure_crit_edge, %if.then6.netlbl_export_failure_crit_edge
  %24 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %catmap, align 4
  %tobool.not3.i30 = icmp eq ptr %25, null
  br i1 %tobool.not3.i30, label %netlbl_export_failure.cleanup_crit_edge, label %netlbl_export_failure.while.body.i34_crit_edge

netlbl_export_failure.while.body.i34_crit_edge:   ; preds = %netlbl_export_failure
  br label %while.body.i34

netlbl_export_failure.cleanup_crit_edge:          ; preds = %netlbl_export_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i34:                                   ; preds = %while.body.i34.while.body.i34_crit_edge, %netlbl_export_failure.while.body.i34_crit_edge
  %catmap.addr.04.i31 = phi ptr [ %27, %while.body.i34.while.body.i34_crit_edge ], [ %25, %netlbl_export_failure.while.body.i34_crit_edge ]
  %next.i32 = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i31, i32 0, i32 2
  %26 = ptrtoint ptr %next.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next.i32, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i31) #9
  %tobool.not.i33 = icmp eq ptr %27, null
  br i1 %tobool.not.i33, label %while.body.i34.cleanup_crit_edge, label %while.body.i34.while.body.i34_crit_edge

while.body.i34.while.body.i34_crit_edge:          ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i34

while.body.i34.cleanup_crit_edge:                 ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.i34.cleanup_crit_edge, %netlbl_export_failure.cleanup_crit_edge, %if.end10.5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %netlbl_export_failure.cleanup_crit_edge ], [ -12, %while.body.i34.cleanup_crit_edge ], [ 0, %if.end10.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_setlong(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_netlbl_import(ptr noundef %ebmap, ptr noundef %catmap) local_unnamed_addr #2 align 64 {
entry:
  %offset = alloca i32, align 4
  %bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap) #9
  %1 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bitmap, align 4, !annotation !46
  %call4547 = call i32 @netlbl_catmap_getlong(ptr noundef %catmap, ptr noundef nonnull %offset, ptr noundef nonnull %bitmap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4547)
  %cmp4648 = icmp slt i32 %call4547, 0
  br i1 %cmp4648, label %entry.netlbl_import_failure_crit_edge, label %if.end.lr.ph.lr.ph

entry.netlbl_import_failure_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_import_failure

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %ebmap, i32 0, i32 1
  br label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %if.end21.if.end.lr.ph_crit_edge, %if.end.lr.ph.lr.ph
  %e_iter.0.ph49 = phi ptr [ null, %if.end.lr.ph.lr.ph ], [ %e_iter.1, %if.end21.if.end.lr.ph_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %if.then5.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %add = add i32 %3, 32
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %offset, align 4
  %call = call i32 @netlbl_catmap_getlong(ptr noundef %catmap, ptr noundef nonnull %offset, ptr noundef nonnull %bitmap) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5.netlbl_import_failure_crit_edge, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5.netlbl_import_failure_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_import_failure

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq ptr %e_iter.0.ph49, null
  br i1 %cmp7, label %if.end6.if.then10_crit_edge, label %lor.lhs.false

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %e_iter.0.ph49, i32 0, i32 2
  %7 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %startbit, align 4
  %add8 = add i32 %8, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add8)
  %cmp9.not = icmp ult i32 %3, %add8
  br i1 %cmp9.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %9 = load ptr, ptr @ebitmap_node_cachep, align 4
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 2848) #9
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %if.then10.netlbl_import_failure_crit_edge, label %if.end14

if.then10.netlbl_import_failure_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_import_failure

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %rem = urem i32 %11, 192
  %sub = sub i32 %11, %rem
  %startbit15 = getelementptr inbounds %struct.ebitmap_node, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %startbit15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %startbit15, align 4
  %ebmap.e_iter.0.ph49 = select i1 %cmp7, ptr %ebmap, ptr %e_iter.0.ph49
  %13 = ptrtoint ptr %ebmap.e_iter.0.ph49 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ebmap.e_iter.0.ph49, align 4
  %14 = load i32, ptr %startbit15, align 4
  %add20 = add i32 %14, 192
  %15 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add20, ptr %highbit, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %lor.lhs.false.if.end21_crit_edge
  %e_iter.1 = phi ptr [ %call.i, %if.end14 ], [ %e_iter.0.ph49, %lor.lhs.false.if.end21_crit_edge ]
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %startbit22 = getelementptr inbounds %struct.ebitmap_node, ptr %e_iter.1, i32 0, i32 2
  %18 = ptrtoint ptr %startbit22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %startbit22, align 4
  %sub23 = sub i32 %17, %19
  %div42 = lshr i32 %sub23, 5
  %20 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitmap, align 4
  %arrayidx = getelementptr %struct.ebitmap_node, ptr %e_iter.1, i32 0, i32 1, i32 %div42
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx, align 4
  %23 = load i32, ptr %offset, align 4
  %add24 = add i32 %23, 32
  store i32 %add24, ptr %offset, align 4
  %call45 = call i32 @netlbl_catmap_getlong(ptr noundef %catmap, ptr noundef nonnull %offset, ptr noundef nonnull %bitmap) #9
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end21.netlbl_import_failure_crit_edge, label %if.end21.if.end.lr.ph_crit_edge

if.end21.if.end.lr.ph_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.lr.ph

if.end21.netlbl_import_failure_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlbl_import_failure

netlbl_import_failure:                            ; preds = %if.end21.netlbl_import_failure_crit_edge, %if.then10.netlbl_import_failure_crit_edge, %if.then5.netlbl_import_failure_crit_edge, %entry.netlbl_import_failure_crit_edge
  %tobool.not.i = icmp eq ptr %ebmap, null
  br i1 %tobool.not.i, label %netlbl_import_failure.cleanup_crit_edge, label %if.end.i

netlbl_import_failure.cleanup_crit_edge:          ; preds = %netlbl_import_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %netlbl_import_failure
  %24 = ptrtoint ptr %ebmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ebmap, align 4
  %tobool1.not9.i = icmp eq ptr %25, null
  br i1 %tobool1.not9.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %n.010.i = phi ptr [ %27, %while.body.i.while.body.i_crit_edge ], [ %25, %if.end.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %n.010.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %n.010.i, align 4
  %28 = load ptr, ptr @ebitmap_node_cachep, align 4
  call void @kmem_cache_free(ptr noundef %28, ptr noundef nonnull %n.010.i) #9
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %highbit.i = getelementptr inbounds %struct.ebitmap, ptr %ebmap, i32 0, i32 1
  %29 = ptrtoint ptr %highbit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %highbit.i, align 4
  %30 = ptrtoint ptr %ebmap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ebmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %netlbl_import_failure.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %netlbl_import_failure.cleanup_crit_edge ], [ -12, %while.end.i ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_getlong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_contains(ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2, i32 noundef %last_e2bit) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e1, i32 0, i32 1
  %0 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %highbit, align 4
  %highbit1 = getelementptr inbounds %struct.ebitmap, ptr %e2, i32 0, i32 1
  %2 = ptrtoint ptr %highbit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %highbit1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_e2bit)
  %tobool15.not = icmp eq i32 %last_e2bit, 0
  %4 = ptrtoint ptr %e2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n2.0.ph117 = load ptr, ptr %e2, align 4
  %n2.0.ph.fr118 = freeze ptr %n2.0.ph117
  %tobool3.not119 = icmp eq ptr %n2.0.ph.fr118, null
  br i1 %tobool3.not119, label %if.end.while.end42.split_crit_edge, label %if.end.while.cond.preheader_crit_edge

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  br label %while.cond.preheader

if.end.while.end42.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42.split

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %tobool3.not125 = phi i1 [ %tobool3.not, %while.end.while.cond.preheader_crit_edge ], [ %tobool3.not119, %if.end.while.cond.preheader_crit_edge ]
  %n2.0.ph.fr122 = phi ptr [ %n2.0.ph.fr, %while.end.while.cond.preheader_crit_edge ], [ %n2.0.ph.fr118, %if.end.while.cond.preheader_crit_edge ]
  %n1.0.in.ph121 = phi ptr [ %n1.0, %while.end.while.cond.preheader_crit_edge ], [ %e1, %if.end.while.cond.preheader_crit_edge ]
  %startbit4126 = getelementptr inbounds %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %n1.0.in = phi ptr [ %n1.0, %while.body.while.cond_crit_edge ], [ %n1.0.in.ph121, %while.cond.preheader ]
  %5 = ptrtoint ptr %n1.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %n1.0 = load ptr, ptr %n1.0.in, align 4
  %tobool.not = icmp eq ptr %n1.0, null
  br i1 %tobool.not, label %while.cond.while.end42.split_crit_edge, label %land.rhs

while.cond.while.end42.split_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42.split

land.rhs:                                         ; preds = %while.cond
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %n1.0, i32 0, i32 2
  %6 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %startbit, align 4
  %8 = ptrtoint ptr %startbit4126 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startbit4126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp ugt i32 %7, %9
  br i1 %cmp5.not, label %land.rhs.while.end42.split_crit_edge, label %while.body

land.rhs.while.end42.split_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42.split

while.body:                                       ; preds = %land.rhs
  %cmp8 = icmp ult i32 %7, %9
  br i1 %cmp8, label %while.body.while.cond_crit_edge, label %for.cond.preheader

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

for.cond.preheader:                               ; preds = %while.body
  %arrayidx = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %for.body, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx.1 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not.1 = icmp eq i32 %13, 0
  br i1 %tobool13.not.1, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx.2 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not.2 = icmp eq i32 %15, 0
  br i1 %tobool13.not.2, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.3 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not.3 = icmp eq i32 %17, 0
  br i1 %tobool13.not.3, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.4 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not.4 = icmp eq i32 %19, 0
  br i1 %tobool13.not.4, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.5 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not.5 = icmp eq i32 %21, 0
  br i1 %tobool13.not.5, label %for.body.4.while.end_crit_edge, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4.while.end_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end:                                          ; preds = %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cmp28 = phi i1 [ false, %for.body.4.for.end_crit_edge ], [ true, %for.body.3.for.end_crit_edge ], [ true, %for.body.2.for.end_crit_edge ], [ true, %for.body.1.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ], [ true, %for.cond.preheader.for.end_crit_edge ]
  %cmp28.1 = phi i1 [ false, %for.body.4.for.end_crit_edge ], [ false, %for.body.3.for.end_crit_edge ], [ true, %for.body.2.for.end_crit_edge ], [ true, %for.body.1.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ], [ true, %for.cond.preheader.for.end_crit_edge ]
  %cmp28.2 = phi i1 [ false, %for.body.4.for.end_crit_edge ], [ false, %for.body.3.for.end_crit_edge ], [ false, %for.body.2.for.end_crit_edge ], [ true, %for.body.1.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ], [ true, %for.cond.preheader.for.end_crit_edge ]
  %cmp28.3 = phi i1 [ false, %for.body.4.for.end_crit_edge ], [ false, %for.body.3.for.end_crit_edge ], [ false, %for.body.2.for.end_crit_edge ], [ false, %for.body.1.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ], [ true, %for.cond.preheader.for.end_crit_edge ]
  %i.087.lcssa = phi i32 [ 0, %for.body.4.for.end_crit_edge ], [ 1, %for.body.3.for.end_crit_edge ], [ 2, %for.body.2.for.end_crit_edge ], [ 3, %for.body.1.for.end_crit_edge ], [ 4, %for.body.for.end_crit_edge ], [ 5, %for.cond.preheader.for.end_crit_edge ]
  br i1 %tobool15.not, label %for.end.while.body29_crit_edge, label %if.then18

for.end.while.body29_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body29

if.then18:                                        ; preds = %for.end
  %mul = shl nuw nsw i32 %i.087.lcssa, 5
  %arrayidx21 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %i.087.lcssa
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #9, !range !47
  %sub.i = add i32 %9, 31
  %add = add i32 %sub.i, %mul
  %add22 = sub i32 %add, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %last_e2bit)
  %cmp23 = icmp ugt i32 %add22, %last_e2bit
  br i1 %cmp23, label %if.then18.cleanup46_crit_edge, label %if.then18.while.body29_crit_edge

if.then18.while.body29_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body29

if.then18.cleanup46_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.cond27:                                     ; preds = %while.body29
  br i1 %cmp28, label %while.body29.1, label %while.cond27.while.end_crit_edge

while.cond27.while.end_crit_edge:                 ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29.1:                                   ; preds = %while.cond27
  %dec39 = add nsw i32 %i.087.lcssa, -1
  %arrayidx31.1 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %dec39
  %25 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx31.1, align 4
  %arrayidx33.1 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %dec39
  %27 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx33.1, align 4
  %and.1 = and i32 %28, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %28)
  %cmp36.not.1 = icmp eq i32 %and.1, %28
  br i1 %cmp36.not.1, label %while.cond27.1, label %while.body29.1.cleanup46_crit_edge

while.body29.1.cleanup46_crit_edge:               ; preds = %while.body29.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.cond27.1:                                   ; preds = %while.body29.1
  br i1 %cmp28.1, label %while.body29.2, label %while.cond27.1.while.end_crit_edge

while.cond27.1.while.end_crit_edge:               ; preds = %while.cond27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29.2:                                   ; preds = %while.cond27.1
  %dec39.1 = add nsw i32 %i.087.lcssa, -2
  %arrayidx31.2 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %dec39.1
  %29 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31.2, align 4
  %arrayidx33.2 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %dec39.1
  %31 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33.2, align 4
  %and.2 = and i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %32)
  %cmp36.not.2 = icmp eq i32 %and.2, %32
  br i1 %cmp36.not.2, label %while.cond27.2, label %while.body29.2.cleanup46_crit_edge

while.body29.2.cleanup46_crit_edge:               ; preds = %while.body29.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.cond27.2:                                   ; preds = %while.body29.2
  br i1 %cmp28.2, label %while.body29.3, label %while.cond27.2.while.end_crit_edge

while.cond27.2.while.end_crit_edge:               ; preds = %while.cond27.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29.3:                                   ; preds = %while.cond27.2
  %dec39.2 = add nsw i32 %i.087.lcssa, -3
  %arrayidx31.3 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %dec39.2
  %33 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx31.3, align 4
  %arrayidx33.3 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %dec39.2
  %35 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx33.3, align 4
  %and.3 = and i32 %36, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %and.3, i32 %36)
  %cmp36.not.3 = icmp eq i32 %and.3, %36
  br i1 %cmp36.not.3, label %while.cond27.3, label %while.body29.3.cleanup46_crit_edge

while.body29.3.cleanup46_crit_edge:               ; preds = %while.body29.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.cond27.3:                                   ; preds = %while.body29.3
  br i1 %cmp28.3, label %while.body29.4, label %while.cond27.3.while.end_crit_edge

while.cond27.3.while.end_crit_edge:               ; preds = %while.cond27.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29.4:                                   ; preds = %while.cond27.3
  %dec39.3 = add nsw i32 %i.087.lcssa, -4
  %arrayidx31.4 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %dec39.3
  %37 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx31.4, align 4
  %arrayidx33.4 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %dec39.3
  %39 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx33.4, align 4
  %and.4 = and i32 %40, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %and.4, i32 %40)
  %cmp36.not.4 = icmp eq i32 %and.4, %40
  br i1 %cmp36.not.4, label %while.cond27.4, label %while.body29.4.cleanup46_crit_edge

while.body29.4.cleanup46_crit_edge:               ; preds = %while.body29.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.cond27.4:                                   ; preds = %while.body29.4
  br i1 %tobool13.not, label %while.cond27.4.while.end_crit_edge, label %while.body29.5

while.cond27.4.while.end_crit_edge:               ; preds = %while.cond27.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29.5:                                   ; preds = %while.cond27.4
  %dec39.4 = add nsw i32 %i.087.lcssa, -5
  %arrayidx31.5 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %dec39.4
  %41 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx31.5, align 4
  %arrayidx33.5 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %dec39.4
  %43 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx33.5, align 4
  %and.5 = and i32 %44, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %and.5, i32 %44)
  %cmp36.not.5 = icmp eq i32 %and.5, %44
  br i1 %cmp36.not.5, label %while.body29.5.while.end_crit_edge, label %while.body29.5.cleanup46_crit_edge

while.body29.5.cleanup46_crit_edge:               ; preds = %while.body29.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.body29.5.while.end_crit_edge:               ; preds = %while.body29.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29:                                     ; preds = %if.then18.while.body29_crit_edge, %for.end.while.body29_crit_edge
  %arrayidx31 = getelementptr %struct.ebitmap_node, ptr %n1.0, i32 0, i32 1, i32 %i.087.lcssa
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr %struct.ebitmap_node, ptr %n2.0.ph.fr122, i32 0, i32 1, i32 %i.087.lcssa
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx33, align 4
  %and = and i32 %48, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %48)
  %cmp36.not = icmp eq i32 %and, %48
  br i1 %cmp36.not, label %while.cond27, label %while.body29.cleanup46_crit_edge

while.body29.cleanup46_crit_edge:                 ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

while.end:                                        ; preds = %while.body29.5.while.end_crit_edge, %while.cond27.4.while.end_crit_edge, %while.cond27.3.while.end_crit_edge, %while.cond27.2.while.end_crit_edge, %while.cond27.1.while.end_crit_edge, %while.cond27.while.end_crit_edge, %for.body.4.while.end_crit_edge
  %49 = ptrtoint ptr %n2.0.ph.fr122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %n2.0.ph = load ptr, ptr %n2.0.ph.fr122, align 4
  %n2.0.ph.fr = freeze ptr %n2.0.ph
  %tobool3.not = icmp eq ptr %n2.0.ph.fr, null
  br i1 %tobool3.not, label %while.end.while.end42.split_crit_edge, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.end.while.end42.split_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42.split

while.end42.split:                                ; preds = %while.end.while.end42.split_crit_edge, %land.rhs.while.end42.split_crit_edge, %while.cond.while.end42.split_crit_edge, %if.end.while.end42.split_crit_edge
  %tobool3.not116 = phi i1 [ %tobool3.not119, %if.end.while.end42.split_crit_edge ], [ %tobool3.not125, %while.cond.while.end42.split_crit_edge ], [ %tobool3.not125, %land.rhs.while.end42.split_crit_edge ], [ %tobool3.not, %while.end.while.end42.split_crit_edge ]
  %. = zext i1 %tobool3.not116 to i32
  br label %cleanup46

cleanup46:                                        ; preds = %while.end42.split, %while.body29.cleanup46_crit_edge, %while.body29.5.cleanup46_crit_edge, %while.body29.4.cleanup46_crit_edge, %while.body29.3.cleanup46_crit_edge, %while.body29.2.cleanup46_crit_edge, %while.body29.1.cleanup46_crit_edge, %if.then18.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.3 = phi i32 [ 0, %entry.cleanup46_crit_edge ], [ %., %while.end42.split ], [ 0, %while.body29.5.cleanup46_crit_edge ], [ 0, %while.body29.4.cleanup46_crit_edge ], [ 0, %while.body29.3.cleanup46_crit_edge ], [ 0, %while.body29.2.cleanup46_crit_edge ], [ 0, %while.body29.1.cleanup46_crit_edge ], [ 0, %while.body29.cleanup46_crit_edge ], [ 0, %if.then18.cleanup46_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_read(ptr noundef %e, ptr nocapture noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %e, align 4
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp.i = icmp ult i32 %2, 12
  br i1 %cmp.i, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %7 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -12
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %len.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %10 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %highbit, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %buf.sroa.0.0.copyload)
  %cmp3.not = icmp eq i32 %buf.sroa.0.0.copyload, 1073741824
  br i1 %cmp3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %12, i32 noundef 64, i32 noundef %9) #13
  br label %bad

if.end7:                                          ; preds = %if.end
  %add = add i32 %9, 191
  %rem = urem i32 %add, 192
  %sub = sub i32 %add, %rem
  %13 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rem)
  %tobool.not = icmp eq i32 %add, %rem
  br i1 %tobool.not, label %if.end7.cleanup103.sink.split_crit_edge, label %land.lhs.true

if.end7.cleanup103.sink.split_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103.sink.split

land.lhs.true:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.7.0.copyload)
  %tobool16.not = icmp eq i32 %buf.sroa.7.0.copyload, 0
  br i1 %tobool16.not, label %land.lhs.true.bad_crit_edge, label %for.body.preheader

land.lhs.true.bad_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

for.body.preheader:                               ; preds = %land.lhs.true
  %umax = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %n.0211 = phi ptr [ %n.2, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %i.0210 = phi i32 [ %inc99, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i166 = icmp ult i32 %15, 4
  br i1 %cmp.i166, label %do.end25, label %if.end28

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %bad

if.end28:                                         ; preds = %for.body
  %16 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fp, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %ebitmap_start.0.copyload = load i32, ptr %17, align 1
  %add.ptr.i167 = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr.i167, ptr %fp, align 4
  %sub.i168 = add i32 %15, -4
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i168, ptr %len.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %ebitmap_start.0.copyload)
  %and = and i32 %20, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %20, i32 noundef 64) #13
  br label %bad

if.end37:                                         ; preds = %if.end28
  %21 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %highbit, align 4
  %sub39 = add i32 %22, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub39)
  %cmp40 = icmp ugt i32 %20, %sub39
  br i1 %cmp40, label %do.end44, label %if.end49

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %20, i32 noundef %sub39) #13
  br label %bad

if.end49:                                         ; preds = %if.end37
  %tobool50.not = icmp eq ptr %n.0211, null
  br i1 %tobool50.not, label %if.end49.if.then54_crit_edge, label %lor.lhs.false

if.end49.if.then54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false:                                    ; preds = %if.end49
  %startbit51 = getelementptr inbounds %struct.ebitmap_node, ptr %n.0211, i32 0, i32 2
  %23 = ptrtoint ptr %startbit51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %startbit51, align 4
  %add52 = add i32 %24, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add52)
  %cmp53.not = icmp ult i32 %20, %add52
  br i1 %cmp53.not, label %if.else72, label %lor.lhs.false.if.then54_crit_edge

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false.if.then54_crit_edge, %if.end49.if.then54_crit_edge
  %25 = load ptr, ptr @ebitmap_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef 3520) #9
  %tobool57.not = icmp eq ptr %call.i, null
  br i1 %tobool57.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %rem65 = urem i32 %20, 192
  %sub66 = sub i32 %20, %rem65
  %startbit67 = getelementptr inbounds %struct.ebitmap_node, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %startbit67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub66, ptr %startbit67, align 4
  %e.n.0211 = select i1 %tobool50.not, ptr %e, ptr %n.0211
  %27 = ptrtoint ptr %e.n.0211 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %e.n.0211, align 4
  br label %if.end83

cleanup:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %bad

if.else72:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp74.not = icmp ugt i32 %20, %24
  br i1 %cmp74.not, label %if.else72.if.end83_crit_edge, label %do.end78

if.else72.if.end83_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end78:                                         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %20, i32 noundef %24) #13
  br label %bad

if.end83:                                         ; preds = %if.else72.if.end83_crit_edge, %if.end64
  %n.2 = phi ptr [ %n.0211, %if.else72.if.end83_crit_edge ], [ %call.i, %if.end64 ]
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp.i173 = icmp ult i32 %29, 8
  br i1 %cmp.i173, label %do.end89, label %if.end92

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %bad

if.end92:                                         ; preds = %if.end83
  %30 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fp, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %mapbits.0.copyload = load i64, ptr %31, align 1
  %add.ptr.i174 = getelementptr i8, ptr %31, i32 8
  store ptr %add.ptr.i174, ptr %fp, align 4
  %sub.i175 = add i32 %29, -8
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i175, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mapbits.0.copyload)
  %tobool95.not206 = icmp eq i64 %mapbits.0.copyload, 0
  br i1 %tobool95.not206, label %if.end92.for.inc_crit_edge, label %while.body.preheader

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body.preheader:                             ; preds = %if.end92
  %startbit93 = getelementptr inbounds %struct.ebitmap_node, ptr %n.2, i32 0, i32 2
  %34 = ptrtoint ptr %startbit93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %startbit93, align 4
  %sub94 = sub i32 %20, %35
  %div164 = lshr i32 %sub94, 5
  %36 = tail call i64 @llvm.bswap.i64(i64 %mapbits.0.copyload)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %index.0208 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %div164, %while.body.preheader ]
  %map.0207 = phi i64 [ %shr, %while.body.while.body_crit_edge ], [ %36, %while.body.preheader ]
  %conv = trunc i64 %map.0207 to i32
  %inc = add nuw nsw i32 %index.0208, 1
  %arrayidx97 = getelementptr %struct.ebitmap_node, ptr %n.2, i32 0, i32 1, i32 %index.0208
  %37 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %arrayidx97, align 4
  %shr = lshr i64 %map.0207, 32
  %tobool95.not = icmp ult i64 %map.0207, 4294967296
  br i1 %tobool95.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %if.end92.for.inc_crit_edge
  %inc99 = add nuw i32 %i.0210, 1
  %exitcond.not = icmp eq i32 %inc99, %umax
  br i1 %exitcond.not, label %for.inc.cleanup103_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

bad:                                              ; preds = %do.end89, %do.end78, %cleanup, %do.end44, %do.end34, %do.end25, %land.lhs.true.bad_crit_edge, %do.end
  %38 = phi i32 [ -22, %do.end25 ], [ -12, %cleanup ], [ -22, %do.end89 ], [ -22, %do.end ], [ -22, %do.end34 ], [ -22, %do.end44 ], [ -22, %do.end78 ], [ -22, %land.lhs.true.bad_crit_edge ]
  %tobool.not.i = icmp eq ptr %e, null
  br i1 %tobool.not.i, label %bad.cleanup103_crit_edge, label %if.end.i179

bad.cleanup103_crit_edge:                         ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

if.end.i179:                                      ; preds = %bad
  %39 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %e, align 4
  %tobool1.not9.i = icmp eq ptr %40, null
  br i1 %tobool1.not9.i, label %if.end.i179.while.end.i_crit_edge, label %if.end.i179.while.body.i_crit_edge

if.end.i179.while.body.i_crit_edge:               ; preds = %if.end.i179
  br label %while.body.i

if.end.i179.while.end.i_crit_edge:                ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i179.while.body.i_crit_edge
  %n.010.i = phi ptr [ %42, %while.body.i.while.body.i_crit_edge ], [ %40, %if.end.i179.while.body.i_crit_edge ]
  %41 = ptrtoint ptr %n.010.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %n.010.i, align 4
  %43 = load ptr, ptr @ebitmap_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %n.010.i) #9
  %tobool1.not.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i179.while.end.i_crit_edge
  %44 = ptrtoint ptr %highbit to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %highbit, align 4
  br label %cleanup103.sink.split

cleanup103.sink.split:                            ; preds = %while.end.i, %if.end7.cleanup103.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %38, %while.end.i ], [ 0, %if.end7.cleanup103.sink.split_crit_edge ]
  %45 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %e, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup103.sink.split, %bad.cleanup103_crit_edge, %for.inc.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.0 = phi i32 [ %38, %bad.cleanup103_crit_edge ], [ -22, %entry.cleanup103_crit_edge ], [ %retval.0.ph, %cleanup103.sink.split ], [ 0, %for.inc.cleanup103_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_write(ptr nocapture noundef readonly %e, ptr nocapture noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %storemerge8.i = load ptr, ptr %e, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %entry.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %n.0, i32 0, i32 2
  %1 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %2, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %storemerge.i = load ptr, ptr %n.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %highbit.i = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %n.2 = phi ptr [ null, %for.end.i ], [ %n.0, %if.then.i ]
  %retval.0.i = phi i32 [ %5, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %6 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %7)
  %cmp219 = icmp ult i32 %retval.0.i, %7
  br i1 %cmp219, label %ebitmap_start_positive.exit.for.body_crit_edge, label %ebitmap_start_positive.exit.for.end_crit_edge

ebitmap_start_positive.exit.for.end_crit_edge:    ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ebitmap_start_positive.exit.for.body_crit_edge:   ; preds = %ebitmap_start_positive.exit
  br label %for.body

for.body:                                         ; preds = %ebitmap_next_positive.exit.for.body_crit_edge, %ebitmap_start_positive.exit.for.body_crit_edge
  %count.0223 = phi i32 [ %count.1, %ebitmap_next_positive.exit.for.body_crit_edge ], [ 0, %ebitmap_start_positive.exit.for.body_crit_edge ]
  %bit.0222 = phi i32 [ %retval.0.i143, %ebitmap_next_positive.exit.for.body_crit_edge ], [ %retval.0.i, %ebitmap_start_positive.exit.for.body_crit_edge ]
  %last_startbit.0221 = phi i32 [ %last_startbit.1, %ebitmap_next_positive.exit.for.body_crit_edge ], [ -1, %ebitmap_start_positive.exit.for.body_crit_edge ]
  %n.3220 = phi ptr [ %n.5, %ebitmap_next_positive.exit.for.body_crit_edge ], [ %n.2, %ebitmap_start_positive.exit.for.body_crit_edge ]
  %rem = srem i32 %bit.0222, 64
  %sub = sub i32 %bit.0222, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %last_startbit.0221)
  %cmp1 = icmp sgt i32 %sub, %last_startbit.0221
  %sub5 = and i32 %bit.0222, -64
  %last_startbit.1 = select i1 %cmp1, i32 %sub5, i32 %last_startbit.0221
  %inc = zext i1 %cmp1 to i32
  %count.1 = add i32 %count.0223, %inc
  %maps.i132 = getelementptr inbounds %struct.ebitmap_node, ptr %n.3220, i32 0, i32 1
  %startbit.i133 = getelementptr inbounds %struct.ebitmap_node, ptr %n.3220, i32 0, i32 2
  %8 = ptrtoint ptr %startbit.i133 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startbit.i133, align 4
  %sub.i = add nuw i32 %bit.0222, 1
  %add.i134 = sub i32 %sub.i, %9
  %call.i135 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i132, i32 noundef 192, i32 noundef %add.i134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i135)
  %cmp.i136 = icmp ult i32 %call.i135, 192
  br i1 %cmp.i136, label %if.then.i137, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

if.then.i137:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %startbit.i133 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %startbit.i133, align 4
  %add2.i = add i32 %11, %call.i135
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i140.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %n.4 = phi ptr [ %storemerge.i138, %for.body.i140.for.cond.i_crit_edge ], [ %n.3220, %for.body.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %n.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.i138 = load ptr, ptr %n.4, align 4
  %tobool.not.i139 = icmp eq ptr %storemerge.i138, null
  br i1 %tobool.not.i139, label %for.end.i142, label %for.body.i140

for.body.i140:                                    ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i138, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #9
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i140.for.cond.i_crit_edge

for.body.i140.for.cond.i_crit_edge:               ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #11
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i138, i32 0, i32 2
  %13 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %14, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i142:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i142, %if.then7.i, %if.then.i137
  %n.5 = phi ptr [ %n.3220, %if.then.i137 ], [ null, %for.end.i142 ], [ %storemerge.i138, %if.then7.i ]
  %retval.0.i143 = phi i32 [ %add2.i, %if.then.i137 ], [ %16, %for.end.i142 ], [ %add9.i, %if.then7.i ]
  %17 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %highbit, align 4
  %cmp = icmp ult i32 %retval.0.i143, %18
  br i1 %cmp, label %ebitmap_next_positive.exit.for.body_crit_edge, label %for.cond.for.end_crit_edge

ebitmap_next_positive.exit.for.body_crit_edge:    ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add8.le = add i32 %bit.0222, 64
  %div131.le = and i32 %add8.le, -64
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %ebitmap_start_positive.exit.for.end_crit_edge
  %last_bit.0.lcssa = phi i32 [ %div131.le, %for.cond.for.end_crit_edge ], [ 0, %ebitmap_start_positive.exit.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ %count.1, %for.cond.for.end_crit_edge ], [ 0, %ebitmap_start_positive.exit.for.end_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %last_bit.0.lcssa)
  %20 = tail call i32 @llvm.bswap.i32(i32 %count.0.lcssa)
  %21 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fp, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 1073741824, ptr %22, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 4
  %24 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %19, ptr %buf.sroa.9.0..sroa_idx, align 1
  %buf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 8
  %25 = ptrtoint ptr %buf.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %20, ptr %buf.sroa.11.0..sroa_idx, align 1
  %26 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %27 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len2.i, align 4
  %sub.i144 = add i32 %28, -12
  store i32 %sub.i144, ptr %len2.i, align 4
  %29 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %29)
  %storemerge8.i145 = load ptr, ptr %e, align 4
  %tobool.not9.i146 = icmp eq ptr %storemerge8.i145, null
  br i1 %tobool.not9.i146, label %for.end.for.end.i159_crit_edge, label %for.end.for.body.i151_crit_edge

for.end.for.body.i151_crit_edge:                  ; preds = %for.end
  br label %for.body.i151

for.end.for.end.i159_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i159

for.body.i151:                                    ; preds = %for.inc.i157.for.body.i151_crit_edge, %for.end.for.body.i151_crit_edge
  %n.6 = phi ptr [ %storemerge.i155, %for.inc.i157.for.body.i151_crit_edge ], [ %storemerge8.i145, %for.end.for.body.i151_crit_edge ]
  %maps.i148 = getelementptr inbounds %struct.ebitmap_node, ptr %n.6, i32 0, i32 1
  %call.i149 = tail call i32 @_find_first_bit_be(ptr noundef %maps.i148, i32 noundef 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i149)
  %cmp.i150 = icmp ult i32 %call.i149, 192
  br i1 %cmp.i150, label %if.then.i154, label %for.inc.i157

if.then.i154:                                     ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #11
  %startbit.i152 = getelementptr inbounds %struct.ebitmap_node, ptr %n.6, i32 0, i32 2
  %30 = ptrtoint ptr %startbit.i152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %startbit.i152, align 4
  %add.i153 = add i32 %31, %call.i149
  br label %ebitmap_start_positive.exit161

for.inc.i157:                                     ; preds = %for.body.i151
  %32 = ptrtoint ptr %n.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %storemerge.i155 = load ptr, ptr %n.6, align 4
  %tobool.not.i156 = icmp eq ptr %storemerge.i155, null
  br i1 %tobool.not.i156, label %for.inc.i157.for.end.i159_crit_edge, label %for.inc.i157.for.body.i151_crit_edge

for.inc.i157.for.body.i151_crit_edge:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i151

for.inc.i157.for.end.i159_crit_edge:              ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i159

for.end.i159:                                     ; preds = %for.inc.i157.for.end.i159_crit_edge, %for.end.for.end.i159_crit_edge
  %33 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %highbit, align 4
  br label %ebitmap_start_positive.exit161

ebitmap_start_positive.exit161:                   ; preds = %for.end.i159, %if.then.i154
  %n.8 = phi ptr [ null, %for.end.i159 ], [ %n.6, %if.then.i154 ]
  %retval.0.i160 = phi i32 [ %34, %for.end.i159 ], [ %add.i153, %if.then.i154 ]
  %35 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i160, i32 %36)
  %cmp18226 = icmp ult i32 %retval.0.i160, %36
  br i1 %cmp18226, label %ebitmap_start_positive.exit161.for.body19_crit_edge, label %ebitmap_start_positive.exit161.cleanup76_crit_edge

ebitmap_start_positive.exit161.cleanup76_crit_edge: ; preds = %ebitmap_start_positive.exit161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup76

ebitmap_start_positive.exit161.for.body19_crit_edge: ; preds = %ebitmap_start_positive.exit161
  br label %for.body19

for.body19:                                       ; preds = %ebitmap_next_positive.exit191.for.body19_crit_edge, %ebitmap_start_positive.exit161.for.body19_crit_edge
  %map.0232 = phi i64 [ %map.3, %ebitmap_next_positive.exit191.for.body19_crit_edge ], [ 0, %ebitmap_start_positive.exit161.for.body19_crit_edge ]
  %bit.1229 = phi i32 [ %retval.0.i190, %ebitmap_next_positive.exit191.for.body19_crit_edge ], [ %retval.0.i160, %ebitmap_start_positive.exit161.for.body19_crit_edge ]
  %last_startbit.2228 = phi i32 [ %last_startbit.5, %ebitmap_next_positive.exit191.for.body19_crit_edge ], [ -2147483648, %ebitmap_start_positive.exit161.for.body19_crit_edge ]
  %n.9227 = phi ptr [ %n.11, %ebitmap_next_positive.exit191.for.body19_crit_edge ], [ %n.8, %ebitmap_start_positive.exit161.for.body19_crit_edge ]
  %rem22 = srem i32 %bit.1229, 64
  %sub23 = sub i32 %bit.1229, %rem22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %last_startbit.2228)
  %cmp24 = icmp sgt i32 %sub23, %last_startbit.2228
  br i1 %cmp24, label %if.then25, label %for.body19.if.end50_crit_edge

for.body19.if.end50_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then25:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %map.0232)
  %tobool26.not = icmp eq i64 %map.0232, 0
  br i1 %tobool26.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %last_startbit.2228)
  %38 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fp, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %37, ptr %39, align 1
  %41 = load ptr, ptr %fp, align 4
  %add.ptr.i162 = getelementptr i8, ptr %41, i32 4
  store ptr %add.ptr.i162, ptr %fp, align 4
  %42 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len2.i, align 4
  %sub.i164 = add i32 %43, -4
  store i32 %sub.i164, ptr %len2.i, align 4
  %44 = tail call i64 @llvm.bswap.i64(i64 %map.0232)
  %45 = ptrtoint ptr %add.ptr.i162 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %add.ptr.i162, align 1
  %46 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fp, align 4
  %add.ptr.i165 = getelementptr i8, ptr %47, i32 8
  store ptr %add.ptr.i165, ptr %fp, align 4
  %48 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len2.i, align 4
  %sub.i167 = add i32 %49, -8
  store i32 %sub.i167, ptr %len2.i, align 4
  %last_startbit.3211 = and i32 %bit.1229, -64
  br label %if.end50

cleanup:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %rem30 = and i32 %bit.1229, 63
  %sh_prom = zext i32 %rem30 to i64
  %shl = shl nuw i64 1, %sh_prom
  %last_startbit.3 = and i32 %bit.1229, -64
  br label %for.inc54

if.end50:                                         ; preds = %cleanup.thread, %for.body19.if.end50_crit_edge
  %last_startbit.4 = phi i32 [ %last_startbit.2228, %for.body19.if.end50_crit_edge ], [ %last_startbit.3211, %cleanup.thread ]
  %map.2 = phi i64 [ %map.0232, %for.body19.if.end50_crit_edge ], [ 0, %cleanup.thread ]
  %sub51 = sub i32 %bit.1229, %last_startbit.4
  %sh_prom52 = zext i32 %sub51 to i64
  %shl53 = shl nuw i64 1, %sh_prom52
  %or = or i64 %shl53, %map.2
  br label %for.inc54

for.inc54:                                        ; preds = %if.end50, %cleanup
  %last_startbit.5 = phi i32 [ %last_startbit.3, %cleanup ], [ %last_startbit.4, %if.end50 ]
  %map.3 = phi i64 [ %shl, %cleanup ], [ %or, %if.end50 ]
  %maps.i168 = getelementptr inbounds %struct.ebitmap_node, ptr %n.9227, i32 0, i32 1
  %startbit.i169 = getelementptr inbounds %struct.ebitmap_node, ptr %n.9227, i32 0, i32 2
  %50 = ptrtoint ptr %startbit.i169 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %startbit.i169, align 4
  %sub.i170 = add nuw i32 %bit.1229, 1
  %add.i171 = sub i32 %sub.i170, %51
  %call.i172 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i168, i32 noundef 192, i32 noundef %add.i171) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i172)
  %cmp.i173 = icmp ult i32 %call.i172, 192
  br i1 %cmp.i173, label %if.then.i176, label %for.inc54.for.cond.i180_crit_edge

for.inc54.for.cond.i180_crit_edge:                ; preds = %for.inc54
  br label %for.cond.i180

if.then.i176:                                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %startbit.i169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %startbit.i169, align 4
  %add2.i175 = add i32 %53, %call.i172
  br label %ebitmap_next_positive.exit191

for.cond.i180:                                    ; preds = %for.body.i184.for.cond.i180_crit_edge, %for.inc54.for.cond.i180_crit_edge
  %n.10 = phi ptr [ %storemerge.i178, %for.body.i184.for.cond.i180_crit_edge ], [ %n.9227, %for.inc54.for.cond.i180_crit_edge ]
  %54 = ptrtoint ptr %n.10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %storemerge.i178 = load ptr, ptr %n.10, align 4
  %tobool.not.i179 = icmp eq ptr %storemerge.i178, null
  br i1 %tobool.not.i179, label %for.end.i189, label %for.body.i184

for.body.i184:                                    ; preds = %for.cond.i180
  %maps3.i181 = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i178, i32 0, i32 1
  %call5.i182 = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i181, i32 noundef 192) #9
  %cmp6.i183 = icmp ult i32 %call5.i182, 192
  br i1 %cmp6.i183, label %if.then7.i187, label %for.body.i184.for.cond.i180_crit_edge

for.body.i184.for.cond.i180_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i180

if.then7.i187:                                    ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #11
  %startbit8.i185 = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i178, i32 0, i32 2
  %55 = ptrtoint ptr %startbit8.i185 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %startbit8.i185, align 4
  %add9.i186 = add i32 %56, %call5.i182
  br label %ebitmap_next_positive.exit191

for.end.i189:                                     ; preds = %for.cond.i180
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit191

ebitmap_next_positive.exit191:                    ; preds = %for.end.i189, %if.then7.i187, %if.then.i176
  %n.11 = phi ptr [ %n.9227, %if.then.i176 ], [ null, %for.end.i189 ], [ %storemerge.i178, %if.then7.i187 ]
  %retval.0.i190 = phi i32 [ %add2.i175, %if.then.i176 ], [ %58, %for.end.i189 ], [ %add9.i186, %if.then7.i187 ]
  %59 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %highbit, align 4
  %cmp18 = icmp ult i32 %retval.0.i190, %60
  br i1 %cmp18, label %ebitmap_next_positive.exit191.for.body19_crit_edge, label %if.then58

ebitmap_next_positive.exit191.for.body19_crit_edge: ; preds = %ebitmap_next_positive.exit191
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

if.then58:                                        ; preds = %ebitmap_next_positive.exit191
  call void @__sanitizer_cov_trace_pc() #11
  %61 = tail call i32 @llvm.bswap.i32(i32 %last_startbit.5)
  %62 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fp, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %61, ptr %63, align 1
  %65 = load ptr, ptr %fp, align 4
  %add.ptr.i192 = getelementptr i8, ptr %65, i32 4
  store ptr %add.ptr.i192, ptr %fp, align 4
  %66 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len2.i, align 4
  %sub.i194 = add i32 %67, -4
  store i32 %sub.i194, ptr %len2.i, align 4
  %68 = tail call i64 @llvm.bswap.i64(i64 %map.3)
  %69 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %add.ptr.i192, align 1
  %70 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fp, align 4
  %add.ptr.i195 = getelementptr i8, ptr %71, i32 8
  store ptr %add.ptr.i195, ptr %fp, align 4
  %72 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len2.i, align 4
  %sub.i197 = add i32 %73, -8
  store i32 %sub.i197, ptr %len2.i, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %if.then58, %ebitmap_start_positive.exit161.cleanup76_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebitmap_hash(ptr nocapture noundef readonly %e, i32 noundef %hash) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %highbit, align 4
  %add1.i = add i32 %hash, -559038733
  %add.i.i = add i32 %1, %add1.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #9
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #9
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #9
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #9
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #9
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #9
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #9
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.034 = load ptr, ptr %e, align 4
  %tobool.not35 = icmp eq ptr %node.034, null
  br i1 %tobool.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %node.037 = phi ptr [ %node.0, %for.body.for.body_crit_edge ], [ %node.034, %entry.for.body_crit_edge ]
  %hash.addr.036 = phi i32 [ %sub105.i, %for.body.for.body_crit_edge ], [ %sub20.i.i, %entry.for.body_crit_edge ]
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %node.037, i32 0, i32 2
  %3 = ptrtoint ptr %startbit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %startbit, align 4
  %add1.i11 = add i32 %hash.addr.036, -559038733
  %add.i.i12 = add i32 %4, %add1.i11
  %or.i.i.i13 = tail call i32 @llvm.fshl.i32(i32 %add1.i11, i32 %add1.i11, i32 14) #9
  %sub.i.i14 = sub i32 0, %or.i.i.i13
  %xor3.i.i15 = xor i32 %add.i.i12, %sub.i.i14
  %or.i1.i.i16 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i14, i32 %sub.i.i14, i32 11) #9
  %sub5.i.i17 = sub i32 %xor3.i.i15, %or.i1.i.i16
  %xor6.i.i18 = xor i32 %sub5.i.i17, %add1.i11
  %or.i2.i.i19 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i17, i32 %sub5.i.i17, i32 25) #9
  %sub8.i.i20 = sub i32 %xor6.i.i18, %or.i2.i.i19
  %xor9.i.i21 = xor i32 %sub8.i.i20, %sub.i.i14
  %or.i3.i.i22 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i20, i32 %sub8.i.i20, i32 16) #9
  %sub11.i.i23 = sub i32 %xor9.i.i21, %or.i3.i.i22
  %xor12.i.i24 = xor i32 %sub11.i.i23, %sub5.i.i17
  %or.i4.i.i25 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i23, i32 %sub11.i.i23, i32 4) #9
  %sub14.i.i26 = sub i32 %xor12.i.i24, %or.i4.i.i25
  %xor15.i.i27 = xor i32 %sub14.i.i26, %sub8.i.i20
  %or.i5.i.i28 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i26, i32 %sub14.i.i26, i32 14) #9
  %sub17.i.i29 = sub i32 %xor15.i.i27, %or.i5.i.i28
  %xor18.i.i30 = xor i32 %sub17.i.i29, %sub11.i.i23
  %or.i6.i.i31 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i29, i32 %sub17.i.i29, i32 24) #9
  %sub20.i.i32 = sub i32 %xor18.i.i30, %or.i6.i.i31
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %node.037, i32 0, i32 1
  %add1.i33 = add i32 %sub20.i.i32, -559038713
  %5 = ptrtoint ptr %maps to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %maps, align 1
  %add2.i = add i32 %add1.i33, %6
  %add.ptr.i = getelementptr %struct.ebitmap_node, ptr %node.037, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %add1.i33, %8
  %add.ptr5.i = getelementptr %struct.ebitmap_node, ptr %node.037, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %add1.i33, %10
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #9
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #9
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #9
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #9
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #9
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #9
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add.ptr31.i = getelementptr %struct.ebitmap_node, ptr %node.037, i32 0, i32 1, i32 3
  %arrayidx.i = getelementptr i8, ptr %maps, i32 23
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx34.i = getelementptr i8, ptr %maps, i32 22
  %13 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %14 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %arrayidx39.i = getelementptr i8, ptr %maps, i32 21
  %15 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %16 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %arrayidx44.i = getelementptr %struct.ebitmap_node, ptr %node.037, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %18 to i32
  %add32.i = or i32 %shl36.i, %shl.i
  %add37.i = or i32 %add32.i, %shl41.i
  %add42.i = or i32 %add37.i, %conv45.i
  %add46.i = add i32 %add42.i, %xor28.i
  %arrayidx48.i = getelementptr i8, ptr %maps, i32 19
  %19 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %20 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %arrayidx53.i = getelementptr i8, ptr %maps, i32 18
  %21 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %22 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %arrayidx58.i = getelementptr i8, ptr %maps, i32 17
  %23 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %24 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %arrayidx63.i = getelementptr %struct.ebitmap_node, ptr %node.037, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %26 to i32
  %add29.i = or i32 %shl55.i, %shl50.i
  %add51.i = or i32 %add29.i, %shl60.i
  %add56.i = or i32 %add51.i, %conv64.i
  %add61.i = add i32 %add56.i, %add25.i
  %add65.i = add i32 %add61.i, %xor24.i
  %arrayidx67.i = getelementptr i8, ptr %maps, i32 15
  %27 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %28 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %arrayidx72.i = getelementptr i8, ptr %maps, i32 14
  %29 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %30 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %arrayidx77.i = getelementptr i8, ptr %maps, i32 13
  %31 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %32 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %33 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr31.i, align 1
  %conv83.i = zext i8 %34 to i32
  %add70.i = or i32 %shl74.i, %shl69.i
  %add75.i = or i32 %add70.i, %shl79.i
  %add80.i = or i32 %add75.i, %conv83.i
  %add84.i = add i32 %add80.i, %add25.i
  %xor85.i = xor i32 %add46.i, %add65.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add65.i, i32 %add65.i, i32 14) #9
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %sub87.i, %add84.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #9
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %add65.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #9
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #9
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #9
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #9
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #9
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  %35 = ptrtoint ptr %node.037 to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.0 = load ptr, ptr %node.037, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.addr.0.lcssa = phi i32 [ %sub20.i.i, %entry.for.end_crit_edge ], [ %sub105.i, %for.body.for.end_crit_edge ]
  ret i32 %hash.addr.0.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ebitmap_cache_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.20, i32 noundef 32, i32 noundef 0, i32 noundef 262144, ptr noundef null) #9
  store ptr %call, ptr @ebitmap_node_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/ebitmap.c", i32 386, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ebitmap_read._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ebitmap_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/selinux/ss/ebitmap.c", i32 407, i32 4}
!8 = !{ptr @ebitmap_read._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ebitmap_read._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/selinux/ss/ebitmap.c", i32 413, i32 4}
!12 = !{ptr @ebitmap_read._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ebitmap_read._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/selinux/ss/ebitmap.c", i32 419, i32 4}
!16 = !{ptr @ebitmap_read._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ebitmap_read._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/selinux/ss/ebitmap.c", i32 429, i32 5}
!20 = !{ptr @ebitmap_read._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ebitmap_read._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/selinux/ss/ebitmap.c", i32 441, i32 4}
!24 = !{ptr @ebitmap_read._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ebitmap_read._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ebitmap_read._entry.18, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../security/selinux/ss/ebitmap.c", i32 449, i32 4}
!28 = !{ptr @ebitmap_read._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/selinux/ss/ebitmap.c", i32 561, i32 42}
!31 = !{ptr @ebitmap_node_cachep, !32, !"ebitmap_node_cachep", i1 false, i1 false}
!32 = !{!"../security/selinux/ss/ebitmap.c", i32 29, i32 27}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2156870605, i64 2156871098, i64 2156870642, i64 2156870698, i64 2156870732, i64 2156870756, i64 2156870797, i64 2156870818, i64 2156870846, i64 2156870880}
!44 = !{i64 2156872738, i64 2156873232, i64 2156872775, i64 2156872831, i64 2156872865, i64 2156872889, i64 2156872930, i64 2156872951, i64 2156872979, i64 2156873013}
!45 = !{i64 2156874872, i64 2156875366, i64 2156874909, i64 2156874965, i64 2156874999, i64 2156875023, i64 2156875064, i64 2156875085, i64 2156875113, i64 2156875147}
!46 = !{!"auto-init"}
!47 = !{i32 0, i32 33}
