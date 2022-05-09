; ModuleID = '/llk/IR_all_yes/fs/ceph/mdsmap.c_pt.bc'
source_filename = "../fs/ceph/mdsmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_mdsmap = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, ptr, i64, i8, i8, i32 }
%struct.ceph_mds_info = type { i64, %struct.ceph_entity_addr, i32, i32, i8, ptr }
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }

@ceph_mdsmap_decode.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_mdsmap_decode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ceph/mdsmap.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : mdsmap_decode %d/%d %lld mds%d.%d %s %s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : mdsmap_decode %d/%d %lld mds%d.%d %s %s%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(laggy)\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ceph_mdsmap_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014ceph: mdsmap_decode got incorrect mds(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_mdsmap_decode._entry_ptr = internal global ptr @ceph_mdsmap_decode._entry, section ".printk_index", align 4
@ceph_mdsmap_decode.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : mdsmap_decode got incorrect state(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : mdsmap_decode got incorrect state(%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_mdsmap_decode.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%.*s %12.12s:%-4d : mdsmap_decode m_enabled: %d, m_damaged: %d, m_num_laggy: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ceph: %.*s %12.12s:%-4d : mdsmap_decode m_enabled: %d, m_damaged: %d, m_num_laggy: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_mdsmap_decode.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : mdsmap_decode success epoch %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : mdsmap_decode success epoch %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_mdsmap_decode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ceph: corrupt mdsmap\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_mdsmap_decode._entry_ptr.17 = internal global ptr @ceph_mdsmap_decode._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdsmap: \00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 14]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 236, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 243, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 248, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 374, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 377, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 383, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 384, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [20 x i8] c"../fs/ceph/mdsmap.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 384, i32 29 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @ceph_mdsmap_decode._entry, ptr @ceph_mdsmap_decode._entry.15, ptr @ceph_mdsmap_decode._entry_ptr, ptr @ceph_mdsmap_decode._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_mdsmap_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_mdsmap_decode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_mdsmap_get_random_mds(ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %possible_max_rank.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 9
  %0 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp56.not.i = icmp eq i32 %1, 0
  br i1 %cmp56.not.i, label %entry.__mdsmap_get_random_mds.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.__mdsmap_get_random_mds.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mdsmap_get_random_mds.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %m_info.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %m_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_info.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc5.i, %for.body.i.for.body.i_crit_edge ]
  %n.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select57, %for.body.i.for.body.i_crit_edge ]
  %laggy.i = getelementptr %struct.ceph_mds_info, ptr %3, i32 %i.059.i, i32 4
  %4 = ptrtoint ptr %laggy.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laggy.i, align 8, !range !43
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %spec.select57 = add i32 %n.057.i, %7
  %inc5.i = add nuw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, %1
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select57)
  %cmp6.i = icmp eq i32 %spec.select57, 0
  br i1 %cmp6.i, label %for.end.i.__mdsmap_get_random_mds.exit.thread_crit_edge, label %if.end8.i

for.end.i.__mdsmap_get_random_mds.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mdsmap_get_random_mds.exit.thread

if.end8.i:                                        ; preds = %for.end.i
  %call.i = tail call i32 @prandom_u32() #9
  %rem.i = urem i32 %call.i, %spec.select57
  %8 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1162.not.i = icmp eq i32 %9, 0
  br i1 %cmp1162.not.i, label %if.end8.i.__mdsmap_get_random_mds.exit_crit_edge, label %for.body12.lr.ph.i

if.end8.i.__mdsmap_get_random_mds.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mdsmap_get_random_mds.exit

for.body12.lr.ph.i:                               ; preds = %if.end8.i
  %10 = ptrtoint ptr %m_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_info.i, align 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc31.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %j.064.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %spec.select58, %for.inc31.i.for.body12.i_crit_edge ]
  %i.163.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc32.i, %for.inc31.i.for.body12.i_crit_edge ]
  %laggy23.i = getelementptr %struct.ceph_mds_info, ptr %11, i32 %i.163.i, i32 4
  %12 = ptrtoint ptr %laggy23.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %laggy23.i, align 8, !range !43
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  %spec.select58 = add i32 %j.064.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select58, i32 %rem.i)
  %cmp28.i = icmp sgt i32 %spec.select58, %rem.i
  br i1 %cmp28.i, label %for.body12.i.__mdsmap_get_random_mds.exit_crit_edge, label %for.inc31.i

for.body12.i.__mdsmap_get_random_mds.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mdsmap_get_random_mds.exit

for.inc31.i:                                      ; preds = %for.body12.i
  %inc32.i = add nuw i32 %i.163.i, 1
  %exitcond68.not.i = icmp eq i32 %inc32.i, %9
  br i1 %exitcond68.not.i, label %for.inc31.i.__mdsmap_get_random_mds.exit_crit_edge, label %for.inc31.i.for.body12.i_crit_edge

for.inc31.i.for.body12.i_crit_edge:               ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.inc31.i.__mdsmap_get_random_mds.exit_crit_edge: ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mdsmap_get_random_mds.exit

__mdsmap_get_random_mds.exit.thread:              ; preds = %for.end.i.__mdsmap_get_random_mds.exit.thread_crit_edge, %entry.__mdsmap_get_random_mds.exit.thread_crit_edge
  %16 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %possible_max_rank.i, align 8
  br label %if.then

__mdsmap_get_random_mds.exit:                     ; preds = %for.inc31.i.__mdsmap_get_random_mds.exit_crit_edge, %for.body12.i.__mdsmap_get_random_mds.exit_crit_edge, %if.end8.i.__mdsmap_get_random_mds.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end8.i.__mdsmap_get_random_mds.exit_crit_edge ], [ %9, %for.inc31.i.__mdsmap_get_random_mds.exit_crit_edge ], [ %i.163.i, %for.body12.i.__mdsmap_get_random_mds.exit_crit_edge ]
  %18 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %19)
  %cmp = icmp eq i32 %retval.0.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp1 = icmp eq i32 %retval.0.i, -1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %__mdsmap_get_random_mds.exit.if.then_crit_edge, label %__mdsmap_get_random_mds.exit.if.end_crit_edge

__mdsmap_get_random_mds.exit.if.end_crit_edge:    ; preds = %__mdsmap_get_random_mds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__mdsmap_get_random_mds.exit.if.then_crit_edge:   ; preds = %__mdsmap_get_random_mds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %__mdsmap_get_random_mds.exit.if.then_crit_edge, %__mdsmap_get_random_mds.exit.thread
  %20 = phi i32 [ %17, %__mdsmap_get_random_mds.exit.thread ], [ %19, %__mdsmap_get_random_mds.exit.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp56.not.i12 = icmp eq i32 %20, 0
  br i1 %cmp56.not.i12, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i14:                               ; preds = %if.then
  %m_info.i13 = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 10
  %21 = ptrtoint ptr %m_info.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_info.i13, align 4
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i27.for.body.i19_crit_edge, %for.body.lr.ph.i14
  %i.059.i15 = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %inc5.i25, %for.inc.i27.for.body.i19_crit_edge ]
  %n.057.i16 = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %n.1.i24, %for.inc.i27.for.body.i19_crit_edge ]
  %state.i17 = getelementptr %struct.ceph_mds_info, ptr %22, i32 %i.059.i15, i32 2
  %23 = ptrtoint ptr %state.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.i18 = icmp sgt i32 %24, 0
  br i1 %cmp1.i18, label %for.body.i19.if.then.i23_crit_edge, label %cond.false.i

for.body.i19.if.then.i23_crit_edge:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23

cond.false.i:                                     ; preds = %for.body.i19
  %laggy.i20 = getelementptr %struct.ceph_mds_info, ptr %22, i32 %i.059.i15, i32 4
  %25 = ptrtoint ptr %laggy.i20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %laggy.i20, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not.i21 = icmp eq i8 %26, 0
  br i1 %tobool4.not.i21, label %cond.false.i.if.then.i23_crit_edge, label %cond.false.i.for.inc.i27_crit_edge

cond.false.i.for.inc.i27_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i27

cond.false.i.if.then.i23_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23

if.then.i23:                                      ; preds = %cond.false.i.if.then.i23_crit_edge, %for.body.i19.if.then.i23_crit_edge
  %inc.i22 = add i32 %n.057.i16, 1
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.then.i23, %cond.false.i.for.inc.i27_crit_edge
  %n.1.i24 = phi i32 [ %inc.i22, %if.then.i23 ], [ %n.057.i16, %cond.false.i.for.inc.i27_crit_edge ]
  %inc5.i25 = add nuw i32 %i.059.i15, 1
  %exitcond.not.i26 = icmp eq i32 %inc5.i25, %20
  br i1 %exitcond.not.i26, label %for.end.i29, label %for.inc.i27.for.body.i19_crit_edge

for.inc.i27.for.body.i19_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i19

for.end.i29:                                      ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.i24)
  %cmp6.i28 = icmp eq i32 %n.1.i24, 0
  br i1 %cmp6.i28, label %for.end.i29.if.end_crit_edge, label %if.end8.i33

for.end.i29.if.end_crit_edge:                     ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end8.i33:                                      ; preds = %for.end.i29
  %call.i30 = tail call i32 @prandom_u32() #9
  %rem.i31 = urem i32 %call.i30, %n.1.i24
  %27 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1162.not.i32 = icmp eq i32 %28, 0
  br i1 %cmp1162.not.i32, label %if.end8.i33.if.end_crit_edge, label %for.body12.lr.ph.i35

if.end8.i33.if.end_crit_edge:                     ; preds = %if.end8.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body12.lr.ph.i35:                             ; preds = %if.end8.i33
  %29 = ptrtoint ptr %m_info.i13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_info.i13, align 4
  br label %for.body12.i40

for.body12.i40:                                   ; preds = %for.inc31.i50.for.body12.i40_crit_edge, %for.body12.lr.ph.i35
  %j.064.i36 = phi i32 [ 0, %for.body12.lr.ph.i35 ], [ %j.1.i45, %for.inc31.i50.for.body12.i40_crit_edge ]
  %i.163.i37 = phi i32 [ 0, %for.body12.lr.ph.i35 ], [ %inc32.i48, %for.inc31.i50.for.body12.i40_crit_edge ]
  %state15.i38 = getelementptr %struct.ceph_mds_info, ptr %30, i32 %i.163.i37, i32 2
  %31 = ptrtoint ptr %state15.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state15.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16.i39 = icmp sgt i32 %32, 0
  br i1 %cmp16.i39, label %for.body12.i40.if.then25.i44_crit_edge, label %cond.false20.i

for.body12.i40.if.then25.i44_crit_edge:           ; preds = %for.body12.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i44

cond.false20.i:                                   ; preds = %for.body12.i40
  %laggy23.i41 = getelementptr %struct.ceph_mds_info, ptr %30, i32 %i.163.i37, i32 4
  %33 = ptrtoint ptr %laggy23.i41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %laggy23.i41, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool24.not.i42 = icmp eq i8 %34, 0
  br i1 %tobool24.not.i42, label %cond.false20.i.if.then25.i44_crit_edge, label %cond.false20.i.if.end27.i47_crit_edge

cond.false20.i.if.end27.i47_crit_edge:            ; preds = %cond.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i47

cond.false20.i.if.then25.i44_crit_edge:           ; preds = %cond.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i44

if.then25.i44:                                    ; preds = %cond.false20.i.if.then25.i44_crit_edge, %for.body12.i40.if.then25.i44_crit_edge
  %inc26.i43 = add i32 %j.064.i36, 1
  br label %if.end27.i47

if.end27.i47:                                     ; preds = %if.then25.i44, %cond.false20.i.if.end27.i47_crit_edge
  %j.1.i45 = phi i32 [ %inc26.i43, %if.then25.i44 ], [ %j.064.i36, %cond.false20.i.if.end27.i47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i45, i32 %rem.i31)
  %cmp28.i46 = icmp sgt i32 %j.1.i45, %rem.i31
  br i1 %cmp28.i46, label %if.end27.i47.if.end_crit_edge, label %for.inc31.i50

if.end27.i47.if.end_crit_edge:                    ; preds = %if.end27.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc31.i50:                                    ; preds = %if.end27.i47
  %inc32.i48 = add nuw i32 %i.163.i37, 1
  %exitcond68.not.i49 = icmp eq i32 %inc32.i48, %28
  br i1 %exitcond68.not.i49, label %for.inc31.i50.if.end_crit_edge, label %for.inc31.i50.for.body12.i40_crit_edge

for.inc31.i50.for.body12.i40_crit_edge:           ; preds = %for.inc31.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i40

for.inc31.i50.if.end_crit_edge:                   ; preds = %for.inc31.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc31.i50.if.end_crit_edge, %if.end27.i47.if.end_crit_edge, %if.end8.i33.if.end_crit_edge, %for.end.i29.if.end_crit_edge, %if.then.if.end_crit_edge, %__mdsmap_get_random_mds.exit.if.end_crit_edge
  %mds.0 = phi i32 [ %retval.0.i, %__mdsmap_get_random_mds.exit.if.end_crit_edge ], [ -1, %for.end.i29.if.end_crit_edge ], [ 0, %if.end8.i33.if.end_crit_edge ], [ -1, %if.then.if.end_crit_edge ], [ %28, %for.inc31.i50.if.end_crit_edge ], [ %i.163.i37, %if.end27.i47.if.end_crit_edge ]
  %35 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mds.0, i32 %36)
  %cmp4 = icmp eq i32 %mds.0, %36
  %spec.select = select i1 %cmp4, i32 -1, i32 %mds.0
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_mdsmap_decode(ptr noundef %p, ptr noundef %end, i1 noundef zeroext %msgr2) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.ceph_entity_addr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup915_crit_edge, label %do.body

entry.cleanup915_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup915

do.body:                                          ; preds = %entry
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %cmp.not.i = icmp ule ptr %4, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 1
  %5 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %5, label %do.end, label %do.body.do.end911_crit_edge, !prof !44

do.body.do.end911_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

do.end:                                           ; preds = %do.body
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %4, align 1
  %add.ptr = getelementptr i8, ptr %4, i32 2
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ugt i8 %7, 3
  br i1 %cmp, label %if.then9, label %do.end.do.body33_crit_edge

do.end.do.body33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then9:                                         ; preds = %do.end
  %cmp.not.i1212 = icmp ule ptr %add.ptr, %end
  %sub.ptr.rhs.cast.i1214 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i1215 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i1214
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1215)
  %cmp1.i1216 = icmp ugt i32 %sub.ptr.sub.i1215, 3
  %9 = select i1 %cmp.not.i1212, i1 %cmp1.i1216, i1 false
  br i1 %9, label %do.end22, label %if.then9.do.end911_crit_edge, !prof !44

if.then9.do.end911_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

do.end22:                                         ; preds = %if.then9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %add.ptr.i = getelementptr i8, ptr %4, i32 6
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %p, align 4
  %add.ptr26 = getelementptr i8, ptr %add.ptr.i, i32 %12
  %cmp27 = icmp ugt ptr %add.ptr26, %end
  br i1 %cmp27, label %do.end22.do.end911_crit_edge, label %do.end22.do.body33_crit_edge

do.end22.do.end911_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

do.end22.do.body33_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = ptrtoint ptr %add.ptr26 to i32
  br label %do.body33

do.body33:                                        ; preds = %do.end22.do.body33_crit_edge, %do.end.do.body33_crit_edge
  %sub.ptr.lhs.cast.i1218.pre-phi = phi i32 [ %.pre, %do.end22.do.body33_crit_edge ], [ %sub.ptr.lhs.cast.i, %do.end.do.body33_crit_edge ]
  %end.addr.1 = phi ptr [ %add.ptr26, %do.end22.do.body33_crit_edge ], [ %end, %do.end.do.body33_crit_edge ]
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 4
  %cmp.not.i1217 = icmp ule ptr %15, %end.addr.1
  %sub.ptr.rhs.cast.i1219 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i1220 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1219
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.ptr.sub.i1220)
  %cmp1.i1221 = icmp ugt i32 %sub.ptr.sub.i1220, 39
  %16 = select i1 %cmp.not.i1217, i1 %cmp1.i1221, i1 false
  br i1 %16, label %do.end44, label %do.body33.do.end911_crit_edge, !prof !44

do.body33.do.end911_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

do.end44:                                         ; preds = %do.body33
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %15, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %add.ptr.i1222 = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i1222, ptr %p, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %add.ptr.i1222 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr.i1222, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %add.ptr.i1223 = getelementptr i8, ptr %15, i32 8
  %25 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i1223, ptr %p, align 4
  %m_client_epoch = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %m_client_epoch to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %m_client_epoch, align 4
  %27 = ptrtoint ptr %add.ptr.i1223 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr.i1223, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %add.ptr.i1224 = getelementptr i8, ptr %15, i32 12
  %30 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i1224, ptr %p, align 4
  %m_last_failure = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %m_last_failure to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %m_last_failure, align 8
  %32 = ptrtoint ptr %add.ptr.i1224 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr.i1224, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %add.ptr.i1225 = getelementptr i8, ptr %15, i32 16
  %35 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i1225, ptr %p, align 4
  %m_root = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %m_root to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %m_root, align 4
  %37 = ptrtoint ptr %add.ptr.i1225 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr.i1225, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %add.ptr.i1226 = getelementptr i8, ptr %15, i32 20
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i1226, ptr %p, align 4
  %m_session_timeout = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %m_session_timeout to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %m_session_timeout, align 8
  %42 = ptrtoint ptr %add.ptr.i1226 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr.i1226, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %add.ptr.i1227 = getelementptr i8, ptr %15, i32 24
  %45 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i1227, ptr %p, align 4
  %m_session_autoclose = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %m_session_autoclose to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %m_session_autoclose, align 4
  %47 = ptrtoint ptr %add.ptr.i1227 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %add.ptr.i1227, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #9
  %add.ptr.i1228 = getelementptr i8, ptr %15, i32 32
  %50 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i1228, ptr %p, align 4
  %m_max_file_size = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %m_max_file_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %49, ptr %m_max_file_size, align 8
  %52 = ptrtoint ptr %add.ptr.i1228 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr.i1228, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %add.ptr.i1229 = getelementptr i8, ptr %15, i32 36
  %55 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i1229, ptr %p, align 4
  %m_max_mds = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %m_max_mds to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %m_max_mds, align 8
  %57 = ptrtoint ptr %add.ptr.i1229 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr.i1229, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  %add.ptr.i1230 = getelementptr i8, ptr %15, i32 40
  %60 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i1230, ptr %p, align 4
  %m_num_active_mds = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %m_num_active_mds to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %m_num_active_mds, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %59, i32 %54)
  %possible_max_rank = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %possible_max_rank, align 8
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 160) #9
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !45

kcalloc.exit.thread:                              ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %m_info1462 = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 10
  %66 = ptrtoint ptr %m_info1462 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %m_info1462, align 4
  br label %out_err

if.end7.i.i:                                      ; preds = %do.end44
  %67 = extractvalue { i32, i1 } %64, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3392) #13
  %m_info = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 10
  %68 = ptrtoint ptr %m_info to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i.i, ptr %m_info, align 4
  %tobool61.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool61.not, label %if.end7.i.i.out_err_crit_edge, label %for.cond.preheader

if.end7.i.i.out_err_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp641529 = icmp sgt i32 %59, 0
  br i1 %cmp641529, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body352_crit_edge

for.cond.preheader.do.body352_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body352

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc348.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.01531 = phi i32 [ %inc349, %for.inc348.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %addr) #9
  %69 = call ptr @memset(ptr %addr, i32 255, i32 136)
  %70 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p, align 4
  %cmp.not.i1231 = icmp ule ptr %71, %end.addr.1
  %sub.ptr.rhs.cast.i1233 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i1234 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1233
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i1234)
  %cmp1.i1235 = icmp ugt i32 %sub.ptr.sub.i1234, 8
  %72 = select i1 %cmp.not.i1231, i1 %cmp1.i1235, i1 false
  br i1 %72, label %do.end77, label %for.body.cleanup333.thread_crit_edge, !prof !44

for.body.cleanup333.thread_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end77:                                         ; preds = %for.body
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %71, align 1
  %75 = call i64 @llvm.bswap.i64(i64 %74) #9
  %add.ptr.i1236 = getelementptr i8, ptr %71, i32 8
  %76 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i1236, ptr %p, align 4
  %77 = ptrtoint ptr %add.ptr.i1236 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr.i1236, align 1
  %incdec.ptr.i1237 = getelementptr i8, ptr %71, i32 9
  store ptr %incdec.ptr.i1237, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp81 = icmp ugt i8 %78, 3
  br i1 %cmp81, label %if.then83, label %do.end77.do.body107_crit_edge

do.end77.do.body107_crit_edge:                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body107

if.then83:                                        ; preds = %do.end77
  %cmp.not.i1238 = icmp ule ptr %incdec.ptr.i1237, %end.addr.1
  %sub.ptr.rhs.cast.i1240 = ptrtoint ptr %incdec.ptr.i1237 to i32
  %sub.ptr.sub.i1241 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1240
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i1241)
  %cmp1.i1242 = icmp ugt i32 %sub.ptr.sub.i1241, 4
  %79 = select i1 %cmp.not.i1238, i1 %cmp1.i1242, i1 false
  br i1 %79, label %cleanup103, label %if.then83.cleanup333.thread_crit_edge, !prof !44

if.then83.cleanup333.thread_crit_edge:            ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

cleanup103:                                       ; preds = %if.then83
  %add.ptr96 = getelementptr i8, ptr %71, i32 10
  %80 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr96, ptr %p, align 4
  %81 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %add.ptr96, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #9
  %add.ptr.i1243 = getelementptr i8, ptr %71, i32 14
  %84 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i1243, ptr %p, align 4
  %add.ptr98 = getelementptr i8, ptr %add.ptr.i1243, i32 %83
  %cmp99 = icmp ugt ptr %add.ptr98, %end.addr.1
  br i1 %cmp99, label %cleanup103.cleanup333_crit_edge, label %cleanup103.do.body107_crit_edge

cleanup103.do.body107_crit_edge:                  ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body107

cleanup103.cleanup333_crit_edge:                  ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333

do.body107:                                       ; preds = %cleanup103.do.body107_crit_edge, %do.end77.do.body107_crit_edge
  %info_end.1 = phi ptr [ %add.ptr98, %cleanup103.do.body107_crit_edge ], [ null, %do.end77.do.body107_crit_edge ]
  %85 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %p, align 4
  %cmp.not.i1244 = icmp ule ptr %86, %end.addr.1
  %sub.ptr.rhs.cast.i1246 = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i1247 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1246
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i1247)
  %cmp1.i1248 = icmp ugt i32 %sub.ptr.sub.i1247, 11
  %87 = select i1 %cmp.not.i1244, i1 %cmp1.i1248, i1 false
  br i1 %87, label %do.end118, label %do.body107.cleanup333.thread_crit_edge, !prof !44

do.body107.cleanup333.thread_crit_edge:           ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end118:                                        ; preds = %do.body107
  %add.ptr119 = getelementptr i8, ptr %86, i32 8
  %88 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr119, ptr %p, align 4
  %89 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %add.ptr119, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #9
  %add.ptr.i1249 = getelementptr i8, ptr %86, i32 12
  %add.ptr121 = getelementptr i8, ptr %add.ptr.i1249, i32 %91
  %92 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr121, ptr %p, align 4
  %cmp.not.i1250 = icmp ule ptr %add.ptr121, %end.addr.1
  %sub.ptr.rhs.cast.i1252 = ptrtoint ptr %add.ptr121 to i32
  %sub.ptr.sub.i1253 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1252
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1253)
  %cmp1.i1254 = icmp ugt i32 %sub.ptr.sub.i1253, 3
  %93 = select i1 %cmp.not.i1250, i1 %cmp1.i1254, i1 false
  br i1 %93, label %do.end134, label %do.end118.cleanup333.thread_crit_edge, !prof !44

do.end118.cleanup333.thread_crit_edge:            ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end134:                                        ; preds = %do.end118
  %94 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %add.ptr121, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  %add.ptr.i1255 = getelementptr i8, ptr %add.ptr121, i32 4
  %97 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i1255, ptr %p, align 4
  %cmp.not.i1256 = icmp ule ptr %add.ptr.i1255, %end.addr.1
  %sub.ptr.rhs.cast.i1258 = ptrtoint ptr %add.ptr.i1255 to i32
  %sub.ptr.sub.i1259 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1258
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1259)
  %cmp1.i1260 = icmp ugt i32 %sub.ptr.sub.i1259, 3
  %98 = select i1 %cmp.not.i1256, i1 %cmp1.i1260, i1 false
  br i1 %98, label %do.end150, label %do.end134.cleanup333.thread_crit_edge, !prof !44

do.end134.cleanup333.thread_crit_edge:            ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end150:                                        ; preds = %do.end134
  %99 = ptrtoint ptr %add.ptr.i1255 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %add.ptr.i1255, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100) #9
  %add.ptr.i1261 = getelementptr i8, ptr %add.ptr.i1255, i32 4
  %102 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i1261, ptr %p, align 4
  %cmp.not.i1262 = icmp ule ptr %add.ptr.i1261, %end.addr.1
  %sub.ptr.rhs.cast.i1264 = ptrtoint ptr %add.ptr.i1261 to i32
  %sub.ptr.sub.i1265 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1264
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1265)
  %cmp1.i1266 = icmp ugt i32 %sub.ptr.sub.i1265, 3
  %103 = select i1 %cmp.not.i1262, i1 %cmp1.i1266, i1 false
  br i1 %103, label %do.end166, label %do.end150.cleanup333.thread_crit_edge, !prof !44

do.end150.cleanup333.thread_crit_edge:            ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end166:                                        ; preds = %do.end150
  %104 = ptrtoint ptr %add.ptr.i1261 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %add.ptr.i1261, align 1
  %106 = call i32 @llvm.bswap.i32(i32 %105) #9
  %add.ptr.i1267 = getelementptr i8, ptr %add.ptr.i1261, i32 4
  %add.ptr170 = getelementptr i8, ptr %add.ptr.i1267, i32 8
  %107 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr170, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %78)
  %cmp172 = icmp ugt i8 %78, 7
  br i1 %cmp172, label %if.then174, label %if.else

if.then174:                                       ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #11
  %call176 = call i32 @ceph_decode_entity_addrvec(ptr noundef %p, ptr noundef %end.addr.1, i1 noundef zeroext %msgr2, ptr noundef nonnull %addr) #9
  br label %if.end178

if.else:                                          ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #11
  %call177 = call i32 @ceph_decode_entity_addr(ptr noundef %p, ptr noundef %end.addr.1, ptr noundef nonnull %addr) #9
  br label %if.end178

if.end178:                                        ; preds = %if.else, %if.then174
  %err.1 = phi i32 [ %call176, %if.then174 ], [ %call177, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool179.not = icmp eq i32 %err.1, 0
  br i1 %tobool179.not, label %do.body183, label %cleanup333.thread1483

cleanup333.thread1483:                            ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %addr) #9
  br label %do.end911

do.body183:                                       ; preds = %if.end178
  %108 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %p, align 4
  %cmp.not.i1268 = icmp ule ptr %109, %end.addr.1
  %sub.ptr.rhs.cast.i1270 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i1271 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1270
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i1271)
  %cmp1.i1272 = icmp ugt i32 %sub.ptr.sub.i1271, 7
  %110 = select i1 %cmp.not.i1268, i1 %cmp1.i1272, i1 false
  br i1 %110, label %do.end194, label %do.body183.cleanup333.thread_crit_edge, !prof !44

do.body183.cleanup333.thread_crit_edge:           ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end194:                                        ; preds = %do.body183
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %109, align 1
  %laggy_since.sroa.5.0.extract.trunc = trunc i64 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %112)
  %cmp197.not = icmp ugt i64 %112, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %laggy_since.sroa.5.0.extract.trunc)
  %cmp199 = icmp ne i32 %laggy_since.sroa.5.0.extract.trunc, 0
  %113 = or i1 %cmp197.not, %cmp199
  %frombool201 = zext i1 %113 to i8
  %add.ptr202 = getelementptr i8, ptr %109, i32 12
  %114 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr202, ptr %p, align 4
  %cmp.not.i1274 = icmp ule ptr %add.ptr202, %end.addr.1
  %sub.ptr.rhs.cast.i1276 = ptrtoint ptr %add.ptr202 to i32
  %sub.ptr.sub.i1277 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1276
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1277)
  %cmp1.i1278 = icmp ugt i32 %sub.ptr.sub.i1277, 3
  %115 = select i1 %cmp.not.i1274, i1 %cmp1.i1278, i1 false
  br i1 %115, label %do.end215, label %do.end194.cleanup333.thread_crit_edge, !prof !44

do.end194.cleanup333.thread_crit_edge:            ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end215:                                        ; preds = %do.end194
  %116 = ptrtoint ptr %add.ptr202 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %add.ptr202, align 1
  %118 = call i32 @llvm.bswap.i32(i32 %117) #9
  %add.ptr.i1279 = getelementptr i8, ptr %109, i32 16
  %add.ptr219 = getelementptr i8, ptr %add.ptr.i1279, i32 %118
  %119 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr219, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp221 = icmp ugt i8 %78, 1
  br i1 %cmp221, label %do.body225, label %do.end215.if.end242_crit_edge

do.end215.if.end242_crit_edge:                    ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

do.body225:                                       ; preds = %do.end215
  %cmp.not.i1280 = icmp ule ptr %add.ptr219, %end.addr.1
  %sub.ptr.rhs.cast.i1282 = ptrtoint ptr %add.ptr219 to i32
  %sub.ptr.sub.i1283 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1282
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1283)
  %cmp1.i1284 = icmp ugt i32 %sub.ptr.sub.i1283, 3
  %120 = select i1 %cmp.not.i1280, i1 %cmp1.i1284, i1 false
  br i1 %120, label %do.end236, label %do.body225.cleanup333.thread_crit_edge, !prof !44

do.body225.cleanup333.thread_crit_edge:           ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

do.end236:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %add.ptr219 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %add.ptr219, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122) #9
  %add.ptr.i1285 = getelementptr i8, ptr %add.ptr219, i32 4
  %mul = shl i32 %123, 2
  %add.ptr240 = getelementptr i8, ptr %add.ptr.i1285, i32 %mul
  %124 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr240, ptr %p, align 4
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %do.end215.if.end242_crit_edge
  %pexport_targets.0 = phi ptr [ %add.ptr.i1285, %do.end236 ], [ null, %do.end215.if.end242_crit_edge ]
  %num_export_targets.0 = phi i32 [ %123, %do.end236 ], [ 0, %do.end215.if.end242_crit_edge ]
  %tobool243.not = icmp eq ptr %info_end.1, null
  br i1 %tobool243.not, label %if.end242.do.body252_crit_edge, label %land.lhs.true

if.end242.do.body252_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

land.lhs.true:                                    ; preds = %if.end242
  %125 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %p, align 4
  %cmp244.not = icmp eq ptr %126, %info_end.1
  br i1 %cmp244.not, label %land.lhs.true.do.body252_crit_edge, label %if.then246

land.lhs.true.do.body252_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

if.then246:                                       ; preds = %land.lhs.true
  %cmp247 = icmp ugt ptr %126, %info_end.1
  br i1 %cmp247, label %if.then246.cleanup333.thread_crit_edge, label %if.end250

if.then246.cleanup333.thread_crit_edge:           ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread

if.end250:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %info_end.1, ptr %p, align 4
  br label %do.body252

do.body252:                                       ; preds = %if.end250, %land.lhs.true.do.body252_crit_edge, %if.end242.do.body252_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mdsmap_decode, %if.then263)) #9
          to label %do.end272 [label %if.then263], !srcloc !46

if.then263:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %i.01531, 1
  %call265 = call ptr @ceph_pr_addr(ptr noundef nonnull %addr) #9
  %call266 = call ptr @ceph_mds_state_name(i32 noundef %106) #9
  %cond269 = select i1 %113, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mdsmap_decode.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 240, i32 noundef %add, i32 noundef %59, i64 noundef %75, i32 noundef %96, i32 noundef %101, ptr noundef %call265, ptr noundef %call266, ptr noundef nonnull %cond269) #9
  br label %do.end272

do.end272:                                        ; preds = %if.then263, %do.body252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp273 = icmp slt i32 %96, 0
  br i1 %cmp273, label %do.end272.do.end281_crit_edge, label %lor.lhs.false

do.end272.do.end281_crit_edge:                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end281

lor.lhs.false:                                    ; preds = %do.end272
  %128 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %129)
  %cmp276.not = icmp ult i32 %96, %129
  br i1 %cmp276.not, label %if.end284, label %lor.lhs.false.do.end281_crit_edge

lor.lhs.false.do.end281_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end281

do.end281:                                        ; preds = %lor.lhs.false.do.end281_crit_edge, %do.end272.do.end281_crit_edge
  %call283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %96) #14
  br label %cleanup333.thread1475

if.end284:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp285 = icmp slt i32 %106, 1
  br i1 %cmp285, label %do.body288, label %if.end306

do.body288:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mdsmap_decode, %if.then300)) #9
          to label %cleanup333 [label %if.then300], !srcloc !46

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #11
  %call302 = call ptr @ceph_mds_state_name(i32 noundef %106) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mdsmap_decode.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.10, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 249, ptr noundef %call302) #9
  br label %cleanup333.thread1475

if.end306:                                        ; preds = %if.end284
  %130 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %m_info, align 4
  %arrayidx = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96
  %132 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %75, ptr %arrayidx, align 8
  %state309 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 2
  %133 = ptrtoint ptr %state309 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %106, ptr %state309, align 8
  %addr310 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 1
  %134 = call ptr @memcpy(ptr %addr310, ptr %addr, i32 136)
  %laggy312 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 4
  %135 = ptrtoint ptr %laggy312 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %frombool201, ptr %laggy312, align 8
  %num_export_targets314 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 3
  %136 = ptrtoint ptr %num_export_targets314 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %num_export_targets.0, ptr %num_export_targets314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_export_targets.0)
  %tobool315.not = icmp eq i32 %num_export_targets.0, 0
  br i1 %tobool315.not, label %if.else330, label %if.then316

if.then316:                                       ; preds = %if.end306
  %137 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_export_targets.0, i32 4) #9
  %138 = extractvalue { i32, i1 } %137, 1
  br i1 %138, label %kcalloc.exit1318.thread, label %if.end7.i.i1316, !prof !45

kcalloc.exit1318.thread:                          ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #11
  %export_targets1470 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 5
  %139 = ptrtoint ptr %export_targets1470 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %export_targets1470, align 4
  br label %cleanup333.thread1480

if.end7.i.i1316:                                  ; preds = %if.then316
  %140 = extractvalue { i32, i1 } %137, 0
  %call8.i.i1315 = call noalias align 128 ptr @__kmalloc(i32 noundef %140, i32 noundef 3392) #13
  %export_targets = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 5
  %141 = ptrtoint ptr %export_targets to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call8.i.i1315, ptr %export_targets, align 4
  %tobool319.not = icmp eq ptr %call8.i.i1315, null
  br i1 %tobool319.not, label %if.end7.i.i1316.cleanup333.thread1480_crit_edge, label %if.end7.i.i1316.for.body325_crit_edge

if.end7.i.i1316.for.body325_crit_edge:            ; preds = %if.end7.i.i1316
  br label %for.body325

if.end7.i.i1316.cleanup333.thread1480_crit_edge:  ; preds = %if.end7.i.i1316
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread1480

for.body325:                                      ; preds = %for.body325.for.body325_crit_edge, %if.end7.i.i1316.for.body325_crit_edge
  %j.01528 = phi i32 [ %inc329, %for.body325.for.body325_crit_edge ], [ 0, %if.end7.i.i1316.for.body325_crit_edge ]
  %pexport_targets.11527 = phi ptr [ %add.ptr.i1319, %for.body325.for.body325_crit_edge ], [ %pexport_targets.0, %if.end7.i.i1316.for.body325_crit_edge ]
  %142 = ptrtoint ptr %pexport_targets.11527 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %pexport_targets.11527, align 1
  %144 = call i32 @llvm.bswap.i32(i32 %143) #9
  %add.ptr.i1319 = getelementptr i8, ptr %pexport_targets.11527, i32 4
  %145 = ptrtoint ptr %export_targets to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %export_targets, align 4
  %arrayidx328 = getelementptr i32, ptr %146, i32 %j.01528
  %147 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %arrayidx328, align 4
  %inc329 = add nuw i32 %j.01528, 1
  %exitcond.not = icmp eq i32 %inc329, %num_export_targets.0
  br i1 %exitcond.not, label %for.body325.cleanup333.thread1475_crit_edge, label %for.body325.for.body325_crit_edge

for.body325.for.body325_crit_edge:                ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body325

for.body325.cleanup333.thread1475_crit_edge:      ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup333.thread1475

if.else330:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  %export_targets331 = getelementptr %struct.ceph_mds_info, ptr %131, i32 %96, i32 5
  %148 = ptrtoint ptr %export_targets331 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %export_targets331, align 4
  br label %cleanup333.thread1475

cleanup333.thread:                                ; preds = %if.then246.cleanup333.thread_crit_edge, %do.body225.cleanup333.thread_crit_edge, %do.end194.cleanup333.thread_crit_edge, %do.body183.cleanup333.thread_crit_edge, %do.end150.cleanup333.thread_crit_edge, %do.end134.cleanup333.thread_crit_edge, %do.end118.cleanup333.thread_crit_edge, %do.body107.cleanup333.thread_crit_edge, %if.then83.cleanup333.thread_crit_edge, %for.body.cleanup333.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %addr) #9
  br label %do.end911

cleanup333.thread1475:                            ; preds = %if.else330, %for.body325.cleanup333.thread1475_crit_edge, %if.then300, %do.end281
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %addr) #9
  br label %for.inc348

cleanup333.thread1480:                            ; preds = %if.end7.i.i1316.cleanup333.thread1480_crit_edge, %kcalloc.exit1318.thread
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %addr) #9
  br label %out_err

cleanup333:                                       ; preds = %do.body288, %cleanup103.cleanup333_crit_edge
  %cleanup.dest.slot.2 = phi i32 [ 4, %cleanup103.cleanup333_crit_edge ], [ 14, %do.body288 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %addr) #9
  %149 = zext i32 %cleanup.dest.slot.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.2, label %cleanup333.cleanup915_crit_edge [
    i32 4, label %cleanup333.do.end911_crit_edge
    i32 14, label %cleanup333.for.inc348_crit_edge
  ]

cleanup333.for.inc348_crit_edge:                  ; preds = %cleanup333
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc348

cleanup333.do.end911_crit_edge:                   ; preds = %cleanup333
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

cleanup333.cleanup915_crit_edge:                  ; preds = %cleanup333
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup915

for.inc348:                                       ; preds = %cleanup333.for.inc348_crit_edge, %cleanup333.thread1475
  %inc349 = add nuw nsw i32 %i.01531, 1
  %exitcond1548.not = icmp eq i32 %inc349, %59
  br i1 %exitcond1548.not, label %for.inc348.do.body352_crit_edge, label %for.inc348.for.body_crit_edge

for.inc348.for.body_crit_edge:                    ; preds = %for.inc348
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc348.do.body352_crit_edge:                  ; preds = %for.inc348
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body352

do.body352:                                       ; preds = %for.inc348.do.body352_crit_edge, %for.cond.preheader.do.body352_crit_edge
  %150 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %p, align 4
  %cmp.not.i1320 = icmp ule ptr %151, %end.addr.1
  %sub.ptr.rhs.cast.i1322 = ptrtoint ptr %151 to i32
  %sub.ptr.sub.i1323 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1322
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1323)
  %cmp1.i1324 = icmp ugt i32 %sub.ptr.sub.i1323, 3
  %152 = select i1 %cmp.not.i1320, i1 %cmp1.i1324, i1 false
  br i1 %152, label %do.end363, label %do.body352.do.end911_crit_edge, !prof !44

do.body352.do.end911_crit_edge:                   ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

do.end363:                                        ; preds = %do.body352
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %151, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154) #9
  %add.ptr.i1325 = getelementptr i8, ptr %151, i32 4
  %156 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %add.ptr.i1325, ptr %p, align 4
  %m_num_data_pg_pools = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 11
  %157 = ptrtoint ptr %m_num_data_pg_pools to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %155, ptr %m_num_data_pg_pools, align 8
  %158 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %155, i32 8) #9
  %159 = extractvalue { i32, i1 } %158, 1
  br i1 %159, label %kcalloc.exit1358.thread, label %if.end7.i.i1356, !prof !45

kcalloc.exit1358.thread:                          ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #11
  %m_data_pg_pools1487 = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 12
  %160 = ptrtoint ptr %m_data_pg_pools1487 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %m_data_pg_pools1487, align 4
  br label %out_err

if.end7.i.i1356:                                  ; preds = %do.end363
  %161 = extractvalue { i32, i1 } %158, 0
  %call8.i.i1355 = call noalias align 128 ptr @__kmalloc(i32 noundef %161, i32 noundef 3392) #13
  %m_data_pg_pools = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 12
  %162 = ptrtoint ptr %m_data_pg_pools to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call8.i.i1355, ptr %m_data_pg_pools, align 4
  %tobool369.not = icmp eq ptr %call8.i.i1355, null
  br i1 %tobool369.not, label %if.end7.i.i1356.out_err_crit_edge, label %do.body372

if.end7.i.i1356.out_err_crit_edge:                ; preds = %if.end7.i.i1356
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body372:                                       ; preds = %if.end7.i.i1356
  %add373 = shl nuw i32 %155, 3
  %mul374 = add i32 %add373, 8
  %163 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %p, align 4
  %cmp.not.i1359 = icmp ule ptr %164, %end.addr.1
  %sub.ptr.rhs.cast.i1361 = ptrtoint ptr %164 to i32
  %sub.ptr.sub.i1362 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1361
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1362, i32 %mul374)
  %cmp1.i1363 = icmp uge i32 %sub.ptr.sub.i1362, %mul374
  %165 = select i1 %cmp.not.i1359, i1 %cmp1.i1363, i1 false
  br i1 %165, label %for.cond386.preheader, label %do.body372.do.end911_crit_edge, !prof !44

do.body372.do.end911_crit_edge:                   ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end911

for.cond386.preheader:                            ; preds = %do.body372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp3871535.not = icmp eq i32 %154, 0
  br i1 %cmp3871535.not, label %for.cond386.preheader.for.end395_crit_edge, label %for.cond386.preheader.for.body389_crit_edge

for.cond386.preheader.for.body389_crit_edge:      ; preds = %for.cond386.preheader
  br label %for.body389

for.cond386.preheader.for.end395_crit_edge:       ; preds = %for.cond386.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end395

for.body389:                                      ; preds = %for.body389.for.body389_crit_edge, %for.cond386.preheader.for.body389_crit_edge
  %i.11536 = phi i32 [ %inc394, %for.body389.for.body389_crit_edge ], [ 0, %for.cond386.preheader.for.body389_crit_edge ]
  %166 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %p, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 8)
  %169 = load i64, ptr %167, align 1
  %170 = call i64 @llvm.bswap.i64(i64 %169) #9
  %add.ptr.i1364 = getelementptr i8, ptr %167, i32 8
  %171 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr.i1364, ptr %p, align 4
  %172 = ptrtoint ptr %m_data_pg_pools to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %m_data_pg_pools, align 4
  %arrayidx392 = getelementptr i64, ptr %173, i32 %i.11536
  %174 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %170, ptr %arrayidx392, align 8
  %inc394 = add nuw nsw i32 %i.11536, 1
  %exitcond1549.not = icmp eq i32 %inc394, %155
  br i1 %exitcond1549.not, label %for.body389.for.end395_crit_edge, label %for.body389.for.body389_crit_edge

for.body389.for.body389_crit_edge:                ; preds = %for.body389
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body389

for.body389.for.end395_crit_edge:                 ; preds = %for.body389
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end395

for.end395:                                       ; preds = %for.body389.for.end395_crit_edge, %for.cond386.preheader.for.end395_crit_edge
  %175 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %p, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 8)
  %178 = load i64, ptr %176, align 1
  %179 = call i64 @llvm.bswap.i64(i64 %178) #9
  %add.ptr.i1365 = getelementptr i8, ptr %176, i32 8
  %180 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr.i1365, ptr %p, align 4
  %m_cas_pg_pool = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 13
  %181 = ptrtoint ptr %m_cas_pg_pool to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %179, ptr %m_cas_pg_pool, align 8
  %182 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %183)
  %cmp398 = icmp ugt i32 %183, 1
  %m_enabled = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 14
  %frombool400 = zext i1 %cmp398 to i8
  %184 = ptrtoint ptr %m_enabled to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %frombool400, ptr %m_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp402 = icmp ugt i8 %7, 1
  br i1 %cmp402, label %do.body406, label %for.end395.do.body436_crit_edge

for.end395.do.body436_crit_edge:                  ; preds = %for.end395
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body436

do.body406:                                       ; preds = %for.end395
  %cmp.not.i1366 = icmp ule ptr %add.ptr.i1365, %end.addr.1
  %sub.ptr.rhs.cast.i1368 = ptrtoint ptr %add.ptr.i1365 to i32
  %sub.ptr.sub.i1369 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1368
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i1369)
  %cmp1.i1370 = icmp ugt i32 %sub.ptr.sub.i1369, 1
  %185 = select i1 %cmp.not.i1366, i1 %cmp1.i1370, i1 false
  br i1 %185, label %if.end421, label %do.body406.do.body861_crit_edge, !prof !44

do.body406.do.body861_crit_edge:                  ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end421:                                        ; preds = %do.body406
  %186 = ptrtoint ptr %add.ptr.i1365 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %add.ptr.i1365, align 1
  %188 = call i16 @llvm.bswap.i16(i16 %187) #9
  %add.ptr.i1371 = getelementptr i8, ptr %176, i32 10
  %189 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %add.ptr.i1371, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %188)
  %cmp423 = icmp ugt i16 %188, 2
  br i1 %cmp423, label %if.then425, label %if.end421.do.body436_crit_edge

if.end421.do.body436_crit_edge:                   ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body436

if.then425:                                       ; preds = %if.end421
  %190 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p, align 4
  %cmp.not.i.i = icmp ule ptr %191, %end.addr.1
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %191 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 11
  %192 = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %192, label %do.end.i, label %if.then425.do.body861_crit_edge, !prof !44

if.then425.do.body861_crit_edge:                  ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end.i:                                         ; preds = %if.then425
  %add.ptr.i1372 = getelementptr i8, ptr %191, i32 8
  %193 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %add.ptr.i1372, ptr %p, align 4
  %194 = ptrtoint ptr %add.ptr.i1372 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %add.ptr.i1372, align 1
  %add.ptr.i.i = getelementptr i8, ptr %191, i32 12
  store ptr %add.ptr.i.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp3.not65.i = icmp eq i32 %195, 0
  br i1 %cmp3.not65.i, label %do.end.i.for.inc.i_crit_edge, label %while.body.preheader.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

while.body.preheader.i:                           ; preds = %do.end.i
  %196 = call i32 @llvm.bswap.i32(i32 %195) #9
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec66.in.i = phi i32 [ %dec66.i, %cleanup.i.while.body.i_crit_edge ], [ %196, %while.body.preheader.i ]
  %dec66.i = add i32 %dec66.in.i, -1
  %197 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %p, align 4
  %cmp.not.i48.i = icmp ule ptr %198, %end.addr.1
  %sub.ptr.rhs.cast.i50.i = ptrtoint ptr %198 to i32
  %sub.ptr.sub.i51.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i51.i)
  %cmp1.i52.i = icmp ugt i32 %sub.ptr.sub.i51.i, 11
  %199 = select i1 %cmp.not.i48.i, i1 %cmp1.i52.i, i1 false
  br i1 %199, label %do.end15.i, label %while.body.i.do.body861_crit_edge, !prof !44

while.body.i.do.body861_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end15.i:                                       ; preds = %while.body.i
  %add.ptr16.i = getelementptr i8, ptr %198, i32 8
  %200 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %add.ptr16.i, ptr %p, align 4
  %201 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %add.ptr16.i, align 1
  %203 = call i32 @llvm.bswap.i32(i32 %202) #9
  %add.ptr.i53.i = getelementptr i8, ptr %198, i32 12
  %204 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr.i53.i, ptr %p, align 4
  %cmp.not.i54.i = icmp ule ptr %add.ptr.i53.i, %end.addr.1
  %sub.ptr.rhs.cast.i56.i = ptrtoint ptr %add.ptr.i53.i to i32
  %sub.ptr.sub.i57.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i56.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i57.i, i32 %203)
  %cmp1.i58.i = icmp uge i32 %sub.ptr.sub.i57.i, %203
  %205 = select i1 %cmp.not.i54.i, i1 %cmp1.i58.i, i1 false
  br i1 %205, label %cleanup.i, label %do.end15.i.do.body861_crit_edge, !prof !44

do.end15.i.do.body861_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

cleanup.i:                                        ; preds = %do.end15.i
  %add.ptr30.i = getelementptr i8, ptr %add.ptr.i53.i, i32 %203
  %206 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %add.ptr30.i, ptr %p, align 4
  %cmp3.not.i = icmp eq i32 %dec66.i, 0
  br i1 %cmp3.not.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %do.end.i.for.inc.i_crit_edge
  %207 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %p, align 4
  %cmp.not.i.1.i = icmp ule ptr %208, %end.addr.1
  %sub.ptr.rhs.cast.i.1.i = ptrtoint ptr %208 to i32
  %sub.ptr.sub.i.1.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i.1.i)
  %cmp1.i.1.i = icmp ugt i32 %sub.ptr.sub.i.1.i, 11
  %209 = select i1 %cmp.not.i.1.i, i1 %cmp1.i.1.i, i1 false
  br i1 %209, label %do.end.1.i, label %for.inc.i.do.body861_crit_edge, !prof !44

for.inc.i.do.body861_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end.1.i:                                       ; preds = %for.inc.i
  %add.ptr.1.i = getelementptr i8, ptr %208, i32 8
  %210 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %add.ptr.1.i, ptr %p, align 4
  %211 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %add.ptr.1.i, align 1
  %add.ptr.i.1.i = getelementptr i8, ptr %208, i32 12
  store ptr %add.ptr.i.1.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp3.not65.1.i = icmp eq i32 %212, 0
  br i1 %cmp3.not65.1.i, label %do.end.1.i.for.inc.1.i_crit_edge, label %while.body.preheader.1.i

do.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

while.body.preheader.1.i:                         ; preds = %do.end.1.i
  %213 = call i32 @llvm.bswap.i32(i32 %212) #9
  br label %while.body.1.i

while.body.1.i:                                   ; preds = %cleanup.1.i.while.body.1.i_crit_edge, %while.body.preheader.1.i
  %dec66.in.1.i = phi i32 [ %dec66.1.i, %cleanup.1.i.while.body.1.i_crit_edge ], [ %213, %while.body.preheader.1.i ]
  %dec66.1.i = add i32 %dec66.in.1.i, -1
  %214 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %p, align 4
  %cmp.not.i48.1.i = icmp ule ptr %215, %end.addr.1
  %sub.ptr.rhs.cast.i50.1.i = ptrtoint ptr %215 to i32
  %sub.ptr.sub.i51.1.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i50.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i51.1.i)
  %cmp1.i52.1.i = icmp ugt i32 %sub.ptr.sub.i51.1.i, 11
  %216 = select i1 %cmp.not.i48.1.i, i1 %cmp1.i52.1.i, i1 false
  br i1 %216, label %do.end15.1.i, label %while.body.1.i.do.body861_crit_edge, !prof !44

while.body.1.i.do.body861_crit_edge:              ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end15.1.i:                                     ; preds = %while.body.1.i
  %add.ptr16.1.i = getelementptr i8, ptr %215, i32 8
  %217 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %add.ptr16.1.i, ptr %p, align 4
  %218 = ptrtoint ptr %add.ptr16.1.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %add.ptr16.1.i, align 1
  %220 = call i32 @llvm.bswap.i32(i32 %219) #9
  %add.ptr.i53.1.i = getelementptr i8, ptr %215, i32 12
  %221 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %add.ptr.i53.1.i, ptr %p, align 4
  %cmp.not.i54.1.i = icmp ule ptr %add.ptr.i53.1.i, %end.addr.1
  %sub.ptr.rhs.cast.i56.1.i = ptrtoint ptr %add.ptr.i53.1.i to i32
  %sub.ptr.sub.i57.1.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i56.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i57.1.i, i32 %220)
  %cmp1.i58.1.i = icmp uge i32 %sub.ptr.sub.i57.1.i, %220
  %222 = select i1 %cmp.not.i54.1.i, i1 %cmp1.i58.1.i, i1 false
  br i1 %222, label %cleanup.1.i, label %do.end15.1.i.do.body861_crit_edge, !prof !44

do.end15.1.i.do.body861_crit_edge:                ; preds = %do.end15.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

cleanup.1.i:                                      ; preds = %do.end15.1.i
  %add.ptr30.1.i = getelementptr i8, ptr %add.ptr.i53.1.i, i32 %220
  %223 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %add.ptr30.1.i, ptr %p, align 4
  %cmp3.not.1.i = icmp eq i32 %dec66.1.i, 0
  br i1 %cmp3.not.1.i, label %cleanup.1.i.for.inc.1.i_crit_edge, label %cleanup.1.i.while.body.1.i_crit_edge

cleanup.1.i.while.body.1.i_crit_edge:             ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.1.i

cleanup.1.i.for.inc.1.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %cleanup.1.i.for.inc.1.i_crit_edge, %do.end.1.i.for.inc.1.i_crit_edge
  %224 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %p, align 4
  %cmp.not.i.2.i = icmp ule ptr %225, %end.addr.1
  %sub.ptr.rhs.cast.i.2.i = ptrtoint ptr %225 to i32
  %sub.ptr.sub.i.2.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i.2.i)
  %cmp1.i.2.i = icmp ugt i32 %sub.ptr.sub.i.2.i, 11
  %226 = select i1 %cmp.not.i.2.i, i1 %cmp1.i.2.i, i1 false
  br i1 %226, label %do.end.2.i, label %for.inc.1.i.do.body861_crit_edge, !prof !44

for.inc.1.i.do.body861_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end.2.i:                                       ; preds = %for.inc.1.i
  %add.ptr.2.i = getelementptr i8, ptr %225, i32 8
  %227 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %add.ptr.2.i, ptr %p, align 4
  %228 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %add.ptr.2.i, align 1
  %add.ptr.i.2.i = getelementptr i8, ptr %225, i32 12
  store ptr %add.ptr.i.2.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp3.not65.2.i = icmp eq i32 %229, 0
  br i1 %cmp3.not65.2.i, label %do.end.2.i.if.end431_crit_edge, label %while.body.preheader.2.i

do.end.2.i.if.end431_crit_edge:                   ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end431

while.body.preheader.2.i:                         ; preds = %do.end.2.i
  %230 = call i32 @llvm.bswap.i32(i32 %229) #9
  br label %while.body.2.i

while.body.2.i:                                   ; preds = %cleanup.2.i.while.body.2.i_crit_edge, %while.body.preheader.2.i
  %dec66.in.2.i = phi i32 [ %dec66.2.i, %cleanup.2.i.while.body.2.i_crit_edge ], [ %230, %while.body.preheader.2.i ]
  %dec66.2.i = add i32 %dec66.in.2.i, -1
  %231 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %p, align 4
  %cmp.not.i48.2.i = icmp ule ptr %232, %end.addr.1
  %sub.ptr.rhs.cast.i50.2.i = ptrtoint ptr %232 to i32
  %sub.ptr.sub.i51.2.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i50.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i51.2.i)
  %cmp1.i52.2.i = icmp ugt i32 %sub.ptr.sub.i51.2.i, 11
  %233 = select i1 %cmp.not.i48.2.i, i1 %cmp1.i52.2.i, i1 false
  br i1 %233, label %do.end15.2.i, label %while.body.2.i.do.body861_crit_edge, !prof !44

while.body.2.i.do.body861_crit_edge:              ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end15.2.i:                                     ; preds = %while.body.2.i
  %add.ptr16.2.i = getelementptr i8, ptr %232, i32 8
  %234 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %add.ptr16.2.i, ptr %p, align 4
  %235 = ptrtoint ptr %add.ptr16.2.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %add.ptr16.2.i, align 1
  %237 = call i32 @llvm.bswap.i32(i32 %236) #9
  %add.ptr.i53.2.i = getelementptr i8, ptr %232, i32 12
  %238 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %add.ptr.i53.2.i, ptr %p, align 4
  %cmp.not.i54.2.i = icmp ule ptr %add.ptr.i53.2.i, %end.addr.1
  %sub.ptr.rhs.cast.i56.2.i = ptrtoint ptr %add.ptr.i53.2.i to i32
  %sub.ptr.sub.i57.2.i = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i56.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i57.2.i, i32 %237)
  %cmp1.i58.2.i = icmp uge i32 %sub.ptr.sub.i57.2.i, %237
  %239 = select i1 %cmp.not.i54.2.i, i1 %cmp1.i58.2.i, i1 false
  br i1 %239, label %cleanup.2.i, label %do.end15.2.i.do.body861_crit_edge, !prof !44

do.end15.2.i.do.body861_crit_edge:                ; preds = %do.end15.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

cleanup.2.i:                                      ; preds = %do.end15.2.i
  %add.ptr30.2.i = getelementptr i8, ptr %add.ptr.i53.2.i, i32 %237
  %240 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %add.ptr30.2.i, ptr %p, align 4
  %cmp3.not.2.i = icmp eq i32 %dec66.2.i, 0
  br i1 %cmp3.not.2.i, label %cleanup.2.i.if.end431_crit_edge, label %cleanup.2.i.while.body.2.i_crit_edge

cleanup.2.i.while.body.2.i_crit_edge:             ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.2.i

cleanup.2.i.if.end431_crit_edge:                  ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end431

if.end431:                                        ; preds = %cleanup.2.i.if.end431_crit_edge, %do.end.2.i.if.end431_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %188)
  %cmp433 = icmp ult i16 %188, 5
  br i1 %cmp433, label %if.end431.do.body436_crit_edge, label %do.body446

if.end431.do.body436_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body436

do.body436:                                       ; preds = %if.end431.do.body436_crit_edge, %if.end421.do.body436_crit_edge, %for.end395.do.body436_crit_edge
  %mdsmap_ev.014961502 = phi i16 [ %188, %if.end431.do.body436_crit_edge ], [ %188, %if.end421.do.body436_crit_edge ], [ 1, %for.end395.do.body436_crit_edge ]
  %241 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %p, align 4
  %add.ptr437 = getelementptr i8, ptr %242, i32 4
  %cmp438 = icmp ugt ptr %add.ptr437, %end.addr.1
  br i1 %cmp438, label %do.body436.do.body861_crit_edge, label %do.body436.do.body456_crit_edge

do.body436.do.body456_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body456

do.body436.do.body861_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.body446:                                       ; preds = %if.end431
  %243 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %p, align 4
  %add.ptr447 = getelementptr i8, ptr %244, i32 8
  %cmp448 = icmp ugt ptr %add.ptr447, %end.addr.1
  br i1 %cmp448, label %do.body446.do.body861_crit_edge, label %do.body446.do.body456_crit_edge

do.body446.do.body456_crit_edge:                  ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body456

do.body446.do.body861_crit_edge:                  ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.body456:                                       ; preds = %do.body446.do.body456_crit_edge, %do.body436.do.body456_crit_edge
  %mdsmap_ev.014961501 = phi i16 [ %mdsmap_ev.014961502, %do.body436.do.body456_crit_edge ], [ %188, %do.body446.do.body456_crit_edge ]
  %storemerge = phi ptr [ %add.ptr437, %do.body436.do.body456_crit_edge ], [ %add.ptr447, %do.body446.do.body456_crit_edge ]
  %245 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %storemerge, ptr %p, align 4
  %add.ptr457 = getelementptr i8, ptr %storemerge, i32 8
  %cmp458 = icmp ugt ptr %add.ptr457, %end.addr.1
  br i1 %cmp458, label %do.body456.do.body861_crit_edge, label %if.end461

do.body456.do.body861_crit_edge:                  ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end461:                                        ; preds = %do.body456
  %246 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %add.ptr457, ptr %p, align 4
  %add.ptr466 = getelementptr i8, ptr %storemerge, i32 16
  %cmp467 = icmp ugt ptr %add.ptr466, %end.addr.1
  br i1 %cmp467, label %if.end461.do.body861_crit_edge, label %if.end470

if.end461.do.body861_crit_edge:                   ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end470:                                        ; preds = %if.end461
  %247 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %add.ptr466, ptr %p, align 4
  %add.ptr475 = getelementptr i8, ptr %storemerge, i32 20
  %cmp476 = icmp ugt ptr %add.ptr475, %end.addr.1
  br i1 %cmp476, label %if.end470.do.body861_crit_edge, label %if.end479

if.end470.do.body861_crit_edge:                   ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end479:                                        ; preds = %if.end470
  %248 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %add.ptr475, ptr %p, align 4
  %sub.ptr.rhs.cast.i1376 = ptrtoint ptr %add.ptr475 to i32
  %sub.ptr.sub.i1377 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1376
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1377)
  %cmp1.i1378 = icmp ugt i32 %sub.ptr.sub.i1377, 3
  br i1 %cmp1.i1378, label %do.end495, label %if.end479.do.body861_crit_edge, !prof !44

if.end479.do.body861_crit_edge:                   ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end495:                                        ; preds = %if.end479
  %249 = ptrtoint ptr %add.ptr475 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %add.ptr475, align 1
  %251 = call i32 @llvm.bswap.i32(i32 %250) #9
  %add.ptr.i1379 = getelementptr i8, ptr %storemerge, i32 24
  %252 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %add.ptr.i1379, ptr %p, align 4
  %mul500 = shl i32 %251, 2
  %cmp.not.i1380 = icmp ule ptr %add.ptr.i1379, %end.addr.1
  %sub.ptr.rhs.cast.i1382 = ptrtoint ptr %add.ptr.i1379 to i32
  %sub.ptr.sub.i1383 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1382
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1383, i32 %mul500)
  %cmp1.i1384 = icmp uge i32 %sub.ptr.sub.i1383, %mul500
  %253 = select i1 %cmp.not.i1380, i1 %cmp1.i1384, i1 false
  br i1 %253, label %for.cond512.preheader, label %do.end495.do.body861_crit_edge, !prof !44

do.end495.do.body861_crit_edge:                   ; preds = %do.end495
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

for.cond512.preheader:                            ; preds = %do.end495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp5131537 = icmp sgt i32 %251, 0
  br i1 %cmp5131537, label %for.cond512.preheader.for.body515_crit_edge, label %for.cond512.preheader.for.end535_crit_edge

for.cond512.preheader.for.end535_crit_edge:       ; preds = %for.cond512.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end535

for.cond512.preheader.for.body515_crit_edge:      ; preds = %for.cond512.preheader
  br label %for.body515

for.body515:                                      ; preds = %if.end532.for.body515_crit_edge, %for.cond512.preheader.for.body515_crit_edge
  %i.21539 = phi i32 [ %inc534, %if.end532.for.body515_crit_edge ], [ 0, %for.cond512.preheader.for.body515_crit_edge ]
  %num_laggy.01538 = phi i32 [ %num_laggy.1, %if.end532.for.body515_crit_edge ], [ 0, %for.cond512.preheader.for.body515_crit_edge ]
  %254 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %p, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %255, align 1
  %258 = call i32 @llvm.bswap.i32(i32 %257) #9
  %add.ptr.i1385 = getelementptr i8, ptr %255, i32 4
  %259 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %add.ptr.i1385, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %258)
  %cmp518 = icmp sgt i32 %258, -1
  br i1 %cmp518, label %land.lhs.true520, label %for.body515.if.end532_crit_edge

for.body515.if.end532_crit_edge:                  ; preds = %for.body515
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end532

land.lhs.true520:                                 ; preds = %for.body515
  %260 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %261)
  %cmp522 = icmp ult i32 %258, %261
  br i1 %cmp522, label %if.then524, label %land.lhs.true520.if.end532_crit_edge

land.lhs.true520.if.end532_crit_edge:             ; preds = %land.lhs.true520
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end532

if.then524:                                       ; preds = %land.lhs.true520
  call void @__sanitizer_cov_trace_pc() #11
  %262 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %m_info, align 4
  %laggy527 = getelementptr %struct.ceph_mds_info, ptr %263, i32 %258, i32 4
  %264 = ptrtoint ptr %laggy527 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %laggy527, align 8, !range !43
  %266 = zext i8 %265 to i32
  %spec.select = add i32 %num_laggy.01538, %266
  br label %if.end532

if.end532:                                        ; preds = %if.then524, %land.lhs.true520.if.end532_crit_edge, %for.body515.if.end532_crit_edge
  %num_laggy.1 = phi i32 [ %num_laggy.01538, %land.lhs.true520.if.end532_crit_edge ], [ %num_laggy.01538, %for.body515.if.end532_crit_edge ], [ %spec.select, %if.then524 ]
  %inc534 = add nuw nsw i32 %i.21539, 1
  %exitcond1550.not = icmp eq i32 %inc534, %251
  br i1 %exitcond1550.not, label %if.end532.for.end535_crit_edge, label %if.end532.for.body515_crit_edge

if.end532.for.body515_crit_edge:                  ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body515

if.end532.for.end535_crit_edge:                   ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end535

for.end535:                                       ; preds = %if.end532.for.end535_crit_edge, %for.cond512.preheader.for.end535_crit_edge
  %num_laggy.0.lcssa = phi i32 [ 0, %for.cond512.preheader.for.end535_crit_edge ], [ %num_laggy.1, %if.end532.for.end535_crit_edge ]
  %m_num_laggy = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 16
  %267 = ptrtoint ptr %m_num_laggy to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %num_laggy.0.lcssa, ptr %m_num_laggy, align 4
  %268 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %269)
  %cmp537 = icmp ugt i32 %251, %269
  br i1 %cmp537, label %if.then539, label %for.end535.do.body555_crit_edge

for.end535.do.body555_crit_edge:                  ; preds = %for.end535
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body555

if.then539:                                       ; preds = %for.end535
  %270 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %m_info, align 4
  %mul541 = mul i32 %251, 160
  %call542 = call noalias ptr @krealloc(ptr noundef %271, i32 noundef %mul541, i32 noundef 3392) #15
  %tobool543.not = icmp eq ptr %call542, null
  br i1 %tobool543.not, label %if.then539.out_err_crit_edge, label %cleanup547

if.then539.out_err_crit_edge:                     ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

cleanup547:                                       ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #11
  %272 = ptrtoint ptr %m_info to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call542, ptr %m_info, align 4
  br label %do.body555

do.body555:                                       ; preds = %cleanup547, %for.end535.do.body555_crit_edge
  %273 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %251, ptr %possible_max_rank, align 8
  %274 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %p, align 4
  %cmp.not.i1386 = icmp ule ptr %275, %end.addr.1
  %sub.ptr.rhs.cast.i1388 = ptrtoint ptr %275 to i32
  %sub.ptr.sub.i1389 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1388
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1389)
  %cmp1.i1390 = icmp ugt i32 %sub.ptr.sub.i1389, 3
  %276 = select i1 %cmp.not.i1386, i1 %cmp1.i1390, i1 false
  br i1 %276, label %do.end569, label %do.body555.do.body861_crit_edge, !prof !44

do.body555.do.body861_crit_edge:                  ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end569:                                        ; preds = %do.body555
  %277 = ptrtoint ptr %275 to i32
  call void @__asan_loadN_noabort(i32 %277, i32 4)
  %278 = load i32, ptr %275, align 1
  %279 = call i32 @llvm.bswap.i32(i32 %278) #9
  %add.ptr.i1391 = getelementptr i8, ptr %275, i32 4
  %280 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %add.ptr.i1391, ptr %p, align 4
  %mul573 = shl i32 %279, 3
  %cmp.not.i1392 = icmp ule ptr %add.ptr.i1391, %end.addr.1
  %sub.ptr.rhs.cast.i1394 = ptrtoint ptr %add.ptr.i1391 to i32
  %sub.ptr.sub.i1395 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1394
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1395, i32 %mul573)
  %cmp1.i1396 = icmp uge i32 %sub.ptr.sub.i1395, %mul573
  %281 = select i1 %cmp.not.i1392, i1 %cmp1.i1396, i1 false
  br i1 %281, label %do.body593, label %do.end569.do.body861_crit_edge, !prof !44

do.end569.do.body861_crit_edge:                   ; preds = %do.end569
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.body593:                                       ; preds = %do.end569
  %add.ptr586 = getelementptr i8, ptr %add.ptr.i1391, i32 %mul573
  %282 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %add.ptr586, ptr %p, align 4
  %cmp.not.i1397 = icmp ule ptr %add.ptr586, %end.addr.1
  %sub.ptr.rhs.cast.i1399 = ptrtoint ptr %add.ptr586 to i32
  %sub.ptr.sub.i1400 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1399
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1400)
  %cmp1.i1401 = icmp ugt i32 %sub.ptr.sub.i1400, 3
  %283 = select i1 %cmp.not.i1397, i1 %cmp1.i1401, i1 false
  br i1 %283, label %do.end608, label %do.body593.do.body861_crit_edge, !prof !44

do.body593.do.body861_crit_edge:                  ; preds = %do.body593
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end608:                                        ; preds = %do.body593
  %284 = ptrtoint ptr %add.ptr586 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %add.ptr586, align 1
  %286 = call i32 @llvm.bswap.i32(i32 %285) #9
  %add.ptr.i1402 = getelementptr i8, ptr %add.ptr586, i32 4
  %287 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %add.ptr.i1402, ptr %p, align 4
  %mul612 = mul i32 %286, 12
  %cmp.not.i1403 = icmp ule ptr %add.ptr.i1402, %end.addr.1
  %sub.ptr.rhs.cast.i1405 = ptrtoint ptr %add.ptr.i1402 to i32
  %sub.ptr.sub.i1406 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1405
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1406, i32 %mul612)
  %cmp1.i1407 = icmp uge i32 %sub.ptr.sub.i1406, %mul612
  %288 = select i1 %cmp.not.i1403, i1 %cmp1.i1407, i1 false
  br i1 %288, label %do.body632, label %do.end608.do.body861_crit_edge, !prof !44

do.end608.do.body861_crit_edge:                   ; preds = %do.end608
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.body632:                                       ; preds = %do.end608
  %add.ptr625 = getelementptr i8, ptr %add.ptr.i1402, i32 %mul612
  %289 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %add.ptr625, ptr %p, align 4
  %cmp.not.i1408 = icmp ule ptr %add.ptr625, %end.addr.1
  %sub.ptr.rhs.cast.i1410 = ptrtoint ptr %add.ptr625 to i32
  %sub.ptr.sub.i1411 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1410
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1411)
  %cmp1.i1412 = icmp ugt i32 %sub.ptr.sub.i1411, 3
  %290 = select i1 %cmp.not.i1408, i1 %cmp1.i1412, i1 false
  br i1 %290, label %do.end647, label %do.body632.do.body861_crit_edge, !prof !44

do.body632.do.body861_crit_edge:                  ; preds = %do.body632
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end647:                                        ; preds = %do.body632
  %291 = ptrtoint ptr %add.ptr625 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %add.ptr625, align 1
  %293 = call i32 @llvm.bswap.i32(i32 %292) #9
  %add.ptr.i1413 = getelementptr i8, ptr %add.ptr625, i32 4
  %294 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %add.ptr.i1413, ptr %p, align 4
  %mul651 = shl i32 %293, 2
  %cmp.not.i1414 = icmp ule ptr %add.ptr.i1413, %end.addr.1
  %sub.ptr.rhs.cast.i1416 = ptrtoint ptr %add.ptr.i1413 to i32
  %sub.ptr.sub.i1417 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1416
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1417, i32 %mul651)
  %cmp1.i1418 = icmp uge i32 %sub.ptr.sub.i1417, %mul651
  %295 = select i1 %cmp.not.i1414, i1 %cmp1.i1418, i1 false
  br i1 %295, label %do.body671, label %do.end647.do.body861_crit_edge, !prof !44

do.end647.do.body861_crit_edge:                   ; preds = %do.end647
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.body671:                                       ; preds = %do.end647
  %add.ptr664 = getelementptr i8, ptr %add.ptr.i1413, i32 %mul651
  %296 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %add.ptr664, ptr %p, align 4
  %cmp.not.i1419 = icmp ule ptr %add.ptr664, %end.addr.1
  %sub.ptr.rhs.cast.i1421 = ptrtoint ptr %add.ptr664 to i32
  %sub.ptr.sub.i1422 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1421
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1422)
  %cmp1.i1423 = icmp ugt i32 %sub.ptr.sub.i1422, 3
  %297 = select i1 %cmp.not.i1419, i1 %cmp1.i1423, i1 false
  br i1 %297, label %do.end686, label %do.body671.do.body861_crit_edge, !prof !44

do.body671.do.body861_crit_edge:                  ; preds = %do.body671
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end686:                                        ; preds = %do.body671
  %298 = ptrtoint ptr %add.ptr664 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %add.ptr664, align 1
  %300 = call i32 @llvm.bswap.i32(i32 %299) #9
  %add.ptr.i1424 = getelementptr i8, ptr %add.ptr664, i32 4
  %301 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %add.ptr.i1424, ptr %p, align 4
  %mul690 = shl i32 %300, 2
  %cmp.not.i1425 = icmp ule ptr %add.ptr.i1424, %end.addr.1
  %sub.ptr.rhs.cast.i1427 = ptrtoint ptr %add.ptr.i1424 to i32
  %sub.ptr.sub.i1428 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1427
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1428, i32 %mul690)
  %cmp1.i1429 = icmp uge i32 %sub.ptr.sub.i1428, %mul690
  %302 = select i1 %cmp.not.i1425, i1 %cmp1.i1429, i1 false
  br i1 %302, label %do.end709, label %do.end686.do.body861_crit_edge, !prof !44

do.end686.do.body861_crit_edge:                   ; preds = %do.end686
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end709:                                        ; preds = %do.end686
  %add.ptr703 = getelementptr i8, ptr %add.ptr.i1424, i32 %mul690
  %303 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %add.ptr703, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %mdsmap_ev.014961501)
  %cmp711 = icmp ugt i16 %mdsmap_ev.014961501, 3
  br i1 %cmp711, label %do.body714, label %do.end709.if.else858_crit_edge

do.end709.if.else858_crit_edge:                   ; preds = %do.end709
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else858

do.body714:                                       ; preds = %do.end709
  %304 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %p, align 4
  %add.ptr715 = getelementptr i8, ptr %305, i32 4
  %cmp716 = icmp ugt ptr %add.ptr715, %end.addr.1
  br i1 %cmp716, label %do.body714.do.body861_crit_edge, label %if.end723

do.body714.do.body861_crit_edge:                  ; preds = %do.body714
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end723:                                        ; preds = %do.body714
  %306 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %add.ptr715, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %mdsmap_ev.014961501)
  %cmp725 = icmp ugt i16 %mdsmap_ev.014961501, 5
  br i1 %cmp725, label %do.body728, label %if.end723.if.else858_crit_edge

if.end723.if.else858_crit_edge:                   ; preds = %if.end723
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else858

do.body728:                                       ; preds = %if.end723
  %307 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %p, align 4
  %add.ptr729 = getelementptr i8, ptr %308, i32 1
  %cmp730 = icmp ugt ptr %add.ptr729, %end.addr.1
  br i1 %cmp730, label %do.body728.do.body861_crit_edge, label %if.end733

do.body728.do.body861_crit_edge:                  ; preds = %do.body728
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end733:                                        ; preds = %do.body728
  %309 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %add.ptr729, ptr %p, align 4
  %add.ptr738 = getelementptr i8, ptr %308, i32 2
  %cmp739 = icmp ugt ptr %add.ptr738, %end.addr.1
  br i1 %cmp739, label %if.end733.do.body861_crit_edge, label %if.end746

if.end733.do.body861_crit_edge:                   ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end746:                                        ; preds = %if.end733
  %310 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %add.ptr738, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %mdsmap_ev.014961501)
  %cmp748 = icmp ugt i16 %mdsmap_ev.014961501, 6
  br i1 %cmp748, label %do.body751, label %if.end746.if.else858_crit_edge

if.end746.if.else858_crit_edge:                   ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else858

do.body751:                                       ; preds = %if.end746
  %311 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %p, align 4
  %add.ptr752 = getelementptr i8, ptr %312, i32 1
  %cmp753 = icmp ugt ptr %add.ptr752, %end.addr.1
  br i1 %cmp753, label %do.body751.do.body861_crit_edge, label %if.end760

do.body751.do.body861_crit_edge:                  ; preds = %do.body751
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end760:                                        ; preds = %do.body751
  %313 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %add.ptr752, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %mdsmap_ev.014961501)
  %cmp762 = icmp ugt i16 %mdsmap_ev.014961501, 7
  br i1 %cmp762, label %if.then764, label %if.end760.if.else858_crit_edge

if.end760.if.else858_crit_edge:                   ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else858

if.then764:                                       ; preds = %if.end760
  %314 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %p, align 4
  %316 = icmp ugt ptr %end.addr.1, %315
  br i1 %316, label %do.end777, label %if.then764.do.body861_crit_edge, !prof !44

if.then764.do.body861_crit_edge:                  ; preds = %if.then764
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end777:                                        ; preds = %if.then764
  %317 = ptrtoint ptr %315 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %315, align 1
  %incdec.ptr.i1435 = getelementptr i8, ptr %315, i32 1
  %319 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %incdec.ptr.i1435, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool779 = icmp ne i8 %318, 0
  %frombool781 = zext i1 %tobool779 to i8
  %320 = ptrtoint ptr %m_enabled to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %frombool781, ptr %m_enabled, align 8
  %cmp.not.i1436 = icmp ule ptr %incdec.ptr.i1435, %end.addr.1
  %sub.ptr.rhs.cast.i1438 = ptrtoint ptr %incdec.ptr.i1435 to i32
  %sub.ptr.sub.i1439 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1438
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1439)
  %cmp1.i1440 = icmp ugt i32 %sub.ptr.sub.i1439, 3
  %321 = select i1 %cmp.not.i1436, i1 %cmp1.i1440, i1 false
  br i1 %321, label %do.end796, label %do.end777.do.body861_crit_edge, !prof !44

do.end777.do.body861_crit_edge:                   ; preds = %do.end777
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end796:                                        ; preds = %do.end777
  %322 = ptrtoint ptr %incdec.ptr.i1435 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %incdec.ptr.i1435, align 1
  %324 = call i32 @llvm.bswap.i32(i32 %323) #9
  %add.ptr.i1441 = getelementptr i8, ptr %315, i32 5
  %325 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %add.ptr.i1441, ptr %p, align 4
  %cmp.not.i1442 = icmp ule ptr %add.ptr.i1441, %end.addr.1
  %sub.ptr.rhs.cast.i1444 = ptrtoint ptr %add.ptr.i1441 to i32
  %sub.ptr.sub.i1445 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1444
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1445, i32 %324)
  %cmp1.i1446 = icmp uge i32 %sub.ptr.sub.i1445, %324
  %326 = select i1 %cmp.not.i1442, i1 %cmp1.i1446, i1 false
  br i1 %326, label %if.end816, label %do.end796.do.body861_crit_edge, !prof !44

do.end796.do.body861_crit_edge:                   ; preds = %do.end796
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

if.end816:                                        ; preds = %do.end796
  %add.ptr812 = getelementptr i8, ptr %add.ptr.i1441, i32 %324
  %327 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %add.ptr812, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %mdsmap_ev.014961501)
  %cmp818 = icmp ugt i16 %mdsmap_ev.014961501, 8
  br i1 %cmp818, label %if.then820, label %if.end816.if.else858_crit_edge

if.end816.if.else858_crit_edge:                   ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else858

if.then820:                                       ; preds = %if.end816
  %328 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %p, align 4
  %cmp.not.i1447 = icmp ule ptr %329, %end.addr.1
  %sub.ptr.rhs.cast.i1449 = ptrtoint ptr %329 to i32
  %sub.ptr.sub.i1450 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1449
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i1450)
  %cmp1.i1451 = icmp ugt i32 %sub.ptr.sub.i1450, 3
  %330 = select i1 %cmp.not.i1447, i1 %cmp1.i1451, i1 false
  br i1 %330, label %do.end834, label %if.then820.do.body861_crit_edge, !prof !44

if.then820.do.body861_crit_edge:                  ; preds = %if.then820
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end834:                                        ; preds = %if.then820
  %331 = ptrtoint ptr %329 to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %329, align 1
  %333 = call i32 @llvm.bswap.i32(i32 %332) #9
  %add.ptr.i1452 = getelementptr i8, ptr %329, i32 4
  %334 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %add.ptr.i1452, ptr %p, align 4
  %mul838 = shl i32 %333, 2
  %cmp.not.i1453 = icmp ule ptr %add.ptr.i1452, %end.addr.1
  %sub.ptr.rhs.cast.i1455 = ptrtoint ptr %add.ptr.i1452 to i32
  %sub.ptr.sub.i1456 = sub i32 %sub.ptr.lhs.cast.i1218.pre-phi, %sub.ptr.rhs.cast.i1455
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i1456, i32 %mul838)
  %cmp1.i1457 = icmp uge i32 %sub.ptr.sub.i1456, %mul838
  %335 = select i1 %cmp.not.i1453, i1 %cmp1.i1457, i1 false
  br i1 %335, label %do.end850, label %do.end834.do.body861_crit_edge, !prof !44

do.end834.do.body861_crit_edge:                   ; preds = %do.end834
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body861

do.end850:                                        ; preds = %do.end834
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr851 = getelementptr i8, ptr %add.ptr.i1452, i32 %mul838
  %336 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %add.ptr851, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp852 = icmp sgt i32 %333, 0
  %m_damaged = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 15
  %frombool854 = zext i1 %cmp852 to i8
  %337 = ptrtoint ptr %m_damaged to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %frombool854, ptr %m_damaged, align 1
  br label %do.body861

if.else858:                                       ; preds = %if.end816.if.else858_crit_edge, %if.end760.if.else858_crit_edge, %if.end746.if.else858_crit_edge, %if.end723.if.else858_crit_edge, %do.end709.if.else858_crit_edge
  %m_damaged859 = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 15
  %338 = ptrtoint ptr %m_damaged859 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %m_damaged859, align 1
  br label %do.body861

do.body861:                                       ; preds = %if.else858, %do.end850, %do.end834.do.body861_crit_edge, %if.then820.do.body861_crit_edge, %do.end796.do.body861_crit_edge, %do.end777.do.body861_crit_edge, %if.then764.do.body861_crit_edge, %do.body751.do.body861_crit_edge, %if.end733.do.body861_crit_edge, %do.body728.do.body861_crit_edge, %do.body714.do.body861_crit_edge, %do.end686.do.body861_crit_edge, %do.body671.do.body861_crit_edge, %do.end647.do.body861_crit_edge, %do.body632.do.body861_crit_edge, %do.end608.do.body861_crit_edge, %do.body593.do.body861_crit_edge, %do.end569.do.body861_crit_edge, %do.body555.do.body861_crit_edge, %do.end495.do.body861_crit_edge, %if.end479.do.body861_crit_edge, %if.end470.do.body861_crit_edge, %if.end461.do.body861_crit_edge, %do.body456.do.body861_crit_edge, %do.body446.do.body861_crit_edge, %do.body436.do.body861_crit_edge, %do.end15.2.i.do.body861_crit_edge, %while.body.2.i.do.body861_crit_edge, %for.inc.1.i.do.body861_crit_edge, %do.end15.1.i.do.body861_crit_edge, %while.body.1.i.do.body861_crit_edge, %for.inc.i.do.body861_crit_edge, %do.end15.i.do.body861_crit_edge, %while.body.i.do.body861_crit_edge, %if.then425.do.body861_crit_edge, %do.body406.do.body861_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mdsmap_decode, %if.then873)) #9
          to label %do.end890 [label %if.then873], !srcloc !46

if.then873:                                       ; preds = %do.body861
  call void @__sanitizer_cov_trace_pc() #11
  %339 = ptrtoint ptr %m_enabled to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %m_enabled, align 8, !range !43
  %341 = zext i8 %340 to i32
  %m_damaged881 = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 15
  %342 = ptrtoint ptr %m_damaged881 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %m_damaged881, align 1, !range !43
  %344 = zext i8 %343 to i32
  %m_num_laggy887 = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 16
  %345 = ptrtoint ptr %m_num_laggy887 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %m_num_laggy887, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mdsmap_decode.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 375, i32 noundef %341, i32 noundef %344, i32 noundef %346) #9
  br label %do.end890

do.end890:                                        ; preds = %if.then873, %do.body861
  %347 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %end.addr.1, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mdsmap_decode, %if.then903)) #9
          to label %cleanup915 [label %if.then903], !srcloc !46

if.then903:                                       ; preds = %do.end890
  call void @__sanitizer_cov_trace_pc() #11
  %348 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mdsmap_decode.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 377, i32 noundef %349) #9
  br label %cleanup915

do.end911:                                        ; preds = %do.body372.do.end911_crit_edge, %do.body352.do.end911_crit_edge, %cleanup333.do.end911_crit_edge, %cleanup333.thread, %cleanup333.thread1483, %do.body33.do.end911_crit_edge, %do.end22.do.end911_crit_edge, %if.then9.do.end911_crit_edge, %do.body.do.end911_crit_edge
  %sub.ptr.lhs.cast.pre-phi = phi i32 [ %sub.ptr.lhs.cast.i, %do.body.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %do.body33.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %do.body352.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %do.body372.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %cleanup333.thread ], [ %sub.ptr.lhs.cast.i, %if.then9.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i, %do.end22.do.end911_crit_edge ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %cleanup333.thread1483 ], [ %sub.ptr.lhs.cast.i1218.pre-phi, %cleanup333.do.end911_crit_edge ]
  %err.3 = phi i32 [ -22, %do.body.do.end911_crit_edge ], [ -22, %do.body33.do.end911_crit_edge ], [ -22, %do.body352.do.end911_crit_edge ], [ -22, %do.body372.do.end911_crit_edge ], [ -22, %cleanup333.thread ], [ -22, %if.then9.do.end911_crit_edge ], [ -22, %do.end22.do.end911_crit_edge ], [ %err.1, %cleanup333.thread1483 ], [ -22, %cleanup333.do.end911_crit_edge ]
  %call913 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.pre-phi, %sub.ptr.rhs.cast
  call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %sub.ptr.sub, i1 noundef zeroext true) #9
  br label %out_err

out_err:                                          ; preds = %do.end911, %if.then539.out_err_crit_edge, %if.end7.i.i1356.out_err_crit_edge, %kcalloc.exit1358.thread, %cleanup333.thread1480, %if.end7.i.i.out_err_crit_edge, %kcalloc.exit.thread
  %err.4 = phi i32 [ %err.3, %do.end911 ], [ -12, %if.end7.i.i1356.out_err_crit_edge ], [ -12, %if.end7.i.i.out_err_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %cleanup333.thread1480 ], [ -12, %kcalloc.exit1358.thread ], [ -12, %if.then539.out_err_crit_edge ]
  %m_info.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 10
  %350 = ptrtoint ptr %m_info.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %m_info.i, align 4
  %tobool.not.i = icmp eq ptr %351, null
  br i1 %tobool.not.i, label %out_err.ceph_mdsmap_destroy.exit_crit_edge, label %for.cond.preheader.i

out_err.ceph_mdsmap_destroy.exit_crit_edge:       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %ceph_mdsmap_destroy.exit

for.cond.preheader.i:                             ; preds = %out_err
  %possible_max_rank.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 9
  %352 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %possible_max_rank.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %cmp10.not.i = icmp eq i32 %353, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %354 = ptrtoint ptr %m_info.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %m_info.i, align 4
  %export_targets.i = getelementptr %struct.ceph_mds_info, ptr %355, i32 %i.011.i, i32 5
  %356 = ptrtoint ptr %export_targets.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %export_targets.i, align 4
  call void @kfree(ptr noundef %357) #9
  %inc.i = add nuw i32 %i.011.i, 1
  %358 = ptrtoint ptr %possible_max_rank.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %possible_max_rank.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %359
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %360 = ptrtoint ptr %m_info.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %m_info.i, align 4
  call void @kfree(ptr noundef %361) #9
  br label %ceph_mdsmap_destroy.exit

ceph_mdsmap_destroy.exit:                         ; preds = %for.end.i, %out_err.ceph_mdsmap_destroy.exit_crit_edge
  %m_data_pg_pools.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %call7.i.i, i32 0, i32 12
  %362 = ptrtoint ptr %m_data_pg_pools.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %m_data_pg_pools.i, align 4
  call void @kfree(ptr noundef %363) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  %364 = inttoptr i32 %err.4 to ptr
  br label %cleanup915

cleanup915:                                       ; preds = %ceph_mdsmap_destroy.exit, %if.then903, %do.end890, %cleanup333.cleanup915_crit_edge, %entry.cleanup915_crit_edge
  %retval.0 = phi ptr [ %364, %ceph_mdsmap_destroy.exit ], [ %call7.i.i, %if.then903 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup915_crit_edge ], [ %call7.i.i, %do.end890 ], [ undef, %cleanup333.cleanup915_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_decode_entity_addrvec(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_decode_entity_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mds_state_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_mdsmap_destroy(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_info = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %possible_max_rank = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 9
  %2 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_info, align 4
  %export_targets = getelementptr %struct.ceph_mds_info, ptr %5, i32 %i.011, i32 5
  %6 = ptrtoint ptr %export_targets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %export_targets, align 4
  tail call void @kfree(ptr noundef %7) #9
  %inc = add nuw i32 %i.011, 1
  %8 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %possible_max_rank, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_info, align 4
  tail call void @kfree(ptr noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %m_data_pg_pools = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 12
  %12 = ptrtoint ptr %m_data_pg_pools to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_data_pg_pools, align 4
  tail call void @kfree(ptr noundef %13) #9
  tail call void @kfree(ptr noundef %m) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_mdsmap_is_cluster_available(ptr nocapture noundef readonly %m) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_enabled = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 14
  %0 = ptrtoint ptr %m_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %m_enabled, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_damaged = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 15
  %2 = ptrtoint ptr %m_damaged to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_damaged, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %m_num_laggy = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 16
  %4 = ptrtoint ptr %m_num_laggy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_num_laggy, align 4
  %m_num_active_mds = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 8
  %6 = ptrtoint ptr %m_num_active_mds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_num_active_mds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %for.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  %possible_max_rank = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 9
  %8 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp621.not = icmp eq i32 %9, 0
  br i1 %cmp621.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %m_info = getelementptr inbounds %struct.ceph_mdsmap, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_info, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %nr_active.023 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.body.for.body_crit_edge ]
  %state = getelementptr %struct.ceph_mds_info, ptr %11, i32 %i.022, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %13)
  %cmp7 = icmp eq i32 %13, 13
  %inc = zext i1 %cmp7 to i32
  %spec.select = add i32 %nr_active.023, %inc
  %inc10 = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc10, %9
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp sgt i32 %spec.select, 0
  br label %cleanup

cleanup:                                          ; preds = %for.end.loopexit, %for.cond.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/mdsmap.c", i32 236, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug316, !1, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ceph/mdsmap.c", i32 243, i32 4}
!12 = !{ptr @ceph_mdsmap_decode._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ceph_mdsmap_decode._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ceph/mdsmap.c", i32 248, i32 4}
!16 = !{ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug317, !15, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ceph/mdsmap.c", i32 374, i32 2}
!20 = !{ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug318, !19, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ceph/mdsmap.c", i32 377, i32 2}
!24 = !{ptr @ceph_mdsmap_decode.__UNIQUE_ID_ddebug319, !23, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ceph/mdsmap.c", i32 383, i32 2}
!28 = !{ptr @ceph_mdsmap_decode._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ceph_mdsmap_decode._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ceph/mdsmap.c", i32 384, i32 17}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ceph/mdsmap.c", i32 384, i32 29}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2148178976, i64 2148178981, i64 2148178994, i64 2148179038, i64 2148179072, i64 2148179093}
