; ModuleID = '/llk/IR_all_yes/net/rds/ib_ring.c_pt.bc'
source_filename = "../net/rds/ib_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rds_ib_ring_empty_wait.lock\00", [36 x i8] zeroinitializer }, align 32
@rds_ib_ring_empty_wait = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @rds_ib_ring_empty_wait, i64 44), ptr getelementptr (i8, ptr @rds_ib_ring_empty_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@rds_ib_ring_init.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_ib_ring_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/ib_ring.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): ring %p nr %u\0A\00", [43 x i8] zeroinitializer }, align 32
@rds_ib_ring_alloc.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_ib_ring_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): ring %p val %u next %u free %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_ib_ring_completed.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_ib_ring_completed\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): ring %p ret %u wr_id %u oldest %u\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"rds_ib_ring_empty_wait\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 64, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 70, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 103, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [21 x i8] c"../net/rds/ib_ring.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 165, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @rds_ib_ring_empty_wait, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_ring_empty_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_ring_init(ptr noundef %ring, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ring, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nr, ptr %ring, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_ring_init.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_ring_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_ring_init.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %ring, i32 noundef %4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_ring_resize(ptr noundef %ring, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_alloc_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %w_alloc_ctr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_alloc_ctr.i, align 4
  %w_free_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %w_free_ctr.i, i32 noundef 4) #6
  %2 = ptrtoint ptr %w_free_ctr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %w_free_ctr.i, align 4
  %sub.i = sub i32 %1, %3
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.i = icmp ugt i32 %sub.i, %5
  br i1 %cmp.i, label %do.body2.i, label %__rds_ib_ring_used.exit, !prof !27

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

__rds_ib_ring_used.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !29

do.body3:                                         ; preds = %__rds_ib_ring_used.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end6:                                          ; preds = %__rds_ib_ring_used.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr, ptr %ring, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_ring_alloc(ptr noundef %ring, i32 noundef %val, ptr nocapture noundef writeonly %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 4
  %w_alloc_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %w_alloc_ctr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %w_alloc_ctr.i, align 4
  %w_free_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %w_free_ctr.i, i32 noundef 4) #6
  %4 = ptrtoint ptr %w_free_ctr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %w_free_ctr.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp.i = icmp ugt i32 %sub.i, %7
  br i1 %cmp.i, label %do.body2.i, label %__rds_ib_ring_used.exit, !prof !27

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

__rds_ib_ring_used.exit:                          ; preds = %entry
  %sub = sub i32 %1, %sub.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_ring_alloc.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_ring_alloc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !26

if.then:                                          ; preds = %__rds_ib_ring_used.exit
  call void @__sanitizer_cov_trace_pc() #8
  %w_alloc_ptr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 1
  %8 = ptrtoint ptr %w_alloc_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w_alloc_ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_ring_alloc.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %ring, i32 noundef %val, i32 noundef %9, i32 noundef %sub) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %__rds_ib_ring_used.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool4.not = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %tobool5.not = icmp eq i32 %1, %sub.i
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.end.if.end13_crit_edge, label %if.then6

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %val)
  %w_alloc_ptr8 = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 1
  %11 = ptrtoint ptr %w_alloc_ptr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %w_alloc_ptr8, align 4
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pos, align 4
  %14 = load i32, ptr %w_alloc_ptr8, align 4
  %add = add i32 %14, %10
  %15 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring, align 4
  %rem = urem i32 %add, %16
  store i32 %rem, ptr %w_alloc_ptr8, align 4
  %17 = ptrtoint ptr %w_alloc_ctr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %w_alloc_ctr.i, align 4
  %add12 = add i32 %18, %10
  store i32 %add12, ptr %w_alloc_ctr.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %do.end.if.end13_crit_edge
  %ret.0 = phi i32 [ %10, %if.then6 ], [ 0, %do.end.if.end13_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_ring_free(ptr noundef %ring, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_free_ptr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %w_free_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_free_ptr, align 4
  %add = add i32 %1, %val
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 4
  %rem = urem i32 %add, %3
  store i32 %rem, ptr %w_free_ptr, align 4
  %w_free_ctr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %w_free_ctr, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %w_free_ctr, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %w_free_ctr, ptr %w_free_ctr, i32 %val, ptr elementtype(i32) %w_free_ctr) #6, !srcloc !31
  %w_alloc_ctr.i.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %5 = ptrtoint ptr %w_alloc_ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %w_alloc_ctr.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %w_free_ctr, i32 noundef 4) #6
  %7 = ptrtoint ptr %w_free_ctr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %w_free_ctr, align 4
  %sub.i.i = sub i32 %6, %8
  %9 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %10)
  %cmp.i.i = icmp ugt i32 %sub.i.i, %10
  br i1 %cmp.i.i, label %do.body2.i.i, label %__rds_ib_ring_empty.exit, !prof !27

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

__rds_ib_ring_empty.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i.not = icmp eq i32 %6, %8
  br i1 %cmp.i.not, label %land.lhs.true, label %__rds_ib_ring_empty.exit.if.end_crit_edge

__rds_ib_ring_empty.exit.if.end_crit_edge:        ; preds = %__rds_ib_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %__rds_ib_ring_empty.exit
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i9.not = icmp eq ptr %11, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %__rds_ib_ring_empty.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rds_ib_ring_unalloc(ptr nocapture noundef %ring, i32 noundef %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_alloc_ptr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %w_alloc_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_alloc_ptr, align 4
  %sub = sub i32 %1, %val
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 4
  %rem = urem i32 %sub, %3
  store i32 %rem, ptr %w_alloc_ptr, align 4
  %w_alloc_ctr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %w_alloc_ctr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %w_alloc_ctr, align 4
  %sub2 = sub i32 %5, %val
  store i32 %sub2, ptr %w_alloc_ctr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_ring_empty(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_alloc_ctr.i.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %w_alloc_ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_alloc_ctr.i.i, align 4
  %w_free_ctr.i.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %w_free_ctr.i.i, i32 noundef 4) #6
  %2 = ptrtoint ptr %w_free_ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %w_free_ctr.i.i, align 4
  %sub.i.i = sub i32 %1, %3
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %5)
  %cmp.i.i = icmp ugt i32 %sub.i.i, %5
  br i1 %cmp.i.i, label %do.body2.i.i, label %__rds_ib_ring_empty.exit, !prof !27

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

__rds_ib_ring_empty.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_ring_low(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_alloc_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %w_alloc_ctr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_alloc_ctr.i, align 4
  %w_free_ctr.i = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %w_free_ctr.i, i32 noundef 4) #6
  %2 = ptrtoint ptr %w_free_ctr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %w_free_ctr.i, align 4
  %sub.i = sub i32 %1, %3
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.i = icmp ugt i32 %sub.i, %5
  br i1 %cmp.i, label %do.body2.i, label %__rds_ib_ring_used.exit, !prof !27

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

__rds_ib_ring_used.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr)
  %cmp = icmp ule i32 %sub.i, %shr
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_ib_ring_oldest(ptr nocapture noundef readonly %ring) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %w_free_ptr = getelementptr inbounds %struct.rds_ib_work_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %w_free_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_free_ptr, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_ring_completed(ptr noundef %ring, i32 noundef %wr_id, i32 noundef %oldest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %wr_id, i32 %oldest)
  %cmp.not = icmp ult i32 %wr_id, %oldest
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %wr_id, %oldest
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 4
  %sub6 = sub i32 %wr_id, %oldest
  %add9 = add i32 %sub6, %1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %ret.0.in = phi i32 [ %sub, %if.then ], [ %add9, %if.else ]
  %ret.0 = add i32 %ret.0.in, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_ring_completed.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_ring_completed, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !26

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_ring_completed.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef %ring, i32 noundef %ret.0, i32 noundef %wr_id, i32 noundef %oldest) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_ring.c", i32 64, i32 1}
!2 = !{ptr @rds_ib_ring_empty_wait, !1, !"rds_ib_ring_empty_wait", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/rds/ib_ring.c", i32 70, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rds_ib_ring_init.__UNIQUE_ID_ddebug546, !4, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/rds/ib_ring.c", i32 103, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rds_ib_ring_alloc.__UNIQUE_ID_ddebug547, !10, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rds/ib_ring.c", i32 165, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rds_ib_ring_completed.__UNIQUE_ID_ddebug550, !14, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148694518, i64 2148694523, i64 2148694536, i64 2148694580, i64 2148694614, i64 2148694635}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2158539828, i64 2158540309, i64 2158539865, i64 2158539921, i64 2158539955, i64 2158539979, i64 2158540020, i64 2158540041, i64 2158540069, i64 2158540103}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2158541423, i64 2158541904, i64 2158541460, i64 2158541516, i64 2158541550, i64 2158541574, i64 2158541615, i64 2158541636, i64 2158541664, i64 2158541698}
!31 = !{i64 2148212703, i64 2148212729, i64 2148212758, i64 2148212792, i64 2148212823, i64 2148212846}
