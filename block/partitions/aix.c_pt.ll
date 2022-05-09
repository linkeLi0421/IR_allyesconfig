; ModuleID = '/llk/IR_all_yes/block/partitions/aix.c_pt.bc'
source_filename = "../block/partitions/aix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.lvm_rec = type { [4 x i8], [16 x i8], i32, i32, [2 x i32], [10 x i8], i16, [12 x i8], i16 }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.vgda = type { i32, i32, [16 x i8], i16, i16, i16, i16, i16, i16 }
%struct.lvd = type { i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16] }
%struct.lv_info = type { i16, i16, i8 }
%struct.pvd = type { [16 x i8], i16, [2 x i8], i32, [8 x i8], [1016 x %struct.ppe] }
%struct.ppe = type { i16, i16, i16, i16, [12 x i16] }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.lvname = type { [64 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" AIX LVM header version %u found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" unsupported AIX LVM version %d found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" <%s>\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@aix_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014partition %s (%u pp's found) is not contiguous\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aix_partition\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/partitions/aix.c\00", [41 x i8] zeroinitializer }, align 32
@aix_partition._entry_ptr = internal global ptr @aix_partition._entry, section ".printk_index", align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 184, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 190, i32 5 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 259, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 272, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private constant [26 x i8] c"../block/partitions/aix.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 273, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 717, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 45, i32 30 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @aix_partition._entry, ptr @aix_partition._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aix_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aix_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [64 x i8], align 1
  %tmp102 = alloca [70 x i8], align 1
  %tmp142 = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !27
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 7, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then:                                          ; preds = %entry
  %version = getelementptr inbounds %struct.lvm_rec, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %version, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #9
  %3 = call ptr @memset(ptr %tmp, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp = icmp eq i16 %2, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pp_size = getelementptr inbounds %struct.lvm_rec, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %pp_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pp_size, align 2
  %conv3 = zext i16 %5 to i32
  %shl = shl nuw i32 1, %conv3
  %div246 = lshr i32 %shl, 9
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str, i32 noundef 1)
  %vgda_len6 = getelementptr inbounds %struct.lvm_rec, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %vgda_len6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vgda_len6, align 4
  %vgda_psn = getelementptr inbounds %struct.lvm_rec, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %vgda_psn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vgda_psn, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %2 to i32
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %pp_blocks_size.0 = phi i32 [ %div246, %if.then2 ], [ 0, %if.else ]
  %vgda_sector.0 = phi i32 [ %9, %if.then2 ], [ 0, %if.else ]
  %vgda_len.0 = phi i32 [ %7, %if.then2 ], [ 0, %if.else ]
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %10 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp_buf, align 4
  %call11 = call i32 @strlcat(ptr noundef %11, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  %12 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %sect, align 4
  %13 = inttoptr i32 %.fca.0.load to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !28

if.end._compound_head.exit.i.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %16, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %13, %if.end._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !29

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aix_partition, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !34

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end12_crit_edge

folio_put_testzero.exit.i.i.i.if.end12_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vgda_sector.0)
  %tobool13.not = icmp eq i32 %vgda_sector.0, 0
  br i1 %tobool13.not, label %if.end12.if.end22_crit_edge, label %land.lhs.true

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end12
  %conv14 = zext i32 %vgda_sector.0 to i64
  %call15 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv14, ptr noundef nonnull %sect) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  %numlvs19 = getelementptr inbounds %struct.vgda, ptr %call15, i32 0, i32 3
  %20 = ptrtoint ptr %numlvs19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %numlvs19, align 4
  %22 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.0.load230 = load i32, ptr %sect, align 4
  %23 = inttoptr i32 %.fca.0.load230 to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i247 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i247)
  %tobool.not.i.i.i248 = icmp eq i32 %and.i.i.i247, 0
  br i1 %tobool.not.i.i.i248, label %if.then17._compound_head.exit.i.i256_crit_edge, label %if.then.i.i.i251, !prof !28

if.then17._compound_head.exit.i.i256_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i256

if.then.i.i.i251:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i249 = add i32 %26, -1
  %.pre.i250 = inttoptr i32 %sub.i.i.i249 to ptr
  br label %_compound_head.exit.i.i256

_compound_head.exit.i.i256:                       ; preds = %if.then.i.i.i251, %if.then17._compound_head.exit.i.i256_crit_edge
  %.pre-phi.i252 = phi ptr [ %23, %if.then17._compound_head.exit.i.i256_crit_edge ], [ %.pre.i250, %if.then.i.i.i251 ]
  %_refcount.i.i.i.i.i.i253 = getelementptr inbounds %struct.page, ptr %.pre-phi.i252, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i254 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i253, i32 noundef 4) #9
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i.i255 = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i.i255, label %if.then.i.i.i.i.i257, label %do.end5.i.i.i.i.i261, !prof !29

if.then.i.i.i.i.i257:                             ; preds = %_compound_head.exit.i.i256
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i252, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

do.end5.i.i.i.i.i261:                             ; preds = %_compound_head.exit.i.i256
  %call.i.i.i10.i.i.i.i.i258 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i253, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i253, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i253, ptr %_refcount.i.i.i.i.i.i253, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i253) #9, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i.i259 = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i259)
  %cmp.i.i.i.i.i.i.i.i260 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i259, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aix_partition, %if.then.i.i.i.i.i.i263)) #9
          to label %folio_put_testzero.exit.i.i.i264 [label %if.then.i.i.i.i.i.i263], !srcloc !34

if.then.i.i.i.i.i.i263:                           ; preds = %do.end5.i.i.i.i.i261
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i262 = zext i1 %cmp.i.i.i.i.i.i.i.i260 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i252, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i262) #9
  br label %folio_put_testzero.exit.i.i.i264

folio_put_testzero.exit.i.i.i264:                 ; preds = %if.then.i.i.i.i.i.i263, %do.end5.i.i.i.i.i261
  br i1 %cmp.i.i.i.i.i.i.i.i260, label %if.then.i4.i.i265, label %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge

folio_put_testzero.exit.i.i.i264.if.end22_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then.i4.i.i265:                                ; preds = %folio_put_testzero.exit.i.i.i264
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i252) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then.i4.i.i265, %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end12.if.end22_crit_edge, %entry.if.end22_crit_edge
  %vgda_len.1304 = phi i32 [ %vgda_len.0, %land.lhs.true.if.end22_crit_edge ], [ %vgda_len.0, %if.end12.if.end22_crit_edge ], [ %vgda_len.0, %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge ], [ %vgda_len.0, %if.then.i4.i.i265 ], [ 0, %entry.if.end22_crit_edge ]
  %vgda_sector.1303 = phi i32 [ %vgda_sector.0, %land.lhs.true.if.end22_crit_edge ], [ 0, %if.end12.if.end22_crit_edge ], [ %vgda_sector.0, %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge ], [ %vgda_sector.0, %if.then.i4.i.i265 ], [ 0, %entry.if.end22_crit_edge ]
  %pp_blocks_size.1302 = phi i32 [ %pp_blocks_size.0, %land.lhs.true.if.end22_crit_edge ], [ %pp_blocks_size.0, %if.end12.if.end22_crit_edge ], [ %pp_blocks_size.0, %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge ], [ %pp_blocks_size.0, %if.then.i4.i.i265 ], [ 0, %entry.if.end22_crit_edge ]
  %numlvs.0.shrunk = phi i16 [ 0, %land.lhs.true.if.end22_crit_edge ], [ 0, %if.end12.if.end22_crit_edge ], [ %21, %folio_put_testzero.exit.i.i.i264.if.end22_crit_edge ], [ %21, %if.then.i4.i.i265 ], [ 0, %entry.if.end22_crit_edge ]
  %numlvs.0 = zext i16 %numlvs.0.shrunk to i32
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %30 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %limit, align 4
  %32 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 6) #9
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %if.end22.cleanup159_crit_edge, label %if.end7.i.i, !prof !29

if.end22.cleanup159_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup159

if.end7.i.i:                                      ; preds = %if.end22
  %34 = extractvalue { i32, i1 } %32, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #12
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.cleanup159_crit_edge, label %if.end26

if.end7.i.i.cleanup159_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup159

if.end26:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numlvs.0.shrunk)
  %tobool27.not = icmp eq i16 %numlvs.0.shrunk, 0
  br i1 %tobool27.not, label %if.end26.if.end158_crit_edge, label %land.lhs.true28

if.end26.if.end158_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

land.lhs.true28:                                  ; preds = %if.end26
  %add = add i32 %vgda_sector.1303, 1
  %conv29 = zext i32 %add to i64
  %call30 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv29, ptr noundef nonnull %sect) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %land.lhs.true28.if.end158_crit_edge, label %if.then32

land.lhs.true28.if.end158_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then32:                                        ; preds = %land.lhs.true28
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i, label %if.then32.if.end54_crit_edge, label %if.end.i

if.then32.if.end54_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end.i:                                         ; preds = %if.then32
  %add34 = add i32 %vgda_len.1304, -33
  %sub = add i32 %add34, %vgda_sector.1303
  %conv.i = zext i32 %sub to i64
  %call1.i = call fastcc i32 @read_lba(ptr noundef %state, i64 noundef %conv.i, ptr noundef nonnull %call1.i.i.i, i32 noundef 16384) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call1.i)
  %cmp.i = icmp ult i32 %call1.i, 16384
  br i1 %cmp.i, label %if.end.i.if.end54.sink.split_crit_edge, label %land.rhs.preheader

if.end.i.if.end54.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

land.rhs.preheader:                               ; preds = %if.end.i
  %35 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %foundlvs.0321 = phi i32 [ %spec.select, %for.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %i.0320 = phi i32 [ %add51, %for.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0320, i32 %36)
  %cmp41 = icmp slt i32 %i.0320, %36
  br i1 %cmp41, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %num_lps = getelementptr %struct.lvd, ptr %call30, i32 %i.0320, i32 7
  %37 = ptrtoint ptr %num_lps to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_lps, align 2
  %arrayidx44 = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %i.0320
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool47.not = icmp ne i16 %38, 0
  %add49 = zext i1 %tobool47.not to i32
  %spec.select = add nuw nsw i32 %foundlvs.0321, %add49
  %add51 = add nuw nsw i32 %i.0320, 1
  %cmp38 = icmp ult i32 %spec.select, %numlvs.0
  br i1 %cmp38, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %call1.i.i.i268 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32544, i32 noundef 3264, i32 noundef 3) #12
  %tobool.not.i269 = icmp eq ptr %call1.i.i.i268, null
  br i1 %tobool.not.i269, label %for.end.if.end54_crit_edge, label %if.end.i273

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end.i273:                                      ; preds = %for.end
  %add52 = add i32 %vgda_sector.1303, 17
  %conv.i270 = zext i32 %add52 to i64
  %call1.i271 = call fastcc i32 @read_lba(ptr noundef %state, i64 noundef %conv.i270, ptr noundef nonnull %call1.i.i.i268, i32 noundef 32544) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32544, i32 %call1.i271)
  %cmp.i272 = icmp ult i32 %call1.i271, 32544
  br i1 %cmp.i272, label %if.end.i273.if.end54.sink.split_crit_edge, label %if.end.i273.if.end54_crit_edge

if.end.i273.if.end54_crit_edge:                   ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end.i273.if.end54.sink.split_crit_edge:        ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.end.i273.if.end54.sink.split_crit_edge, %if.end.i.if.end54.sink.split_crit_edge
  %call1.i.i.i.sink = phi ptr [ %call1.i.i.i, %if.end.i.if.end54.sink.split_crit_edge ], [ %call1.i.i.i268, %if.end.i273.if.end54.sink.split_crit_edge ]
  %retval.0.i314.ph = phi ptr [ null, %if.end.i.if.end54.sink.split_crit_edge ], [ %call1.i.i.i, %if.end.i273.if.end54.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i.sink) #9
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.end.i273.if.end54_crit_edge, %for.end.if.end54_crit_edge, %if.then32.if.end54_crit_edge
  %retval.0.i314 = phi ptr [ %call1.i.i.i, %for.end.if.end54_crit_edge ], [ %call1.i.i.i, %if.end.i273.if.end54_crit_edge ], [ null, %if.then32.if.end54_crit_edge ], [ %retval.0.i314.ph, %if.end54.sink.split ]
  %pvd.0 = phi ptr [ null, %for.end.if.end54_crit_edge ], [ %call1.i.i.i268, %if.end.i273.if.end54_crit_edge ], [ null, %if.then32.if.end54_crit_edge ], [ null, %if.end54.sink.split ]
  %40 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.0.load233 = load i32, ptr %sect, align 4
  %41 = inttoptr i32 %.fca.0.load233 to ptr
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i.i276 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i276)
  %tobool.not.i.i.i277 = icmp eq i32 %and.i.i.i276, 0
  br i1 %tobool.not.i.i.i277, label %if.end54._compound_head.exit.i.i285_crit_edge, label %if.then.i.i.i280, !prof !28

if.end54._compound_head.exit.i.i285_crit_edge:    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i285

if.then.i.i.i280:                                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i278 = add i32 %44, -1
  %.pre.i279 = inttoptr i32 %sub.i.i.i278 to ptr
  br label %_compound_head.exit.i.i285

_compound_head.exit.i.i285:                       ; preds = %if.then.i.i.i280, %if.end54._compound_head.exit.i.i285_crit_edge
  %.pre-phi.i281 = phi ptr [ %41, %if.end54._compound_head.exit.i.i285_crit_edge ], [ %.pre.i279, %if.then.i.i.i280 ]
  %_refcount.i.i.i.i.i.i282 = getelementptr inbounds %struct.page, ptr %.pre-phi.i281, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i283 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i282, i32 noundef 4) #9
  %45 = ptrtoint ptr %_refcount.i.i.i.i.i.i282 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %_refcount.i.i.i.i.i.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i.i284 = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i.i284, label %if.then.i.i.i.i.i286, label %do.end5.i.i.i.i.i290, !prof !29

if.then.i.i.i.i.i286:                             ; preds = %_compound_head.exit.i.i285
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i281, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

do.end5.i.i.i.i.i290:                             ; preds = %_compound_head.exit.i.i285
  %call.i.i.i10.i.i.i.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i282, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i282, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i282, ptr %_refcount.i.i.i.i.i.i282, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i282) #9, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i.i288 = extractvalue { i32, i32 } %47, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i288)
  %cmp.i.i.i.i.i.i.i.i289 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i288, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aix_partition, %if.then.i.i.i.i.i.i292)) #9
          to label %folio_put_testzero.exit.i.i.i293 [label %if.then.i.i.i.i.i.i292], !srcloc !34

if.then.i.i.i.i.i.i292:                           ; preds = %do.end5.i.i.i.i.i290
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i291 = zext i1 %cmp.i.i.i.i.i.i.i.i289 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i281, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i291) #9
  br label %folio_put_testzero.exit.i.i.i293

folio_put_testzero.exit.i.i.i293:                 ; preds = %if.then.i.i.i.i.i.i292, %do.end5.i.i.i.i.i290
  br i1 %cmp.i.i.i.i.i.i.i.i289, label %if.then.i4.i.i294, label %folio_put_testzero.exit.i.i.i293.if.end56_crit_edge

folio_put_testzero.exit.i.i.i293.if.end56_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then.i4.i.i294:                                ; preds = %folio_put_testzero.exit.i.i.i293
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i281) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then.i4.i.i294, %folio_put_testzero.exit.i.i.i293.if.end56_crit_edge
  %tobool57.not = icmp eq ptr %pvd.0, null
  br i1 %tobool57.not, label %if.end56.if.end158_crit_edge, label %if.then58

if.end56.if.end158_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then58:                                        ; preds = %if.end56
  %pp_count = getelementptr inbounds %struct.pvd, ptr %pvd.0, i32 0, i32 1
  %48 = ptrtoint ptr %pp_count to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pp_count, align 16
  %conv59 = zext i16 %49 to i32
  %psn_part160 = getelementptr inbounds %struct.pvd, ptr %pvd.0, i32 0, i32 3
  %50 = ptrtoint ptr %psn_part160 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %psn_part160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp63322.not = icmp eq i16 %49, 0
  br i1 %cmp63322.not, label %if.then58.for.cond128.preheader_crit_edge, label %for.body65.lr.ph

if.then58.for.cond128.preheader_crit_edge:        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond128.preheader

for.body65.lr.ph:                                 ; preds = %if.then58
  %ppe = getelementptr inbounds %struct.pvd, ptr %pvd.0, i32 0, i32 5
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body65

for.cond128.preheader:                            ; preds = %cleanup.for.cond128.preheader_crit_edge, %if.then58.for.cond128.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.then58.for.cond128.preheader_crit_edge ], [ %ret.2, %cleanup.for.cond128.preheader_crit_edge ]
  %52 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp130329 = icmp sgt i32 %53, 0
  br i1 %cmp130329, label %for.cond128.preheader.for.body132_crit_edge, label %for.cond128.preheader.for.end157_crit_edge

for.cond128.preheader.for.end157_crit_edge:       ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end157

for.cond128.preheader.for.body132_crit_edge:      ; preds = %for.cond128.preheader
  br label %for.body132

for.body65:                                       ; preds = %cleanup.for.body65_crit_edge, %for.body65.lr.ph
  %next_lp_ix.0328 = phi i32 [ 1, %for.body65.lr.ph ], [ %next_lp_ix.3, %cleanup.for.body65_crit_edge ]
  %cur_lv_ix.0327 = phi i32 [ -1, %for.body65.lr.ph ], [ %cur_lv_ix.2, %cleanup.for.body65_crit_edge ]
  %i61.0324 = phi i32 [ 0, %for.body65.lr.ph ], [ %add126, %cleanup.for.body65_crit_edge ]
  %ret.0323 = phi i32 [ 0, %for.body65.lr.ph ], [ %ret.2, %cleanup.for.body65_crit_edge ]
  %lp_ix68 = getelementptr %struct.ppe, ptr %ppe, i32 %i61.0324, i32 3
  %54 = ptrtoint ptr %lp_ix68 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %lp_ix68, align 2
  %conv69 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool70.not = icmp eq i16 %55, 0
  br i1 %tobool70.not, label %for.body65.cleanup_crit_edge, label %if.end72

for.body65.cleanup_crit_edge:                     ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %for.body65
  %add.ptr = getelementptr %struct.ppe, ptr %ppe, i32 %i61.0324
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr, align 32
  %conv74 = zext i16 %57 to i32
  %sub75 = add nsw i32 %conv74, -1
  %58 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %59)
  %cmp77.not = icmp ult i32 %sub75, %59
  br i1 %cmp77.not, label %if.end80, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %if.end72
  %arrayidx81 = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %sub75
  %pps_found = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %sub75, i32 1
  %60 = ptrtoint ptr %pps_found to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pps_found, align 2
  %add83 = add i16 %61, 1
  store i16 %add83, ptr %pps_found, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp85 = icmp eq i16 %55, 1
  br i1 %cmp85, label %if.end80.if.end95_crit_edge, label %if.else88

if.end80.if.end95_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.else88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %cur_lv_ix.0327)
  %cmp89.not = icmp eq i32 %sub75, %cur_lv_ix.0327
  call void @__sanitizer_cov_trace_cmp4(i32 %next_lp_ix.0328, i32 %conv69)
  %cmp91.not = icmp eq i32 %next_lp_ix.0328, %conv69
  %or.cond = select i1 %cmp89.not, i1 %cmp91.not, i1 false
  br i1 %or.cond, label %if.else88.if.end95_crit_edge, label %if.else88.cleanup_crit_edge

if.else88.cleanup_crit_edge:                      ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else88.if.end95_crit_edge:                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end95:                                         ; preds = %if.else88.if.end95_crit_edge, %if.end80.if.end95_crit_edge
  %cur_lv_ix.1 = phi i32 [ %sub75, %if.end80.if.end95_crit_edge ], [ %cur_lv_ix.0327, %if.else88.if.end95_crit_edge ]
  %next_lp_ix.1 = phi i32 [ 1, %if.end80.if.end95_crit_edge ], [ %next_lp_ix.0328, %if.else88.if.end95_crit_edge ]
  %62 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx81, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %63)
  %cmp99 = icmp eq i16 %55, %63
  br i1 %cmp99, label %if.then101, label %if.else121

if.then101:                                       ; preds = %if.end95
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %tmp102) #9
  %64 = call ptr @memset(ptr %tmp102, i32 255, i32 70)
  %65 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv74)
  %cmp.i296 = icmp sgt i32 %66, %conv74
  br i1 %cmp.i296, label %if.then.i, label %if.then101.put_partition.exit_crit_edge

if.then101.put_partition.exit_crit_edge:          ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %mul111 = mul i32 %pp_blocks_size.1302, %conv69
  %conv112 = zext i32 %mul111 to i64
  %add104 = add nuw nsw i32 %i61.0324, 1
  %sub105 = sub nsw i32 %add104, %conv69
  %mul = mul i32 %sub105, %pp_blocks_size.1302
  %add106 = add i32 %mul, %51
  %conv107 = zext i32 %add106 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %67 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %68 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %69, i32 %conv74
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv107, ptr %arrayidx.i, align 8
  %71 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %71, i32 %conv74, i32 1
  %72 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv112, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %conv74) #9
  %73 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %74, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then101.put_partition.exit_crit_edge
  %arrayidx114 = getelementptr %struct.lvname, ptr %retval.0.i314, i32 %sub75
  %call116 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp102, i32 noundef 70, ptr noundef nonnull @.str.2, ptr noundef %arrayidx114)
  %75 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pp_buf.i, align 4
  %call119 = call i32 @strlcat(ptr noundef %76, ptr noundef nonnull %tmp102, i32 noundef 4096) #9
  %lv_is_contiguous = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %sub75, i32 2
  %77 = ptrtoint ptr %lv_is_contiguous to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %lv_is_contiguous, align 2
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %tmp102) #9
  br label %cleanup

if.else121:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %add122 = add i32 %next_lp_ix.1, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else121, %put_partition.exit, %if.else88.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %for.body65.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.0323, %for.body65.cleanup_crit_edge ], [ %ret.0323, %if.end72.cleanup_crit_edge ], [ %ret.0323, %if.else88.cleanup_crit_edge ], [ 1, %put_partition.exit ], [ %ret.0323, %if.else121 ]
  %cur_lv_ix.2 = phi i32 [ %cur_lv_ix.0327, %for.body65.cleanup_crit_edge ], [ -1, %if.end72.cleanup_crit_edge ], [ %cur_lv_ix.0327, %if.else88.cleanup_crit_edge ], [ %cur_lv_ix.1, %put_partition.exit ], [ %cur_lv_ix.1, %if.else121 ]
  %next_lp_ix.3 = phi i32 [ 1, %for.body65.cleanup_crit_edge ], [ %next_lp_ix.0328, %if.end72.cleanup_crit_edge ], [ 1, %if.else88.cleanup_crit_edge ], [ 1, %put_partition.exit ], [ %add122, %if.else121 ]
  %add126 = add nuw nsw i32 %i61.0324, 1
  %exitcond.not = icmp eq i32 %add126, %conv59
  br i1 %exitcond.not, label %cleanup.for.cond128.preheader_crit_edge, label %cleanup.for.body65_crit_edge

cleanup.for.body65_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

cleanup.for.cond128.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond128.preheader

for.body132:                                      ; preds = %for.inc155.for.body132_crit_edge, %for.cond128.preheader.for.body132_crit_edge
  %i61.1330 = phi i32 [ %add156, %for.inc155.for.body132_crit_edge ], [ 0, %for.cond128.preheader.for.body132_crit_edge ]
  %pps_found134 = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %i61.1330, i32 1
  %78 = ptrtoint ptr %pps_found134 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pps_found134, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool136.not = icmp eq i16 %79, 0
  br i1 %tobool136.not, label %for.body132.for.inc155_crit_edge, label %land.lhs.true137

for.body132.for.inc155_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc155

land.lhs.true137:                                 ; preds = %for.body132
  %lv_is_contiguous139 = getelementptr %struct.lv_info, ptr %call8.i.i, i32 %i61.1330, i32 2
  %80 = ptrtoint ptr %lv_is_contiguous139 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %lv_is_contiguous139, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool140.not = icmp eq i8 %81, 0
  br i1 %tobool140.not, label %if.then141, label %land.lhs.true137.for.inc155_crit_edge

land.lhs.true137.for.inc155_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc155

if.then141:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %tmp142) #9
  %82 = call ptr @memset(ptr %tmp142, i32 255, i32 65)
  %arrayidx144 = getelementptr %struct.lvname, ptr %retval.0.i314, i32 %i61.1330
  %call147 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp142, i32 noundef 65, ptr noundef nonnull @.str.3, ptr noundef %arrayidx144)
  %83 = ptrtoint ptr %pps_found134 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %pps_found134, align 2
  %conv152 = zext i16 %84 to i32
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %tmp142, i32 noundef %conv152) #13
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %tmp142) #9
  br label %for.inc155

for.inc155:                                       ; preds = %if.then141, %land.lhs.true137.for.inc155_crit_edge, %for.body132.for.inc155_crit_edge
  %add156 = add nuw nsw i32 %i61.1330, 1
  %85 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %limit, align 4
  %cmp130 = icmp slt i32 %add156, %86
  br i1 %cmp130, label %for.inc155.for.body132_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end157

for.inc155.for.body132_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body132

for.end157:                                       ; preds = %for.inc155.for.end157_crit_edge, %for.cond128.preheader.for.end157_crit_edge
  call void @kfree(ptr noundef nonnull %pvd.0) #9
  br label %if.end158

if.end158:                                        ; preds = %for.end157, %if.end56.if.end158_crit_edge, %land.lhs.true28.if.end158_crit_edge, %if.end26.if.end158_crit_edge
  %n.0318 = phi ptr [ %retval.0.i314, %for.end157 ], [ %retval.0.i314, %if.end56.if.end158_crit_edge ], [ null, %land.lhs.true28.if.end158_crit_edge ], [ null, %if.end26.if.end158_crit_edge ]
  %ret.3 = phi i32 [ %ret.0.lcssa, %for.end157 ], [ 0, %if.end56.if.end158_crit_edge ], [ 0, %land.lhs.true28.if.end158_crit_edge ], [ 0, %if.end26.if.end158_crit_edge ]
  call void @kfree(ptr noundef %n.0318) #9
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup159

cleanup159:                                       ; preds = %if.end158, %if.end7.i.i.cleanup159_crit_edge, %if.end22.cleanup159_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.end158 ], [ 0, %if.end7.i.i.cleanup159_crit_edge ], [ 0, %if.end22.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_lba(ptr noundef %state, i64 noundef %lba, ptr noundef writeonly %buffer, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %lor.lhs.false

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

lor.lhs.false:                                    ; preds = %entry
  %div30 = lshr i32 %count, 9
  %conv = zext i32 %div30 to i64
  %add = add i64 %conv, %lba
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %sub = add i64 %5, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %sub)
  %cmp = icmp ugt i64 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not38 = icmp eq i32 %count, 0
  %or.cond = or i1 %cmp, %tobool2.not38
  br i1 %or.cond, label %lor.lhs.false.cleanup15_crit_edge, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  br label %while.body

lor.lhs.false.cleanup15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge
  %totalreadcount.042 = phi i32 [ %add11, %cleanup.while.body_crit_edge ], [ 0, %lor.lhs.false.while.body_crit_edge ]
  %count.addr.041 = phi i32 [ %sub12, %cleanup.while.body_crit_edge ], [ %count, %lor.lhs.false.while.body_crit_edge ]
  %buffer.addr.040 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buffer, %lor.lhs.false.while.body_crit_edge ]
  %lba.addr.039 = phi i64 [ %inc, %cleanup.while.body_crit_edge ], [ %lba, %lor.lhs.false.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %6 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !27
  %inc = add i64 %lba.addr.039, 1
  %call3 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %lba.addr.039, ptr noundef nonnull %sect) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cleanup.thread, label %if.end6

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  br label %cleanup15

if.end6:                                          ; preds = %while.body
  %7 = call i32 @llvm.umin.i32(i32 %count.addr.041, i32 512)
  %8 = call ptr @memcpy(ptr %buffer.addr.040, ptr %call3, i32 %7)
  %9 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load = load i32, ptr %sect, align 4
  %10 = inttoptr i32 %.fca.0.load to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !28

if.end6._compound_head.exit.i.i_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %13, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end6._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %10, %if.end6._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i.i.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !29

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_lba, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !34

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer.addr.040, i32 %7
  %add11 = add i32 %totalreadcount.042, %7
  %sub12 = sub i32 %count.addr.041, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  %tobool2.not = icmp eq i32 %sub12, 0
  br i1 %tobool2.not, label %cleanup.cleanup15_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup.cleanup15_crit_edge, %cleanup.thread, %lor.lhs.false.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup15_crit_edge ], [ 0, %entry.cleanup15_crit_edge ], [ %totalreadcount.042, %cleanup.thread ], [ %add11, %cleanup.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/aix.c", i32 184, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/aix.c", i32 190, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/aix.c", i32 259, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/aix.c", i32 272, i32 32}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/partitions/aix.c", i32 273, i32 5}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @aix_partition._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @aix_partition._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 717, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/partitions/check.h", i32 45, i32 30}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153156314, i64 2153156797, i64 2153156351, i64 2153156407, i64 2153156441, i64 2153156465, i64 2153156506, i64 2153156527, i64 2153156555, i64 2153156589}
!31 = !{i64 2148798794}
!32 = !{i64 2148713503, i64 2148713535, i64 2148713564, i64 2148713598, i64 2148713629, i64 2148713652}
!33 = !{i64 2148799023}
!34 = !{i64 2148310995, i64 2148311000, i64 2148311013, i64 2148311057, i64 2148311091, i64 2148311112}
