; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_olt.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_olt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.vxfs_olt = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, i32 }
%struct.vxfs_oltfshead = type { i32, i32, [2 x i32] }
%struct.vxfs_oltilist = type { i32, i32, [2 x i32] }
%struct.vxfs_oltcommon = type { i32, i32 }

@vxfs_read_olt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015vxfs: ivalid olt magic number\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vxfs_read_olt\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/freevxfs/vxfs_olt.c\00", [41 x i8] zeroinitializer }, align 32
@vxfs_read_olt._entry_ptr = internal global ptr @vxfs_read_olt._entry, section ".printk_index", align 4
@vxfs_read_olt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015vxfs: oltsize > 1 detected.\0A\00", [33 x i8] zeroinitializer }, align 32
@vxfs_read_olt._entry_ptr.5 = internal global ptr @vxfs_read_olt._entry.3, section ".printk_index", align 4
@vxfs_read_olt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015vxfs: please notify hch@infradead.org\0A\00", [55 x i8] zeroinitializer }, align 32
@vxfs_read_olt._entry_ptr.8 = internal global ptr @vxfs_read_olt._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 90, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 99, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [26 x i8] c"../fs/freevxfs/vxfs_olt.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 100, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @vxfs_read_olt._entry, ptr @vxfs_read_olt._entry.3, ptr @vxfs_read_olt._entry.6, ptr @vxfs_read_olt._entry_ptr, ptr @vxfs_read_olt._entry_ptr.5, ptr @vxfs_read_olt._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_olt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_olt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_olt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxfs_read_olt(ptr nocapture noundef readonly %sbp, i32 noundef %bsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %.frozen = freeze i32 %3
  %div.i = udiv i32 %.frozen, %bsize
  %4 = mul i32 %div.i, %bsize
  %rem.i.decomposed = sub i32 %.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %vxfs_oblock.exit, label %do.body3.i, !prof !23

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_olt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

vxfs_oblock.exit:                                 ; preds = %entry
  %vsi_oltext = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vsi_oltext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsi_oltext, align 4
  %mul.i = mul i32 %div.i, %6
  %conv = zext i32 %mul.i to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 26
  %7 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %8, i64 noundef %conv, i32 noundef %3, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %vxfs_oblock.exit.cleanup_crit_edge, label %lor.lhs.false

vxfs_oblock.exit.cleanup_crit_edge:               ; preds = %vxfs_oblock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %vxfs_oblock.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then.i85_crit_edge, label %if.end

lor.lhs.false.if.then.i85_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i85

if.end:                                           ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %retval.0.i = select i1 %cmp.i, i32 %12, i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1526399755, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, -1526399755
  br i1 %cmp.not, label %if.end8, label %if.end.if.then.i85.sink.split_crit_edge

if.end.if.then.i85.sink.split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i85.sink.split

if.end8:                                          ; preds = %if.end
  %vsi_oltsize = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %vsi_oltsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsi_oltsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp9 = icmp sgt i32 %17, 1
  br i1 %cmp9, label %do.end14, label %if.end22

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %if.then.i85.sink.split

if.end22:                                         ; preds = %if.end8
  %olt_size = getelementptr inbounds %struct.vxfs_olt, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %olt_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %olt_size, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %retval.0.i69 = select i1 %cmp.i, i32 %19, i32 %20
  %add.ptr = getelementptr i8, ptr %10, i32 %retval.0.i69
  %21 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i, align 16
  %mul = mul i32 %22, %17
  %add.ptr27 = getelementptr i8, ptr %10, i32 %mul
  %cmp2887 = icmp ult ptr %add.ptr, %add.ptr27
  br i1 %cmp2887, label %while.body.lr.ph, label %if.end22.brelse.exit_crit_edge

if.end22.brelse.exit_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

while.body.lr.ph:                                 ; preds = %if.end22
  %vsi_iext.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 5
  %vsi_fshino.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %oaddr.088 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr34, %sw.epilog.while.body_crit_edge ]
  %23 = ptrtoint ptr %oaddr.088 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oaddr.088, align 4
  %25 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i71 = icmp eq i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %retval.0.i72 = select i1 %cmp.i71, i32 %24, i32 %27
  %28 = zext i32 %retval.0.i72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i72, label %while.body.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb31
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %29 = ptrtoint ptr %vsi_fshino.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vsi_fshino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i73 = icmp eq i32 %30, 0
  br i1 %tobool.not.i73, label %vxfs_get_fshead.exit, label %do.body3.i74, !prof !23

do.body3.i74:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_olt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

vxfs_get_fshead.exit:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %olt_fsino.i = getelementptr inbounds %struct.vxfs_oltfshead, ptr %oaddr.088, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %while.body
  %31 = ptrtoint ptr %vsi_iext.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vsi_iext.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i75 = icmp eq i32 %32, 0
  br i1 %tobool.not.i75, label %vxfs_get_ilist.exit, label %do.body3.i76, !prof !23

do.body3.i76:                                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_olt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

vxfs_get_ilist.exit:                              ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %olt_iext.i = getelementptr inbounds %struct.vxfs_oltilist, ptr %oaddr.088, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %vxfs_get_ilist.exit, %vxfs_get_fshead.exit
  %olt_fsino.i.sink = phi ptr [ %olt_fsino.i, %vxfs_get_fshead.exit ], [ %olt_iext.i, %vxfs_get_ilist.exit ]
  %vsi_iext.i.sink = phi ptr [ %vsi_fshino.i, %vxfs_get_fshead.exit ], [ %vsi_iext.i, %vxfs_get_ilist.exit ]
  %33 = ptrtoint ptr %olt_fsino.i.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %olt_fsino.i.sink, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %retval.0.i.i79 = select i1 %cmp.i71, i32 %34, i32 %35
  %36 = ptrtoint ptr %vsi_iext.i.sink to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i79, ptr %vsi_iext.i.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.sw.epilog_crit_edge
  %olt_size32 = getelementptr inbounds %struct.vxfs_oltcommon, ptr %oaddr.088, i32 0, i32 1
  %37 = ptrtoint ptr %olt_size32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %olt_size32, align 4
  %39 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i81 = icmp eq i32 %40, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %retval.0.i82 = select i1 %cmp.i81, i32 %38, i32 %41
  %add.ptr34 = getelementptr i8, ptr %oaddr.088, i32 %retval.0.i82
  %cmp28 = icmp ult ptr %add.ptr34, %add.ptr27
  br i1 %cmp28, label %sw.epilog.while.body_crit_edge, label %sw.epilog.brelse.exit_crit_edge

sw.epilog.brelse.exit_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

brelse.exit:                                      ; preds = %sw.epilog.brelse.exit_crit_edge, %if.end22.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #4
  %vsi_fshino = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %vsi_fshino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vsi_fshino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not = icmp eq i32 %43, 0
  br i1 %tobool35.not, label %brelse.exit.cleanup_crit_edge, label %land.rhs

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  %vsi_iext = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %vsi_iext to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vsi_iext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool36.not = icmp eq i32 %45, 0
  %phi.sel = select i1 %tobool36.not, i32 -22, i32 0
  br label %cleanup

if.then.i85.sink.split:                           ; preds = %do.end14, %if.end.if.then.i85.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %do.end14 ], [ @.str, %if.end.if.then.i85.sink.split_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #7
  br label %if.then.i85

if.then.i85:                                      ; preds = %if.then.i85.sink.split, %lor.lhs.false.if.then.i85_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i85, %land.rhs, %brelse.exit.cleanup_crit_edge, %vxfs_oblock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %brelse.exit.cleanup_crit_edge ], [ %phi.sel, %land.rhs ], [ -22, %vxfs_oblock.exit.cleanup_crit_edge ], [ -22, %if.then.i85 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_olt.c", i32 90, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vxfs_read_olt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vxfs_read_olt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/freevxfs/vxfs_olt.c", i32 99, i32 3}
!8 = !{ptr @vxfs_read_olt._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vxfs_read_olt._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/freevxfs/vxfs_olt.c", i32 100, i32 3}
!12 = !{ptr @vxfs_read_olt._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @vxfs_read_olt._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2153822807, i64 2153823293, i64 2153822844, i64 2153822900, i64 2153822934, i64 2153822958, i64 2153822999, i64 2153823020, i64 2153823048, i64 2153823082}
!25 = !{i64 2153819269, i64 2153819755, i64 2153819306, i64 2153819362, i64 2153819396, i64 2153819420, i64 2153819461, i64 2153819482, i64 2153819510, i64 2153819544}
!26 = !{i64 2153821028, i64 2153821514, i64 2153821065, i64 2153821121, i64 2153821155, i64 2153821179, i64 2153821220, i64 2153821241, i64 2153821269, i64 2153821303}
